package org.apache.commons.httpclient;

import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.lps.sus.c.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collection;
import org.apache.commons.httpclient.auth.AuthState;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.cookie.CookieVersionSupport;
import org.apache.commons.httpclient.cookie.MalformedCookieException;
import org.apache.commons.httpclient.cookie.RFC2109Spec;
import org.apache.commons.httpclient.cookie.RFC2965Spec;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.httpclient.protocol.Protocol;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.httpclient.util.ExceptionUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class HttpMethodBase implements HttpMethod {
    private static final Log a;
    static Class b;
    private HeaderGroup c = new HeaderGroup();
    private HeaderGroup d = new HeaderGroup();
    private HeaderGroup e = new HeaderGroup();
    protected HttpVersion effectiveVersion = null;
    private String f = null;
    private String g = null;
    private InputStream h = null;
    private HttpConnection i = null;
    private byte[] j = null;
    private boolean k = false;
    private boolean l = true;
    private HttpMethodParams m = new HttpMethodParams();
    private AuthState n = new AuthState();
    private AuthState o = new AuthState();
    private boolean p = false;
    private int q = 0;
    private HttpHost r = null;
    private MethodRetryHandler s;
    protected StatusLine statusLine = null;
    private boolean t = false;
    private volatile boolean u = false;
    private boolean v = false;
    private CookieSpec w = null;

    @Override // org.apache.commons.httpclient.HttpMethod
    public abstract String getName();

    static {
        Class cls;
        if (b == null) {
            cls = a("org.apache.commons.httpclient.HttpMethodBase");
            b = cls;
        } else {
            cls = b;
        }
        a = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public HttpMethodBase() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0058, code lost:
        if (r7.equals("") != false) goto L_0x005a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public HttpMethodBase(java.lang.String r7) throws java.lang.IllegalArgumentException, java.lang.IllegalStateException {
        /*
        // Method dump skipped, instructions count: 150
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.httpclient.HttpMethodBase.<init>(java.lang.String):void");
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public URI getURI() throws URIException {
        StringBuffer buffer = new StringBuffer();
        if (this.r != null) {
            buffer.append(this.r.getProtocol().getScheme());
            buffer.append("://");
            buffer.append(this.r.getHostName());
            int port = this.r.getPort();
            if (!(port == -1 || port == this.r.getProtocol().getDefaultPort())) {
                buffer.append(c.N);
                buffer.append(port);
            }
        }
        buffer.append(this.f);
        if (this.g != null) {
            buffer.append('?');
            buffer.append(this.g);
        }
        return new URI(buffer.toString(), true, getParams().getUriCharset());
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setURI(URI uri) throws URIException {
        if (uri.isAbsoluteURI()) {
            this.r = new HttpHost(uri);
        }
        setPath(uri.getPath() == null ? CookieSpec.PATH_DELIM : uri.getEscapedPath());
        setQueryString(uri.getEscapedQuery());
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setFollowRedirects(boolean followRedirects) {
        this.k = followRedirects;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public boolean getFollowRedirects() {
        return this.k;
    }

    public void setHttp11(boolean http11) {
        if (http11) {
            this.m.setVersion(HttpVersion.HTTP_1_1);
        } else {
            this.m.setVersion(HttpVersion.HTTP_1_0);
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public boolean getDoAuthentication() {
        return this.l;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setDoAuthentication(boolean doAuthentication) {
        this.l = doAuthentication;
    }

    public boolean isHttp11() {
        return this.m.getVersion().equals(HttpVersion.HTTP_1_1);
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setPath(String path) {
        this.f = path;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void addRequestHeader(Header header) {
        a.trace("HttpMethodBase.addRequestHeader(Header)");
        if (header == null) {
            a.debug("null header value ignored");
        } else {
            getRequestHeaderGroup().addHeader(header);
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void addResponseFooter(Header footer) {
        getResponseTrailerHeaderGroup().addHeader(footer);
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public String getPath() {
        return (this.f == null || this.f.equals("")) ? CookieSpec.PATH_DELIM : this.f;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setQueryString(String queryString) {
        this.g = queryString;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setQueryString(NameValuePair[] params) {
        a.trace("enter HttpMethodBase.setQueryString(NameValuePair[])");
        this.g = EncodingUtil.formUrlEncode(params, b.a);
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public String getQueryString() {
        return this.g;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setRequestHeader(String headerName, String headerValue) {
        setRequestHeader(new Header(headerName, headerValue));
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setRequestHeader(Header header) {
        Header[] headers;
        for (Header header2 : getRequestHeaderGroup().getHeaders(header.getName())) {
            getRequestHeaderGroup().removeHeader(header2);
        }
        getRequestHeaderGroup().addHeader(header);
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header getRequestHeader(String headerName) {
        if (headerName == null) {
            return null;
        }
        return getRequestHeaderGroup().getCondensedHeader(headerName);
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header[] getRequestHeaders() {
        return getRequestHeaderGroup().getAllHeaders();
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header[] getRequestHeaders(String headerName) {
        return getRequestHeaderGroup().getHeaders(headerName);
    }

    /* access modifiers changed from: protected */
    public HeaderGroup getRequestHeaderGroup() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    public HeaderGroup getResponseTrailerHeaderGroup() {
        return this.e;
    }

    /* access modifiers changed from: protected */
    public HeaderGroup getResponseHeaderGroup() {
        return this.d;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header[] getResponseHeaders(String headerName) {
        return getResponseHeaderGroup().getHeaders(headerName);
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public int getStatusCode() {
        return this.statusLine.getStatusCode();
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public StatusLine getStatusLine() {
        return this.statusLine;
    }

    private boolean a() {
        return (this.j == null && this.h == null) ? false : true;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header[] getResponseHeaders() {
        return getResponseHeaderGroup().getAllHeaders();
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header getResponseHeader(String headerName) {
        if (headerName == null) {
            return null;
        }
        return getResponseHeaderGroup().getCondensedHeader(headerName);
    }

    public long getResponseContentLength() {
        long j2 = -1;
        Header[] headers = getResponseHeaderGroup().getHeaders("Content-Length");
        if (headers.length != 0) {
            if (headers.length > 1) {
                a.warn("Multiple content-length headers detected");
            }
            for (int i2 = headers.length - 1; i2 >= 0; i2--) {
                try {
                    j2 = Long.parseLong(headers[i2].getValue());
                    break;
                } catch (NumberFormatException e2) {
                    if (a.isWarnEnabled()) {
                        a.warn(new StringBuffer().append("Invalid content-length value: ").append(e2.getMessage()).toString());
                    }
                }
            }
        }
        return j2;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public byte[] getResponseBody() throws IOException {
        InputStream instream;
        int i2;
        if (this.j == null && (instream = getResponseBodyAsStream()) != null) {
            long contentLength = getResponseContentLength();
            if (contentLength > 2147483647L) {
                throw new IOException(new StringBuffer().append("Content too large to be buffered: ").append(contentLength).append(" bytes").toString());
            }
            int limit = getParams().getIntParameter(HttpMethodParams.BUFFER_WARN_TRIGGER_LIMIT, 1048576);
            if (contentLength == -1 || contentLength > ((long) limit)) {
                a.warn("Going to buffer response body of large or unknown size. Using getResponseBodyAsStream instead is recommended.");
            }
            a.debug("Buffering response body");
            if (contentLength > 0) {
                i2 = (int) contentLength;
            } else {
                i2 = 4096;
            }
            ByteArrayOutputStream outstream = new ByteArrayOutputStream(i2);
            byte[] buffer = new byte[4096];
            while (true) {
                int len = instream.read(buffer);
                if (len <= 0) {
                    break;
                }
                outstream.write(buffer, 0, len);
            }
            outstream.close();
            setResponseStream(null);
            this.j = outstream.toByteArray();
        }
        return this.j;
    }

    public byte[] getResponseBody(int maxlen) throws IOException {
        InputStream instream;
        if (maxlen < 0) {
            throw new IllegalArgumentException("maxlen must be positive");
        }
        if (this.j == null && (instream = getResponseBodyAsStream()) != null) {
            long contentLength = getResponseContentLength();
            if (contentLength == -1 || contentLength <= ((long) maxlen)) {
                a.debug("Buffering response body");
                ByteArrayOutputStream rawdata = new ByteArrayOutputStream(contentLength > 0 ? (int) contentLength : 4096);
                byte[] buffer = new byte[2048];
                int pos = 0;
                do {
                    int len = instream.read(buffer, 0, Math.min(buffer.length, maxlen - pos));
                    if (len == -1) {
                        break;
                    }
                    rawdata.write(buffer, 0, len);
                    pos += len;
                } while (pos < maxlen);
                setResponseStream(null);
                if (pos != maxlen || instream.read() == -1) {
                    this.j = rawdata.toByteArray();
                } else {
                    throw new HttpContentTooLargeException(new StringBuffer().append("Content-Length not known but larger than ").append(maxlen).toString(), maxlen);
                }
            } else {
                throw new HttpContentTooLargeException(new StringBuffer().append("Content-Length is ").append(contentLength).toString(), maxlen);
            }
        }
        return this.j;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public InputStream getResponseBodyAsStream() throws IOException {
        if (this.h != null) {
            return this.h;
        }
        if (this.j == null) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.j);
        a.debug("re-creating response stream from byte array");
        return byteArrayInputStream;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public String getResponseBodyAsString() throws IOException {
        byte[] rawdata = null;
        if (a()) {
            rawdata = getResponseBody();
        }
        if (rawdata != null) {
            return EncodingUtil.getString(rawdata, getResponseCharSet());
        }
        return null;
    }

    public String getResponseBodyAsString(int maxlen) throws IOException {
        if (maxlen < 0) {
            throw new IllegalArgumentException("maxlen must be positive");
        }
        byte[] rawdata = null;
        if (a()) {
            rawdata = getResponseBody(maxlen);
        }
        if (rawdata != null) {
            return EncodingUtil.getString(rawdata, getResponseCharSet());
        }
        return null;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header[] getResponseFooters() {
        return getResponseTrailerHeaderGroup().getAllHeaders();
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public Header getResponseFooter(String footerName) {
        if (footerName == null) {
            return null;
        }
        return getResponseTrailerHeaderGroup().getCondensedHeader(footerName);
    }

    /* access modifiers changed from: protected */
    public void setResponseStream(InputStream responseStream) {
        this.h = responseStream;
    }

    /* access modifiers changed from: protected */
    public InputStream getResponseStream() {
        return this.h;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public String getStatusText() {
        return this.statusLine.getReasonPhrase();
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setStrictMode(boolean strictMode) {
        if (strictMode) {
            this.m.makeStrict();
        } else {
            this.m.makeLenient();
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public boolean isStrictMode() {
        return false;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void addRequestHeader(String headerName, String headerValue) {
        addRequestHeader(new Header(headerName, headerValue));
    }

    /* access modifiers changed from: protected */
    public boolean isConnectionCloseForced() {
        return this.t;
    }

    /* access modifiers changed from: protected */
    public void setConnectionCloseForced(boolean b2) {
        if (a.isDebugEnabled()) {
            a.debug(new StringBuffer().append("Force-close connection: ").append(b2).toString());
        }
        this.t = b2;
    }

    /* access modifiers changed from: protected */
    public boolean shouldCloseConnection(HttpConnection conn) {
        if (isConnectionCloseForced()) {
            a.debug("Should force-close connection.");
            return true;
        }
        Header connectionHeader = null;
        if (!conn.isTransparent()) {
            connectionHeader = this.d.getFirstHeader("proxy-connection");
        }
        if (connectionHeader == null) {
            connectionHeader = this.d.getFirstHeader("connection");
        }
        if (connectionHeader == null) {
            connectionHeader = this.c.getFirstHeader("connection");
        }
        if (connectionHeader != null) {
            if (connectionHeader.getValue().equalsIgnoreCase("close")) {
                if (!a.isDebugEnabled()) {
                    return true;
                }
                a.debug(new StringBuffer().append("Should close connection in response to directive: ").append(connectionHeader.getValue()).toString());
                return true;
            } else if (connectionHeader.getValue().equalsIgnoreCase("keep-alive")) {
                if (a.isDebugEnabled()) {
                    a.debug(new StringBuffer().append("Should NOT close connection in response to directive: ").append(connectionHeader.getValue()).toString());
                }
                return false;
            } else if (a.isDebugEnabled()) {
                a.debug(new StringBuffer().append("Unknown directive: ").append(connectionHeader.toExternalForm()).toString());
            }
        }
        a.debug("Resorting to protocol version default close connection policy");
        if (this.effectiveVersion.greaterEquals(HttpVersion.HTTP_1_1)) {
            if (a.isDebugEnabled()) {
                a.debug(new StringBuffer().append("Should NOT close connection, using ").append(this.effectiveVersion.toString()).toString());
            }
        } else if (a.isDebugEnabled()) {
            a.debug(new StringBuffer().append("Should close connection, using ").append(this.effectiveVersion.toString()).toString());
        }
        return this.effectiveVersion.lessEquals(HttpVersion.HTTP_1_0);
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public int execute(HttpState state, HttpConnection conn) throws HttpException, IOException {
        a.trace("enter HttpMethodBase.execute(HttpState, HttpConnection)");
        this.i = conn;
        if (state == null) {
            throw new IllegalArgumentException("HttpState parameter may not be null");
        } else if (conn == null) {
            throw new IllegalArgumentException("HttpConnection parameter may not be null");
        } else if (this.u) {
            throw new IllegalStateException("Method has been aborted");
        } else if (!validate()) {
            throw new ProtocolException("HttpMethodBase object not valid");
        } else {
            this.statusLine = null;
            this.t = false;
            conn.setLastResponseInputStream(null);
            if (this.effectiveVersion == null) {
                this.effectiveVersion = this.m.getVersion();
            }
            writeRequest(state, conn);
            this.v = true;
            readResponse(state, conn);
            this.p = true;
            return this.statusLine.getStatusCode();
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void abort() {
        if (!this.u) {
            this.u = true;
            HttpConnection conn = this.i;
            if (conn != null) {
                conn.close();
            }
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public boolean hasBeenUsed() {
        return this.p;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void recycle() {
        a.trace("enter HttpMethodBase.recycle()");
        releaseConnection();
        this.f = null;
        this.k = false;
        this.l = true;
        this.g = null;
        getRequestHeaderGroup().clear();
        getResponseHeaderGroup().clear();
        getResponseTrailerHeaderGroup().clear();
        this.statusLine = null;
        this.effectiveVersion = null;
        this.u = false;
        this.p = false;
        this.m = new HttpMethodParams();
        this.j = null;
        this.q = 0;
        this.t = false;
        this.n.invalidate();
        this.o.invalidate();
        this.w = null;
        this.v = false;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void releaseConnection() {
        try {
            if (this.h != null) {
                try {
                    this.h.close();
                } catch (IOException e2) {
                }
            }
        } finally {
            b();
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void removeRequestHeader(String headerName) {
        Header[] headers;
        for (Header header : getRequestHeaderGroup().getHeaders(headerName)) {
            getRequestHeaderGroup().removeHeader(header);
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void removeRequestHeader(Header header) {
        if (header != null) {
            getRequestHeaderGroup().removeHeader(header);
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public boolean validate() {
        return true;
    }

    private CookieSpec a(HttpState state) {
        if (this.w == null) {
            int i2 = state.getCookiePolicy();
            if (i2 == -1) {
                this.w = CookiePolicy.getCookieSpec(this.m.getCookiePolicy());
            } else {
                this.w = CookiePolicy.getSpecByPolicy(i2);
            }
            this.w.setValidDateFormats((Collection) this.m.getParameter(HttpMethodParams.DATE_PATTERNS));
        }
        return this.w;
    }

    /* access modifiers changed from: protected */
    public void addCookieRequestHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.addCookieRequestHeader(HttpState, HttpConnection)");
        Header[] cookieheaders = getRequestHeaderGroup().getHeaders("Cookie");
        for (Header cookieheader : cookieheaders) {
            if (cookieheader.isAutogenerated()) {
                getRequestHeaderGroup().removeHeader(cookieheader);
            }
        }
        CookieSpec matcher = a(state);
        String host = this.m.getVirtualHost();
        if (host == null) {
            host = conn.getHost();
        }
        Cookie[] cookies = matcher.match(host, conn.getPort(), getPath(), conn.isSecure(), state.getCookies());
        if (cookies != null && cookies.length > 0) {
            if (getParams().isParameterTrue(HttpMethodParams.SINGLE_COOKIE_HEADER)) {
                getRequestHeaderGroup().addHeader(new Header("Cookie", matcher.formatCookies(cookies), true));
            } else {
                for (Cookie cookie : cookies) {
                    getRequestHeaderGroup().addHeader(new Header("Cookie", matcher.formatCookie(cookie), true));
                }
            }
            if (matcher instanceof CookieVersionSupport) {
                CookieVersionSupport versupport = (CookieVersionSupport) matcher;
                int ver = versupport.getVersion();
                boolean needVersionHeader = false;
                for (Cookie cookie2 : cookies) {
                    if (ver != cookie2.getVersion()) {
                        needVersionHeader = true;
                    }
                }
                if (needVersionHeader) {
                    getRequestHeaderGroup().addHeader(versupport.getVersionHeader());
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void addHostRequestHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.addHostRequestHeader(HttpState, HttpConnection)");
        String host = this.m.getVirtualHost();
        if (host != null) {
            a.debug(new StringBuffer().append("Using virtual host name: ").append(host).toString());
        } else {
            host = conn.getHost();
        }
        int port = conn.getPort();
        if (a.isDebugEnabled()) {
            a.debug("Adding Host request header");
        }
        if (conn.getProtocol().getDefaultPort() != port) {
            host = new StringBuffer().append(host).append(c.N).append(port).toString();
        }
        setRequestHeader(Constants.Http.HTTP_HEADER_HOST, host);
    }

    /* access modifiers changed from: protected */
    public void addProxyConnectionHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.addProxyConnectionHeader(HttpState, HttpConnection)");
        if (!conn.isTransparent() && getRequestHeader("Proxy-Connection") == null) {
            addRequestHeader("Proxy-Connection", "Keep-Alive");
        }
    }

    /* access modifiers changed from: protected */
    public void addRequestHeaders(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.addRequestHeaders(HttpState, HttpConnection)");
        addUserAgentRequestHeader(state, conn);
        addHostRequestHeader(state, conn);
        addCookieRequestHeader(state, conn);
        addProxyConnectionHeader(state, conn);
    }

    /* access modifiers changed from: protected */
    public void addUserAgentRequestHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.addUserAgentRequestHeaders(HttpState, HttpConnection)");
        if (getRequestHeader(Constants.Http.HTTP_HEADER_USER_AGENT) == null) {
            String agent = (String) getParams().getParameter(HttpMethodParams.USER_AGENT);
            if (agent == null) {
                agent = "Jakarta Commons-HttpClient";
            }
            setRequestHeader(Constants.Http.HTTP_HEADER_USER_AGENT, agent);
        }
    }

    /* access modifiers changed from: protected */
    public void checkNotUsed() throws IllegalStateException {
        if (this.p) {
            throw new IllegalStateException("Already used.");
        }
    }

    /* access modifiers changed from: protected */
    public void checkUsed() throws IllegalStateException {
        if (!this.p) {
            throw new IllegalStateException("Not Used.");
        }
    }

    protected static String generateRequestLine(HttpConnection connection, String name, String requestPath, String query, String version) {
        a.trace("enter HttpMethodBase.generateRequestLine(HttpConnection, String, String, String, String)");
        StringBuffer buf = new StringBuffer();
        buf.append(name);
        buf.append(" ");
        if (!connection.isTransparent()) {
            Protocol protocol = connection.getProtocol();
            buf.append(protocol.getScheme().toLowerCase());
            buf.append("://");
            buf.append(connection.getHost());
            if (!(connection.getPort() == -1 || connection.getPort() == protocol.getDefaultPort())) {
                buf.append(c.N);
                buf.append(connection.getPort());
            }
        }
        if (requestPath == null) {
            buf.append(CookieSpec.PATH_DELIM);
        } else {
            if (!connection.isTransparent() && !requestPath.startsWith(CookieSpec.PATH_DELIM)) {
                buf.append(CookieSpec.PATH_DELIM);
            }
            buf.append(requestPath);
        }
        if (query != null) {
            if (query.indexOf("?") != 0) {
                buf.append("?");
            }
            buf.append(query);
        }
        buf.append(" ");
        buf.append(version);
        buf.append("\r\n");
        return buf.toString();
    }

    /* access modifiers changed from: protected */
    public void processResponseBody(HttpState state, HttpConnection conn) {
    }

    /* access modifiers changed from: protected */
    public void processResponseHeaders(HttpState state, HttpConnection conn) {
        a.trace("enter HttpMethodBase.processResponseHeaders(HttpState, HttpConnection)");
        CookieSpec parser = a(state);
        processCookieHeaders(parser, getResponseHeaderGroup().getHeaders(RFC2109Spec.SET_COOKIE_KEY), state, conn);
        if ((parser instanceof CookieVersionSupport) && ((CookieVersionSupport) parser).getVersion() > 0) {
            processCookieHeaders(parser, getResponseHeaderGroup().getHeaders(RFC2965Spec.SET_COOKIE2_KEY), state, conn);
        }
    }

    /* access modifiers changed from: protected */
    public void processCookieHeaders(CookieSpec parser, Header[] headers, HttpState state, HttpConnection conn) {
        a.trace("enter HttpMethodBase.processCookieHeaders(Header[], HttpState, HttpConnection)");
        String host = this.m.getVirtualHost();
        if (host == null) {
            host = conn.getHost();
        }
        for (Header header : headers) {
            Cookie[] cookies = null;
            try {
                cookies = parser.parse(host, conn.getPort(), getPath(), conn.isSecure(), header);
            } catch (MalformedCookieException e2) {
                if (a.isWarnEnabled()) {
                    a.warn(new StringBuffer().append("Invalid cookie header: \"").append(header.getValue()).append("\". ").append(e2.getMessage()).toString());
                }
            }
            if (cookies != null) {
                for (int j2 = 0; j2 < cookies.length; j2++) {
                    Cookie cookie = cookies[j2];
                    try {
                        parser.validate(host, conn.getPort(), getPath(), conn.isSecure(), cookie);
                        state.addCookie(cookie);
                        if (a.isDebugEnabled()) {
                            a.debug(new StringBuffer().append("Cookie accepted: \"").append(parser.formatCookie(cookie)).append(c.M).toString());
                        }
                    } catch (MalformedCookieException e3) {
                        if (a.isWarnEnabled()) {
                            a.warn(new StringBuffer().append("Cookie rejected: \"").append(parser.formatCookie(cookie)).append("\". ").append(e3.getMessage()).toString());
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void processStatusLine(HttpState state, HttpConnection conn) {
    }

    /* access modifiers changed from: protected */
    public void readResponse(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.readResponse(HttpState, HttpConnection)");
        while (this.statusLine == null) {
            readStatusLine(state, conn);
            processStatusLine(state, conn);
            readResponseHeaders(state, conn);
            processResponseHeaders(state, conn);
            int status = this.statusLine.getStatusCode();
            if (status >= 100 && status < 200) {
                if (a.isInfoEnabled()) {
                    a.info(new StringBuffer().append("Discarding unexpected response: ").append(this.statusLine.toString()).toString());
                }
                this.statusLine = null;
            }
        }
        readResponseBody(state, conn);
        processResponseBody(state, conn);
    }

    /* access modifiers changed from: protected */
    public void readResponseBody(HttpState state, HttpConnection conn) throws IOException, HttpException {
        ChunkedInputStream chunkedInputStream;
        boolean z;
        String str;
        InputStream stream;
        a.trace("enter HttpMethodBase.readResponseBody(HttpState, HttpConnection)");
        a.trace("enter HttpMethodBase.readResponseBody(HttpConnection)");
        this.j = null;
        InputStream responseInputStream = conn.getResponseInputStream();
        if (e.b.a()) {
            chunkedInputStream = new f(responseInputStream, e.b);
        } else {
            chunkedInputStream = responseInputStream;
        }
        int statusCode = this.statusLine.getStatusCode();
        a.trace("enter HttpMethodBase.canResponseHaveBody(int)");
        if ((statusCode >= 100 && statusCode <= 199) || statusCode == 204 || statusCode == 304) {
            z = false;
        } else {
            z = true;
        }
        Header firstHeader = this.d.getFirstHeader("Transfer-Encoding");
        if (firstHeader != null) {
            String value = firstHeader.getValue();
            if (!"chunked".equalsIgnoreCase(value) && !"identity".equalsIgnoreCase(value) && a.isWarnEnabled()) {
                a.warn(new StringBuffer().append("Unsupported transfer encoding: ").append(value).toString());
            }
            HeaderElement[] elements = firstHeader.getElements();
            int length = elements.length;
            if (length <= 0 || !"chunked".equalsIgnoreCase(elements[length - 1].getName())) {
                a.info("Response content is not chunk-encoded");
                setConnectionCloseForced(true);
            } else if (conn.isResponseAvailable(conn.getParams().getSoTimeout())) {
                chunkedInputStream = new ChunkedInputStream(chunkedInputStream, this);
            } else if (getParams().isParameterTrue(HttpMethodParams.STRICT_TRANSFER_ENCODING)) {
                throw new ProtocolException("Chunk-encoded body declared but not sent");
            } else {
                a.warn("Chunk-encoded body missing");
                chunkedInputStream = null;
            }
        } else {
            long responseContentLength = getResponseContentLength();
            if (responseContentLength != -1) {
                chunkedInputStream = new ContentLengthInputStream(chunkedInputStream, responseContentLength);
            } else if (z && this.effectiveVersion.greaterEquals(HttpVersion.HTTP_1_1)) {
                Header firstHeader2 = this.d.getFirstHeader("Connection");
                if (firstHeader2 != null) {
                    str = firstHeader2.getValue();
                } else {
                    str = null;
                }
                if (!"close".equalsIgnoreCase(str)) {
                    a.info("Response content length is not known");
                    setConnectionCloseForced(true);
                }
            }
        }
        if (!z) {
            chunkedInputStream = null;
        }
        if (chunkedInputStream != null) {
            stream = new a(chunkedInputStream, new b(this));
        } else {
            stream = chunkedInputStream;
        }
        if (stream == null) {
            responseBodyConsumed();
            return;
        }
        conn.setLastResponseInputStream(stream);
        setResponseStream(stream);
    }

    /* access modifiers changed from: protected */
    public void readResponseHeaders(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.readResponseHeaders(HttpState,HttpConnection)");
        getResponseHeaderGroup().clear();
        getResponseHeaderGroup().setHeaders(HttpParser.parseHeaders(conn.getResponseInputStream(), getParams().getHttpElementCharset()));
    }

    /* access modifiers changed from: protected */
    public void readStatusLine(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.readStatusLine(HttpState, HttpConnection)");
        int maxGarbageLines = getParams().getIntParameter(HttpMethodParams.STATUS_LINE_GARBAGE_LIMIT, Integer.MAX_VALUE);
        int count = 0;
        while (true) {
            String s2 = conn.readLine(getParams().getHttpElementCharset());
            if (s2 == null && count == 0) {
                throw new NoHttpResponseException(new StringBuffer().append("The server ").append(conn.getHost()).append(" failed to respond").toString());
            }
            if (e.a.a()) {
                e.a.b(new StringBuffer().append(s2).append("\r\n").toString());
            }
            if (s2 != null && StatusLine.startsWithHTTP(s2)) {
                this.statusLine = new StatusLine(s2);
                String versionStr = this.statusLine.getHttpVersion();
                if (!getParams().isParameterFalse(HttpMethodParams.UNAMBIGUOUS_STATUS_LINE) || !versionStr.equals("HTTP")) {
                    this.effectiveVersion = HttpVersion.parse(versionStr);
                    return;
                }
                getParams().setVersion(HttpVersion.HTTP_1_0);
                if (a.isWarnEnabled()) {
                    a.warn(new StringBuffer().append("Ambiguous status line (HTTP protocol version missing):").append(this.statusLine.toString()).toString());
                    return;
                }
                return;
            } else if (s2 != null && count < maxGarbageLines) {
                count++;
            }
        }
        throw new ProtocolException(new StringBuffer().append("The server ").append(conn.getHost()).append(" failed to respond with a valid HTTP response").toString());
    }

    /* access modifiers changed from: protected */
    public void writeRequest(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.writeRequest(HttpState, HttpConnection)");
        writeRequestLine(state, conn);
        writeRequestHeaders(state, conn);
        conn.writeLine();
        if (e.a.a()) {
            e.a.a("\r\n");
        }
        HttpVersion ver = getParams().getVersion();
        Header expectheader = getRequestHeader("Expect");
        String expectvalue = null;
        if (expectheader != null) {
            expectvalue = expectheader.getValue();
        }
        if (expectvalue != null && expectvalue.compareToIgnoreCase("100-continue") == 0) {
            if (ver.greaterEquals(HttpVersion.HTTP_1_1)) {
                conn.flushRequestOutputStream();
                int readTimeout = conn.getParams().getSoTimeout();
                try {
                    conn.setSocketTimeout(3000);
                    readStatusLine(state, conn);
                    processStatusLine(state, conn);
                    readResponseHeaders(state, conn);
                    processResponseHeaders(state, conn);
                    if (this.statusLine.getStatusCode() == 100) {
                        this.statusLine = null;
                        a.debug("OK to continue received");
                    } else {
                        conn.setSocketTimeout(readTimeout);
                        return;
                    }
                } catch (InterruptedIOException e2) {
                    if (!ExceptionUtil.isSocketTimeoutException(e2)) {
                        throw e2;
                    }
                    removeRequestHeader("Expect");
                    a.info("100 (continue) read timeout. Resume sending the request");
                } finally {
                    conn.setSocketTimeout(readTimeout);
                }
            } else {
                removeRequestHeader("Expect");
                a.info("'Expect: 100-continue' handshake is only supported by HTTP/1.1 or higher");
            }
        }
        writeRequestBody(state, conn);
        conn.flushRequestOutputStream();
    }

    /* access modifiers changed from: protected */
    public boolean writeRequestBody(HttpState state, HttpConnection conn) throws IOException, HttpException {
        return true;
    }

    /* access modifiers changed from: protected */
    public void writeRequestHeaders(HttpState state, HttpConnection conn) throws IOException, HttpException {
        Header[] headers;
        a.trace("enter HttpMethodBase.writeRequestHeaders(HttpState,HttpConnection)");
        addRequestHeaders(state, conn);
        String charset = getParams().getHttpElementCharset();
        for (Header header : getRequestHeaders()) {
            String s2 = header.toExternalForm();
            if (e.a.a()) {
                e.a.a(s2);
            }
            conn.print(s2, charset);
        }
    }

    /* access modifiers changed from: protected */
    public void writeRequestLine(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter HttpMethodBase.writeRequestLine(HttpState, HttpConnection)");
        String requestLine = generateRequestLine(conn, getName(), getPath(), getQueryString(), this.effectiveVersion.toString());
        if (e.a.a()) {
            e.a.a(requestLine);
        }
        conn.print(requestLine, getParams().getHttpElementCharset());
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public HttpMethodParams getParams() {
        return this.m;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public void setParams(HttpMethodParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        this.m = params;
    }

    public HttpVersion getEffectiveVersion() {
        return this.effectiveVersion;
    }

    public String getProxyAuthenticationRealm() {
        return this.o.getRealm();
    }

    public String getAuthenticationRealm() {
        return this.n.getRealm();
    }

    /* access modifiers changed from: protected */
    public String getContentCharSet(Header contentheader) {
        NameValuePair param;
        a.trace("enter getContentCharSet( Header contentheader )");
        String charset = null;
        if (contentheader != null) {
            HeaderElement[] values = contentheader.getElements();
            if (values.length == 1 && (param = values[0].getParameterByName("charset")) != null) {
                charset = param.getValue();
            }
        }
        if (charset == null) {
            charset = getParams().getContentCharset();
            if (a.isDebugEnabled()) {
                a.debug(new StringBuffer().append("Default charset used: ").append(charset).toString());
            }
        }
        return charset;
    }

    public String getRequestCharSet() {
        return getContentCharSet(getRequestHeader("Content-Type"));
    }

    public String getResponseCharSet() {
        return getContentCharSet(getResponseHeader("Content-Type"));
    }

    public int getRecoverableExceptionCount() {
        return this.q;
    }

    /* access modifiers changed from: protected */
    public void responseBodyConsumed() {
        this.h = null;
        if (this.i != null) {
            this.i.setLastResponseInputStream(null);
            if (shouldCloseConnection(this.i)) {
                this.i.close();
            } else {
                try {
                    if (this.i.isResponseAvailable()) {
                        if (getParams().isParameterTrue(HttpMethodParams.WARN_EXTRA_INPUT)) {
                            a.warn("Extra response data detected - closing connection");
                        }
                        this.i.close();
                    }
                } catch (IOException e2) {
                    a.warn(e2.getMessage());
                    this.i.close();
                }
            }
        }
        this.t = false;
        b();
    }

    private void b() {
        if (this.i != null) {
            this.i.releaseConnection();
            this.i = null;
        }
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public HostConfiguration getHostConfiguration() {
        HostConfiguration hostconfig = new HostConfiguration();
        hostconfig.setHost(this.r);
        return hostconfig;
    }

    public void setHostConfiguration(HostConfiguration hostconfig) {
        if (hostconfig != null) {
            this.r = new HttpHost(hostconfig.getHost(), hostconfig.getPort(), hostconfig.getProtocol());
        } else {
            this.r = null;
        }
    }

    public MethodRetryHandler getMethodRetryHandler() {
        return this.s;
    }

    public void setMethodRetryHandler(MethodRetryHandler handler) {
        this.s = handler;
    }

    /* access modifiers changed from: package-private */
    public final void a(StatusLine statusline, HeaderGroup responseheaders, InputStream responseStream) {
        this.p = true;
        this.statusLine = statusline;
        this.d = responseheaders;
        this.j = null;
        this.h = responseStream;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public AuthState getHostAuthState() {
        return this.n;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public AuthState getProxyAuthState() {
        return this.o;
    }

    public boolean isAborted() {
        return this.u;
    }

    @Override // org.apache.commons.httpclient.HttpMethod
    public boolean isRequestSent() {
        return this.v;
    }
}
