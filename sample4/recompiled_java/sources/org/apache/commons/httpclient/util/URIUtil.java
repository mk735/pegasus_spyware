package org.apache.commons.httpclient.util;

import java.util.BitSet;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.net.URLCodec;
import org.apache.commons.httpclient.URI;
import org.apache.commons.httpclient.URIException;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class URIUtil {
    protected static final BitSet empty = new BitSet(1);

    public static String getName(String uri) {
        if (uri == null || uri.length() == 0) {
            return uri;
        }
        String path = getPath(uri);
        int at = path.lastIndexOf(CookieSpec.PATH_DELIM);
        return at >= 0 ? path.substring(at + 1, path.length()) : path;
    }

    public static String getQuery(String uri) {
        String str;
        int i = 0;
        if (uri == null || uri.length() == 0) {
            return null;
        }
        int at = uri.indexOf("//");
        if (at >= 0 && uri.lastIndexOf(CookieSpec.PATH_DELIM, at - 1) < 0) {
            i = at + 2;
        }
        int from = uri.indexOf(CookieSpec.PATH_DELIM, i);
        int to = uri.length();
        int at2 = uri.indexOf("?", from);
        if (at2 < 0) {
            return null;
        }
        int from2 = at2 + 1;
        if (uri.lastIndexOf("#") > from2) {
            to = uri.lastIndexOf("#");
        }
        if (from2 < 0 || from2 == to) {
            str = null;
        } else {
            str = uri.substring(from2, to);
        }
        return str;
    }

    public static String getPath(String uri) {
        int i = 0;
        if (uri == null) {
            return null;
        }
        int at = uri.indexOf("//");
        if (at >= 0 && uri.lastIndexOf(CookieSpec.PATH_DELIM, at - 1) < 0) {
            i = at + 2;
        }
        int from = uri.indexOf(CookieSpec.PATH_DELIM, i);
        int to = uri.length();
        if (uri.indexOf(63, from) != -1) {
            to = uri.indexOf(63, from);
        }
        if (uri.lastIndexOf("#") > from && uri.lastIndexOf("#") < to) {
            to = uri.lastIndexOf("#");
        }
        if (from >= 0) {
            return uri.substring(from, to);
        }
        if (at >= 0) {
            return CookieSpec.PATH_DELIM;
        }
        return uri;
    }

    public static String getPathQuery(String uri) {
        int i = 0;
        if (uri == null) {
            return null;
        }
        int at = uri.indexOf("//");
        if (at >= 0 && uri.lastIndexOf(CookieSpec.PATH_DELIM, at - 1) < 0) {
            i = at + 2;
        }
        int from = uri.indexOf(CookieSpec.PATH_DELIM, i);
        int to = uri.length();
        if (uri.lastIndexOf("#") > from) {
            to = uri.lastIndexOf("#");
        }
        if (from >= 0) {
            return uri.substring(from, to);
        }
        if (at >= 0) {
            return CookieSpec.PATH_DELIM;
        }
        return uri;
    }

    public static String getFromPath(String uri) {
        int i = 0;
        if (uri == null) {
            return null;
        }
        int at = uri.indexOf("//");
        if (at >= 0 && uri.lastIndexOf(CookieSpec.PATH_DELIM, at - 1) < 0) {
            i = at + 2;
        }
        int from = uri.indexOf(CookieSpec.PATH_DELIM, i);
        if (from >= 0) {
            return uri.substring(from);
        }
        if (at >= 0) {
            return CookieSpec.PATH_DELIM;
        }
        return uri;
    }

    public static String encodeAll(String unescaped) throws URIException {
        return encodeAll(unescaped, URI.getDefaultProtocolCharset());
    }

    public static String encodeAll(String unescaped, String charset) throws URIException {
        return encode(unescaped, empty, charset);
    }

    public static String encodeWithinAuthority(String unescaped) throws URIException {
        return encodeWithinAuthority(unescaped, URI.getDefaultProtocolCharset());
    }

    public static String encodeWithinAuthority(String unescaped, String charset) throws URIException {
        return encode(unescaped, URI.allowed_within_authority, charset);
    }

    public static String encodePathQuery(String unescaped) throws URIException {
        return encodePathQuery(unescaped, URI.getDefaultProtocolCharset());
    }

    public static String encodePathQuery(String unescaped, String charset) throws URIException {
        int at = unescaped.indexOf(63);
        if (at < 0) {
            return encode(unescaped, URI.allowed_abs_path, charset);
        }
        return new StringBuffer().append(encode(unescaped.substring(0, at), URI.allowed_abs_path, charset)).append('?').append(encode(unescaped.substring(at + 1), URI.allowed_query, charset)).toString();
    }

    public static String encodeWithinPath(String unescaped) throws URIException {
        return encodeWithinPath(unescaped, URI.getDefaultProtocolCharset());
    }

    public static String encodeWithinPath(String unescaped, String charset) throws URIException {
        return encode(unescaped, URI.allowed_within_path, charset);
    }

    public static String encodePath(String unescaped) throws URIException {
        return encodePath(unescaped, URI.getDefaultProtocolCharset());
    }

    public static String encodePath(String unescaped, String charset) throws URIException {
        return encode(unescaped, URI.allowed_abs_path, charset);
    }

    public static String encodeWithinQuery(String unescaped) throws URIException {
        return encodeWithinQuery(unescaped, URI.getDefaultProtocolCharset());
    }

    public static String encodeWithinQuery(String unescaped, String charset) throws URIException {
        return encode(unescaped, URI.allowed_within_query, charset);
    }

    public static String encodeQuery(String unescaped) throws URIException {
        return encodeQuery(unescaped, URI.getDefaultProtocolCharset());
    }

    public static String encodeQuery(String unescaped, String charset) throws URIException {
        return encode(unescaped, URI.allowed_query, charset);
    }

    public static String encode(String unescaped, BitSet allowed) throws URIException {
        return encode(unescaped, allowed, URI.getDefaultProtocolCharset());
    }

    public static String encode(String unescaped, BitSet allowed, String charset) throws URIException {
        return EncodingUtil.getAsciiString(URLCodec.encodeUrl(allowed, EncodingUtil.getBytes(unescaped, charset)));
    }

    public static String decode(String escaped) throws URIException {
        try {
            return EncodingUtil.getString(URLCodec.decodeUrl(EncodingUtil.getAsciiBytes(escaped)), URI.getDefaultProtocolCharset());
        } catch (DecoderException e) {
            throw new URIException(e.getMessage());
        }
    }

    public static String decode(String escaped, String charset) throws URIException {
        return Coder.decode(escaped.toCharArray(), charset);
    }

    protected static class Coder extends URI {
        protected Coder() {
        }

        public static char[] encode(String unescapedComponent, BitSet allowed, String charset) throws URIException {
            return URI.encode(unescapedComponent, allowed, charset);
        }

        public static String decode(char[] escapedComponent, String charset) throws URIException {
            return URI.decode(escapedComponent, charset);
        }

        public static boolean verifyEscaped(char[] original) {
            int i = 0;
            while (i < original.length) {
                char c = original[i];
                if (c > 128) {
                    return false;
                }
                if (c == '%') {
                    int i2 = i + 1;
                    if (Character.digit(original[i2], 16) == -1) {
                        return false;
                    }
                    i = i2 + 1;
                    if (Character.digit(original[i], 16) == -1) {
                        return false;
                    }
                }
                i++;
            }
            return true;
        }

        public static String replace(String original, char[] from, char[] to) {
            for (int i = from.length; i > 0; i--) {
                original = replace(original, from[i], to[i]);
            }
            return original;
        }

        public static String replace(String original, char from, char to) {
            int at;
            StringBuffer result = new StringBuffer(original.length());
            int saved = 0;
            do {
                at = original.indexOf(from);
                if (at >= 0) {
                    result.append(original.substring(0, at));
                    result.append(to);
                } else {
                    result.append(original.substring(saved));
                }
                saved = at;
            } while (at >= 0);
            return result.toString();
        }
    }
}
