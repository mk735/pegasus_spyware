package org.apache.commons.httpclient.params;

import com.lenovo.lps.sus.a.a.a.b;
import org.apache.commons.httpclient.HttpVersion;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HttpMethodParams extends DefaultHttpParams {
    public static final String BUFFER_WARN_TRIGGER_LIMIT = "http.method.response.buffer.warnlimit";
    public static final String COOKIE_POLICY = "http.protocol.cookie-policy";
    public static final String CREDENTIAL_CHARSET = "http.protocol.credential-charset";
    public static final String DATE_PATTERNS = "http.dateparser.patterns";
    public static final String HEAD_BODY_CHECK_TIMEOUT = "http.protocol.head-body-timeout";
    public static final String HTTP_CONTENT_CHARSET = "http.protocol.content-charset";
    public static final String HTTP_ELEMENT_CHARSET = "http.protocol.element-charset";
    public static final String HTTP_URI_CHARSET = "http.protocol.uri-charset";
    public static final String MULTIPART_BOUNDARY = "http.method.multipart.boundary";
    public static final String PROTOCOL_VERSION = "http.protocol.version";
    public static final String REJECT_HEAD_BODY = "http.protocol.reject-head-body";
    public static final String RETRY_HANDLER = "http.method.retry-handler";
    public static final String SINGLE_COOKIE_HEADER = "http.protocol.single-cookie-header";
    public static final String SO_TIMEOUT = "http.socket.timeout";
    public static final String STATUS_LINE_GARBAGE_LIMIT = "http.protocol.status-line-garbage-limit";
    public static final String STRICT_TRANSFER_ENCODING = "http.protocol.strict-transfer-encoding";
    public static final String UNAMBIGUOUS_STATUS_LINE = "http.protocol.unambiguous-statusline";
    public static final String USER_AGENT = "http.useragent";
    public static final String USE_EXPECT_CONTINUE = "http.protocol.expect-continue";
    public static final String VIRTUAL_HOST = "http.virtual-host";
    public static final String WARN_EXTRA_INPUT = "http.protocol.warn-extra-input";
    static Class b;
    private static final Log c;
    private static final String[] d = {UNAMBIGUOUS_STATUS_LINE, SINGLE_COOKIE_HEADER, STRICT_TRANSFER_ENCODING, REJECT_HEAD_BODY, WARN_EXTRA_INPUT};

    static {
        Class cls;
        if (b == null) {
            cls = a("org.apache.commons.httpclient.params.HttpMethodParams");
            b = cls;
        } else {
            cls = b;
        }
        c = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public HttpMethodParams() {
        super(getDefaultParams());
    }

    public HttpMethodParams(HttpParams defaults) {
        super(defaults);
    }

    public String getHttpElementCharset() {
        String charset = (String) getParameter(HTTP_ELEMENT_CHARSET);
        if (charset != null) {
            return charset;
        }
        c.warn("HTTP element charset not configured, using US-ASCII");
        return "US-ASCII";
    }

    public void setHttpElementCharset(String charset) {
        setParameter(HTTP_ELEMENT_CHARSET, charset);
    }

    public String getContentCharset() {
        String charset = (String) getParameter(HTTP_CONTENT_CHARSET);
        if (charset != null) {
            return charset;
        }
        c.warn("Default content charset not configured, using ISO-8859-1");
        return "ISO-8859-1";
    }

    public void setUriCharset(String charset) {
        setParameter(HTTP_URI_CHARSET, charset);
    }

    public String getUriCharset() {
        String charset = (String) getParameter(HTTP_URI_CHARSET);
        if (charset == null) {
            return b.a;
        }
        return charset;
    }

    public void setContentCharset(String charset) {
        setParameter(HTTP_CONTENT_CHARSET, charset);
    }

    public String getCredentialCharset() {
        String charset = (String) getParameter(CREDENTIAL_CHARSET);
        if (charset != null) {
            return charset;
        }
        c.debug("Credential charset not configured, using HTTP element charset");
        return getHttpElementCharset();
    }

    public void setCredentialCharset(String charset) {
        setParameter(CREDENTIAL_CHARSET, charset);
    }

    public HttpVersion getVersion() {
        Object param = getParameter(PROTOCOL_VERSION);
        if (param == null) {
            return HttpVersion.HTTP_1_1;
        }
        return (HttpVersion) param;
    }

    public void setVersion(HttpVersion version) {
        setParameter(PROTOCOL_VERSION, version);
    }

    public String getCookiePolicy() {
        Object param = getParameter(COOKIE_POLICY);
        if (param == null) {
            return CookiePolicy.DEFAULT;
        }
        return (String) param;
    }

    public void setCookiePolicy(String policy) {
        setParameter(COOKIE_POLICY, policy);
    }

    public int getSoTimeout() {
        return getIntParameter("http.socket.timeout", 0);
    }

    public void setSoTimeout(int timeout) {
        setIntParameter("http.socket.timeout", timeout);
    }

    public void setVirtualHost(String hostname) {
        setParameter(VIRTUAL_HOST, hostname);
    }

    public String getVirtualHost() {
        return (String) getParameter(VIRTUAL_HOST);
    }

    public void makeStrict() {
        setParameters(d, Boolean.TRUE);
        setIntParameter(STATUS_LINE_GARBAGE_LIMIT, 0);
    }

    public void makeLenient() {
        setParameters(d, Boolean.FALSE);
        setIntParameter(STATUS_LINE_GARBAGE_LIMIT, Integer.MAX_VALUE);
    }
}
