package org.apache.commons.httpclient;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HttpParser {
    static Class a;
    private static final Log b;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.HttpParser");
            a = cls;
        } else {
            cls = a;
        }
        b = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    private HttpParser() {
    }

    public static byte[] readRawLine(InputStream inputStream) throws IOException {
        int ch;
        b.trace("enter HttpParser.readRawLine()");
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        do {
            ch = inputStream.read();
            if (ch < 0) {
                break;
            }
            buf.write(ch);
        } while (ch != 10);
        if (buf.size() == 0) {
            return null;
        }
        return buf.toByteArray();
    }

    public static String readLine(InputStream inputStream, String charset) throws IOException {
        b.trace("enter HttpParser.readLine(InputStream, String)");
        byte[] rawdata = readRawLine(inputStream);
        if (rawdata == null) {
            return null;
        }
        int len = rawdata.length;
        int offset = 0;
        if (len > 0 && rawdata[len - 1] == 10) {
            offset = 0 + 1;
            if (len > 1 && rawdata[len - 2] == 13) {
                offset++;
            }
        }
        String result = EncodingUtil.getString(rawdata, 0, len - offset, charset);
        if (!e.a.a()) {
            return result;
        }
        String logoutput = result;
        if (offset == 2) {
            logoutput = new StringBuffer().append(result).append("\r\n").toString();
        } else if (offset == 1) {
            logoutput = new StringBuffer().append(result).append("\n").toString();
        }
        e.a.b(logoutput);
        return result;
    }

    public static String readLine(InputStream inputStream) throws IOException {
        b.trace("enter HttpParser.readLine(InputStream)");
        return readLine(inputStream, "US-ASCII");
    }

    /* JADX WARNING: Removed duplicated region for block: B:6:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.apache.commons.httpclient.Header[] parseHeaders(java.io.InputStream r9, java.lang.String r10) throws java.io.IOException, org.apache.commons.httpclient.HttpException {
        /*
        // Method dump skipped, instructions count: 162
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.httpclient.HttpParser.parseHeaders(java.io.InputStream, java.lang.String):org.apache.commons.httpclient.Header[]");
    }

    public static Header[] parseHeaders(InputStream is) throws IOException, HttpException {
        b.trace("enter HeaderParser.parseHeaders(InputStream, String)");
        return parseHeaders(is, "US-ASCII");
    }
}
