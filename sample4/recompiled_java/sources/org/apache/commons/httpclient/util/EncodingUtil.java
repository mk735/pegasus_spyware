package org.apache.commons.httpclient.util;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.net.URLCodec;
import org.apache.commons.httpclient.HttpClientError;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class EncodingUtil {
    static Class a;
    private static final Log b;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.util.EncodingUtil");
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

    public static String formUrlEncode(NameValuePair[] pairs, String charset) {
        try {
            return a(pairs, charset);
        } catch (UnsupportedEncodingException e) {
            b.error(new StringBuffer().append("Encoding not supported: ").append(charset).toString());
            try {
                return a(pairs, "ISO-8859-1");
            } catch (UnsupportedEncodingException e2) {
                throw new HttpClientError("Encoding not supported: ISO-8859-1");
            }
        }
    }

    private static String a(NameValuePair[] pairs, String charset) throws UnsupportedEncodingException {
        StringBuffer buf = new StringBuffer();
        for (int i = 0; i < pairs.length; i++) {
            URLCodec codec = new URLCodec();
            NameValuePair pair = pairs[i];
            if (pair.getName() != null) {
                if (i > 0) {
                    buf.append("&");
                }
                buf.append(codec.encode(pair.getName(), charset));
                buf.append("=");
                if (pair.getValue() != null) {
                    buf.append(codec.encode(pair.getValue(), charset));
                }
            }
        }
        return buf.toString();
    }

    public static String getString(byte[] data, int offset, int length, String charset) {
        if (data == null) {
            throw new IllegalArgumentException("Parameter may not be null");
        } else if (charset == null || charset.length() == 0) {
            throw new IllegalArgumentException("charset may not be null or empty");
        } else {
            try {
                return new String(data, offset, length, charset);
            } catch (UnsupportedEncodingException e) {
                if (b.isWarnEnabled()) {
                    b.warn(new StringBuffer().append("Unsupported encoding: ").append(charset).append(". System encoding used").toString());
                }
                return new String(data, offset, length);
            }
        }
    }

    public static String getString(byte[] data, String charset) {
        return getString(data, 0, data.length, charset);
    }

    public static byte[] getBytes(String data, String charset) {
        if (data == null) {
            throw new IllegalArgumentException("data may not be null");
        } else if (charset == null || charset.length() == 0) {
            throw new IllegalArgumentException("charset may not be null or empty");
        } else {
            try {
                return data.getBytes(charset);
            } catch (UnsupportedEncodingException e) {
                if (b.isWarnEnabled()) {
                    b.warn(new StringBuffer().append("Unsupported encoding: ").append(charset).append(". System encoding used.").toString());
                }
                return data.getBytes();
            }
        }
    }

    public static byte[] getAsciiBytes(String data) {
        if (data == null) {
            throw new IllegalArgumentException("Parameter may not be null");
        }
        try {
            return data.getBytes("US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new HttpClientError("HttpClient requires ASCII support");
        }
    }

    public static String getAsciiString(byte[] data, int offset, int length) {
        if (data == null) {
            throw new IllegalArgumentException("Parameter may not be null");
        }
        try {
            return new String(data, offset, length, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new HttpClientError("HttpClient requires ASCII support");
        }
    }

    public static String getAsciiString(byte[] data) {
        return getAsciiString(data, 0, data.length);
    }

    private EncodingUtil() {
    }
}
