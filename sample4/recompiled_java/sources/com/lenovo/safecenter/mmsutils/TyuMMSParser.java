package com.lenovo.safecenter.mmsutils;

import android.util.Log;
import com.lenovo.lps.sus.c.c;
import com.tencent.tmsecure.module.wupsession.WupConfig;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;

public class TyuMMSParser {
    static final /* synthetic */ boolean a;
    private static byte[] e = null;
    private static byte[] f = null;
    private ByteArrayInputStream b = null;
    private TyuMMSHeaders c = null;
    private TyuPduBody d = null;

    static {
        boolean z;
        if (!TyuMMSParser.class.desiredAssertionStatus()) {
            z = true;
        } else {
            z = false;
        }
        a = z;
    }

    public TyuMMSParser(byte[] pduDataStream) {
        this.b = new ByteArrayInputStream(pduDataStream);
    }

    public GenericPdu parse() {
        if (this.b == null) {
            return null;
        }
        this.c = a(this.b);
        if (this.c == null) {
            return null;
        }
        int messageType = this.c.getOctet(140);
        if (!checkMandatoryHeader(this.c)) {
            return null;
        }
        if (128 == messageType || 132 == messageType) {
            this.d = parseParts(this.b);
            if (this.d == null) {
                return null;
            }
        }
        switch (messageType) {
            case 128:
                return new SendReq(this.c, this.d);
            case 129:
                return new SendConf(this.c);
            case 130:
                return new NotificationInd(this.c);
            case 131:
                return new NotifyRespInd(this.c);
            case 132:
                RetrieveConf retrieveConf = new RetrieveConf(this.c, this.d);
                byte[] contentType = retrieveConf.getContentType();
                if (contentType == null) {
                    return null;
                }
                String ctTypeStr = new String(contentType);
                if (ctTypeStr.equals(ContentType.MULTIPART_MIXED) || ctTypeStr.equals(ContentType.MULTIPART_RELATED) || ctTypeStr.equals(ContentType.MULTIPART_ALTERNATIVE)) {
                    return retrieveConf;
                }
                return null;
            case 133:
                return new AcknowledgeInd(this.c);
            case 134:
                return new DeliveryInd(this.c);
            case 135:
                return new ReadRecInd(this.c);
            case 136:
                return new ReadOrigInd(this.c);
            default:
                return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:183:0x000a, code lost:
        continue;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.lenovo.safecenter.mmsutils.TyuMMSHeaders a(java.io.ByteArrayInputStream r28) {
        /*
        // Method dump skipped, instructions count: 1390
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.mmsutils.TyuMMSParser.a(java.io.ByteArrayInputStream):com.lenovo.safecenter.mmsutils.TyuMMSHeaders");
    }

    protected static byte[] parseContentType(ByteArrayInputStream pduDataStream, HashMap<Integer, Object> map) {
        byte[] contentType;
        if (a || pduDataStream != null) {
            pduDataStream.mark(1);
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                pduDataStream.reset();
                int cur = temp & 255;
                if (cur < 32) {
                    int length = parseValueLength(pduDataStream);
                    int startPos = pduDataStream.available();
                    pduDataStream.mark(1);
                    int temp2 = pduDataStream.read();
                    if (a || -1 != temp2) {
                        pduDataStream.reset();
                        int first = temp2 & 255;
                        if (first >= 32 && first <= 127) {
                            contentType = parseWapString(pduDataStream, 0);
                        } else if (first > 127) {
                            int index = parseShortInteger(pduDataStream);
                            if (index < PduContentTypes.a.length) {
                                contentType = PduContentTypes.a[index].getBytes();
                            } else {
                                pduDataStream.reset();
                                contentType = parseWapString(pduDataStream, 0);
                            }
                        } else {
                            Log.e("PduParser", "Corrupt content-type");
                            return PduContentTypes.a[0].getBytes();
                        }
                        int parameterLen = length - (startPos - pduDataStream.available());
                        if (parameterLen > 0) {
                            parseContentTypeParams(pduDataStream, map, Integer.valueOf(parameterLen));
                        }
                        if (parameterLen >= 0) {
                            return contentType;
                        }
                        Log.e("PduParser", "Corrupt MMS message");
                        return PduContentTypes.a[0].getBytes();
                    }
                    throw new AssertionError();
                } else if (cur <= 127) {
                    return parseWapString(pduDataStream, 0);
                } else {
                    return PduContentTypes.a[parseShortInteger(pduDataStream)].getBytes();
                }
            } else {
                throw new AssertionError();
            }
        } else {
            throw new AssertionError();
        }
    }

    protected static void parseContentTypeParams(ByteArrayInputStream pduDataStream, HashMap<Integer, Object> map, Integer length) {
        if (!a && pduDataStream == null) {
            throw new AssertionError();
        } else if (a || length.intValue() > 0) {
            int startPos = pduDataStream.available();
            int lastLen = length.intValue();
            while (lastLen > 0) {
                int param = pduDataStream.read();
                if (a || -1 != param) {
                    lastLen--;
                    switch (param) {
                        case 129:
                            pduDataStream.mark(1);
                            int firstValue = extractByteValue(pduDataStream);
                            pduDataStream.reset();
                            if ((firstValue <= 32 || firstValue >= 127) && firstValue != 0) {
                                int charset = (int) parseIntegerValue(pduDataStream);
                                if (map != null) {
                                    map.put(129, Integer.valueOf(charset));
                                }
                            } else {
                                byte[] charsetStr = parseWapString(pduDataStream, 0);
                                try {
                                    map.put(129, Integer.valueOf(CharacterSets.getMibEnumValue(new String(charsetStr))));
                                } catch (UnsupportedEncodingException e2) {
                                    Log.e("PduParser", Arrays.toString(charsetStr), e2);
                                    map.put(129, 0);
                                }
                            }
                            lastLen = length.intValue() - (startPos - pduDataStream.available());
                            break;
                        case 131:
                        case 137:
                            pduDataStream.mark(1);
                            int first = extractByteValue(pduDataStream);
                            pduDataStream.reset();
                            if (first > 127) {
                                int index = parseShortInteger(pduDataStream);
                                if (index < PduContentTypes.a.length) {
                                    map.put(131, PduContentTypes.a[index].getBytes());
                                }
                            } else {
                                byte[] type = parseWapString(pduDataStream, 0);
                                if (!(type == null || map == null)) {
                                    map.put(131, type);
                                }
                            }
                            lastLen = length.intValue() - (startPos - pduDataStream.available());
                            break;
                        case 133:
                        case 151:
                            byte[] name = parseWapString(pduDataStream, 0);
                            if (!(name == null || map == null)) {
                                map.put(151, name);
                            }
                            lastLen = length.intValue() - (startPos - pduDataStream.available());
                            break;
                        case 138:
                        case 153:
                            byte[] start = parseWapString(pduDataStream, 0);
                            if (!(start == null || map == null)) {
                                map.put(153, start);
                            }
                            lastLen = length.intValue() - (startPos - pduDataStream.available());
                            break;
                        default:
                            if (-1 != skipWapValue(pduDataStream, lastLen)) {
                                lastLen = 0;
                                break;
                            } else {
                                Log.e("PduParser", "Corrupt Content-Type");
                                break;
                            }
                    }
                } else {
                    throw new AssertionError();
                }
            }
            if (lastLen != 0) {
                Log.e("PduParser", "Corrupt Content-Type");
            }
        } else {
            throw new AssertionError();
        }
    }

    protected static int skipWapValue(ByteArrayInputStream pduDataStream, int length) {
        if (a || pduDataStream != null) {
            int readLen = pduDataStream.read(new byte[length], 0, length);
            if (readLen < length) {
                return -1;
            }
            return readLen;
        }
        throw new AssertionError();
    }

    protected static int parseShortInteger(ByteArrayInputStream pduDataStream) {
        if (a || pduDataStream != null) {
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                return temp & 127;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static int parseValueLength(ByteArrayInputStream pduDataStream) {
        if (a || pduDataStream != null) {
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                int first = temp & 255;
                if (first <= 30) {
                    return first;
                }
                if (first == 31) {
                    return parseUnsignedInt(pduDataStream);
                }
                throw new RuntimeException("Value length > LENGTH_QUOTE!");
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static int parseUnsignedInt(ByteArrayInputStream pduDataStream) {
        if (a || pduDataStream != null) {
            int result = 0;
            int temp = pduDataStream.read();
            if (temp == -1) {
                return temp;
            }
            while ((temp & 128) != 0) {
                result = (result << 7) | (temp & 127);
                temp = pduDataStream.read();
                if (temp == -1) {
                    return temp;
                }
            }
            return (result << 7) | (temp & 127);
        }
        throw new AssertionError();
    }

    private static TyuEncodedStringValue b(ByteArrayInputStream pduDataStream) {
        TyuEncodedStringValue returnValue;
        if (a || pduDataStream != null) {
            pduDataStream.mark(1);
            int charset = 0;
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                int first = temp & 255;
                pduDataStream.reset();
                if (first < 32) {
                    parseValueLength(pduDataStream);
                    charset = parseShortInteger(pduDataStream);
                }
                byte[] textString = parseWapString(pduDataStream, 0);
                if (charset != 0) {
                    try {
                        returnValue = new TyuEncodedStringValue(charset, textString);
                    } catch (Exception e2) {
                        return null;
                    }
                } else {
                    returnValue = new TyuEncodedStringValue(textString);
                }
                return returnValue;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static long parseIntegerValue(ByteArrayInputStream pduDataStream) {
        if (a || pduDataStream != null) {
            pduDataStream.mark(1);
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                pduDataStream.reset();
                if (temp > 127) {
                    return (long) parseShortInteger(pduDataStream);
                }
                return parseLongInteger(pduDataStream);
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static long parseLongInteger(ByteArrayInputStream pduDataStream) {
        if (a || pduDataStream != null) {
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                int count = temp & 255;
                if (count > 8) {
                    throw new RuntimeException("Octet count greater than 8 and I can't represent that!");
                }
                long result = 0;
                for (int i = 0; i < count; i++) {
                    int temp2 = pduDataStream.read();
                    if (a || -1 != temp2) {
                        result = (result << 8) + ((long) (temp2 & 255));
                    } else {
                        throw new AssertionError();
                    }
                }
                return result;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static byte[] parseWapString(ByteArrayInputStream pduDataStream, int stringType) {
        if (a || pduDataStream != null) {
            pduDataStream.mark(1);
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                if (1 == stringType && 34 == temp) {
                    pduDataStream.mark(1);
                } else if (stringType == 0 && 127 == temp) {
                    pduDataStream.mark(1);
                } else {
                    pduDataStream.reset();
                }
                return getWapString(pduDataStream, stringType);
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static byte[] getWapString(ByteArrayInputStream pduDataStream, int stringType) {
        if (a || pduDataStream != null) {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                while (-1 != temp && temp != 0) {
                    if (stringType == 2) {
                        if (isTokenCharacter(temp)) {
                            out.write(temp);
                        }
                    } else if (isText(temp)) {
                        out.write(temp);
                    }
                    temp = pduDataStream.read();
                    if (!a && -1 == temp) {
                        throw new AssertionError();
                    }
                }
                if (out.size() > 0) {
                    return out.toByteArray();
                }
                return null;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static boolean isText(int ch) {
        if (ch >= 32 && ch <= 126) {
            return true;
        }
        if (ch >= 128 && ch <= 255) {
            return true;
        }
        switch (ch) {
            case 9:
            case 10:
            case 13:
                return true;
            case 11:
            case 12:
            default:
                return false;
        }
    }

    protected static boolean isTokenCharacter(int ch) {
        if (ch < 33 || ch > 126) {
            return false;
        }
        switch (ch) {
            case WupConfig.RQ_GET_TRAFFIC_CMD /*{ENCODED_INT: 34}*/:
            case WupConfig.RQ_GET_MARK /*{ENCODED_INT: 40}*/:
            case 41:
            case 44:
            case 47:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 91:
            case 92:
            case c.aG:
            case 123:
            case 125:
                return false;
            default:
                return true;
        }
    }

    protected static int extractByteValue(ByteArrayInputStream pduDataStream) {
        if (a || pduDataStream != null) {
            int temp = pduDataStream.read();
            if (a || -1 != temp) {
                return temp & 255;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    protected static TyuPduBody parseParts(ByteArrayInputStream pduDataStream) {
        byte[] contentType;
        byte[] contentId;
        if (pduDataStream == null) {
            return null;
        }
        int count = parseUnsignedInt(pduDataStream);
        TyuPduBody body = new TyuPduBody();
        for (int i = 0; i < count; i++) {
            int headerLength = parseUnsignedInt(pduDataStream);
            int dataLength = parseUnsignedInt(pduDataStream);
            PduPart part = new PduPart();
            int startPos = pduDataStream.available();
            if (startPos <= 0) {
                return null;
            }
            HashMap<Integer, Object> map = new HashMap<>();
            byte[] contentType2 = parseContentType(pduDataStream, map);
            if (contentType2 != null) {
                part.setContentType(contentType2);
            } else {
                part.setContentType(PduContentTypes.a[0].getBytes());
            }
            byte[] name = (byte[]) map.get(151);
            if (name != null) {
                part.setName(name);
            }
            Integer charset = (Integer) map.get(129);
            if (charset != null) {
                part.setCharset(charset.intValue());
            }
            int partHeaderLen = headerLength - (startPos - pduDataStream.available());
            if (partHeaderLen > 0) {
                if (!parsePartHeaders(pduDataStream, part, partHeaderLen)) {
                    return null;
                }
            } else if (partHeaderLen < 0) {
                return null;
            }
            if (part.getContentLocation() == null && part.getName() == null && part.getFilename() == null && part.getContentId() == null) {
                part.setContentLocation(Long.toOctalString(System.currentTimeMillis()).getBytes());
            }
            if (dataLength > 0) {
                byte[] partData = new byte[dataLength];
                String partContentType = new String(part.getContentType());
                pduDataStream.read(partData, 0, dataLength);
                if (partContentType.equalsIgnoreCase(ContentType.MULTIPART_ALTERNATIVE)) {
                    part = parseParts(new ByteArrayInputStream(partData)).getPart(0);
                } else {
                    byte[] partDataEncoding = part.getContentTransferEncoding();
                    if (partDataEncoding != null) {
                        String encoding = new String(partDataEncoding);
                        if (encoding.equalsIgnoreCase(PduPart.P_BASE64)) {
                            partData = Base64.decodeBase64(partData);
                        } else if (encoding.equalsIgnoreCase(PduPart.P_QUOTED_PRINTABLE)) {
                            partData = QuotedPrintable.decodeQuotedPrintable(partData);
                        }
                    }
                    if (partData == null) {
                        return null;
                    }
                    part.setData(partData);
                }
            }
            if (a || part != null) {
                if (!((e == null && f == null) ? true : (f == null || (contentId = part.getContentId()) == null || true != Arrays.equals(f, contentId)) ? e == null || (contentType = part.getContentType()) == null || true != Arrays.equals(e, contentType) : false)) {
                    body.addPart(0, part);
                } else {
                    body.addPart(part);
                }
            } else {
                throw new AssertionError();
            }
        }
        return body;
    }

    protected static boolean parsePartHeaders(ByteArrayInputStream pduDataStream, PduPart part, int length) {
        if (!a && pduDataStream == null) {
            throw new AssertionError();
        } else if (!a && part == null) {
            throw new AssertionError();
        } else if (a || length > 0) {
            int startPos = pduDataStream.available();
            int lastLen = length;
            while (lastLen > 0) {
                int header = pduDataStream.read();
                if (a || -1 != header) {
                    int lastLen2 = lastLen - 1;
                    if (header > 127) {
                        switch (header) {
                            case 142:
                                byte[] contentLocation = parseWapString(pduDataStream, 0);
                                if (contentLocation != null) {
                                    part.setContentLocation(contentLocation);
                                }
                                lastLen = length - (startPos - pduDataStream.available());
                                continue;
                            case 174:
                            case PduPart.P_CONTENT_DISPOSITION:
                                int len = parseValueLength(pduDataStream);
                                pduDataStream.mark(1);
                                int thisStartPos = pduDataStream.available();
                                int value = pduDataStream.read();
                                if (value == 128) {
                                    part.setContentDisposition(PduPart.a);
                                } else if (value == 129) {
                                    part.setContentDisposition(PduPart.b);
                                } else if (value == 130) {
                                    part.setContentDisposition(PduPart.c);
                                } else {
                                    pduDataStream.reset();
                                    part.setContentDisposition(parseWapString(pduDataStream, 0));
                                }
                                if (thisStartPos - pduDataStream.available() < len) {
                                    if (pduDataStream.read() == 152) {
                                        part.setFilename(parseWapString(pduDataStream, 0));
                                    }
                                    int thisEndPos = pduDataStream.available();
                                    if (thisStartPos - thisEndPos < len) {
                                        int last = len - (thisStartPos - thisEndPos);
                                        pduDataStream.read(new byte[last], 0, last);
                                    }
                                }
                                lastLen = length - (startPos - pduDataStream.available());
                                continue;
                            case 192:
                                byte[] contentId = parseWapString(pduDataStream, 1);
                                if (contentId != null) {
                                    part.setContentId(contentId);
                                }
                                lastLen = length - (startPos - pduDataStream.available());
                                continue;
                            default:
                                if (-1 == skipWapValue(pduDataStream, lastLen2)) {
                                    Log.e("PduParser", "Corrupt Part headers");
                                    return false;
                                }
                                lastLen = 0;
                                continue;
                        }
                    } else if (header >= 32 && header <= 127) {
                        byte[] tempHeader = parseWapString(pduDataStream, 0);
                        byte[] tempValue = parseWapString(pduDataStream, 0);
                        if (true == PduPart.CONTENT_TRANSFER_ENCODING.equalsIgnoreCase(new String(tempHeader))) {
                            part.setContentTransferEncoding(tempValue);
                        }
                        lastLen = length - (startPos - pduDataStream.available());
                    } else if (-1 == skipWapValue(pduDataStream, lastLen2)) {
                        Log.e("PduParser", "Corrupt Part headers");
                        return false;
                    } else {
                        lastLen = 0;
                    }
                } else {
                    throw new AssertionError();
                }
            }
            if (lastLen == 0) {
                return true;
            }
            Log.e("PduParser", "Corrupt Part headers");
            return false;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:91:0x01f2 A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static boolean checkMandatoryHeader(com.lenovo.safecenter.mmsutils.TyuMMSHeaders r39) {
        /*
        // Method dump skipped, instructions count: 524
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.mmsutils.TyuMMSParser.checkMandatoryHeader(com.lenovo.safecenter.mmsutils.TyuMMSHeaders):boolean");
    }
}
