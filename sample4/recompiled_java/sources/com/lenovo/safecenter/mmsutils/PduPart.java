package com.lenovo.safecenter.mmsutils;

import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

public class PduPart {
    public static final String CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding";
    public static final String P_7BIT = "7bit";
    public static final String P_8BIT = "8bit";
    public static final String P_BASE64 = "base64";
    public static final String P_BINARY = "binary";
    public static final int P_CHARSET = 129;
    public static final int P_COMMENT = 155;
    public static final int P_CONTENT_DISPOSITION = 197;
    public static final int P_CONTENT_ID = 192;
    public static final int P_CONTENT_LOCATION = 142;
    public static final int P_CONTENT_TRANSFER_ENCODING = 200;
    public static final int P_CONTENT_TYPE = 145;
    public static final int P_CREATION_DATE = 147;
    public static final int P_CT_MR_TYPE = 137;
    public static final int P_DEP_COMMENT = 140;
    public static final int P_DEP_CONTENT_DISPOSITION = 174;
    public static final int P_DEP_DOMAIN = 141;
    public static final int P_DEP_FILENAME = 134;
    public static final int P_DEP_NAME = 133;
    public static final int P_DEP_PATH = 143;
    public static final int P_DEP_START = 138;
    public static final int P_DEP_START_INFO = 139;
    public static final int P_DIFFERENCES = 135;
    public static final int P_DISPOSITION_ATTACHMENT = 129;
    public static final int P_DISPOSITION_FROM_DATA = 128;
    public static final int P_DISPOSITION_INLINE = 130;
    public static final int P_DOMAIN = 156;
    public static final int P_FILENAME = 152;
    public static final int P_LEVEL = 130;
    public static final int P_MAC = 146;
    public static final int P_MAX_AGE = 142;
    public static final int P_MODIFICATION_DATE = 148;
    public static final int P_NAME = 151;
    public static final int P_PADDING = 136;
    public static final int P_PATH = 157;
    public static final int P_Q = 128;
    public static final String P_QUOTED_PRINTABLE = "quoted-printable";
    public static final int P_READ_DATE = 149;
    public static final int P_SEC = 145;
    public static final int P_SECURE = 144;
    public static final int P_SIZE = 150;
    public static final int P_START = 153;
    public static final int P_START_INFO = 154;
    public static final int P_TYPE = 131;
    static final byte[] a = "from-data".getBytes();
    static final byte[] b = "attachment".getBytes();
    static final byte[] c = "inline".getBytes();
    private Map<Integer, Object> d;
    private Uri e;
    private byte[] f;

    public PduPart() {
        this.d = null;
        this.e = null;
        this.f = null;
        this.d = new HashMap();
    }

    public void setData(byte[] data) {
        if (data != null) {
            this.f = new byte[data.length];
            System.arraycopy(data, 0, this.f, 0, data.length);
        }
    }

    public byte[] getData() {
        if (this.f == null) {
            return null;
        }
        byte[] byteArray = new byte[this.f.length];
        System.arraycopy(this.f, 0, byteArray, 0, this.f.length);
        return byteArray;
    }

    public void setDataUri(Uri uri) {
        this.e = uri;
    }

    public Uri getDataUri() {
        return this.e;
    }

    public void setContentId(byte[] contentId) {
        if (contentId == null || contentId.length == 0) {
            throw new IllegalArgumentException("Content-Id may not be null or empty.");
        } else if (contentId.length > 1 && ((char) contentId[0]) == '<' && ((char) contentId[contentId.length - 1]) == '>') {
            this.d.put(192, contentId);
        } else {
            byte[] buffer = new byte[(contentId.length + 2)];
            buffer[0] = 60;
            buffer[buffer.length - 1] = 62;
            System.arraycopy(contentId, 0, buffer, 1, contentId.length);
            this.d.put(192, buffer);
        }
    }

    public byte[] getContentId() {
        return (byte[]) this.d.get(192);
    }

    public void setCharset(int charset) {
        this.d.put(129, Integer.valueOf(charset));
    }

    public int getCharset() {
        Integer charset = (Integer) this.d.get(129);
        if (charset == null) {
            return 0;
        }
        return charset.intValue();
    }

    public void setContentLocation(byte[] contentLocation) {
        if (contentLocation == null) {
            throw new NullPointerException("null content-location");
        }
        this.d.put(142, contentLocation);
    }

    public byte[] getContentLocation() {
        return (byte[]) this.d.get(142);
    }

    public void setContentDisposition(byte[] contentDisposition) {
        if (contentDisposition == null) {
            throw new NullPointerException("null content-disposition");
        }
        this.d.put(Integer.valueOf((int) P_CONTENT_DISPOSITION), contentDisposition);
    }

    public byte[] getContentDisposition() {
        return (byte[]) this.d.get(Integer.valueOf((int) P_CONTENT_DISPOSITION));
    }

    public void setContentType(byte[] contentType) {
        if (contentType == null) {
            throw new NullPointerException("null content-type");
        }
        this.d.put(145, contentType);
    }

    public byte[] getContentType() {
        return (byte[]) this.d.get(145);
    }

    public void setContentTransferEncoding(byte[] contentTransferEncoding) {
        if (contentTransferEncoding == null) {
            throw new NullPointerException("null content-transfer-encoding");
        }
        this.d.put(200, contentTransferEncoding);
    }

    public byte[] getContentTransferEncoding() {
        return (byte[]) this.d.get(200);
    }

    public void setName(byte[] name) {
        if (name == null) {
            throw new NullPointerException("null content-id");
        }
        this.d.put(151, name);
    }

    public byte[] getName() {
        return (byte[]) this.d.get(151);
    }

    public void setFilename(byte[] fileName) {
        if (fileName == null) {
            throw new NullPointerException("null content-id");
        }
        this.d.put(152, fileName);
    }

    public byte[] getFilename() {
        return (byte[]) this.d.get(152);
    }

    public String generateLocation() {
        byte[] location = (byte[]) this.d.get(151);
        if (location == null && (location = (byte[]) this.d.get(152)) == null) {
            location = (byte[]) this.d.get(142);
        }
        if (location == null) {
            return "cid:" + new String((byte[]) this.d.get(192));
        }
        return new String(location);
    }
}
