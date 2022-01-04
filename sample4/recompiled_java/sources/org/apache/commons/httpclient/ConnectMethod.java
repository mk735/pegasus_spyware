package org.apache.commons.httpclient;

import java.io.IOException;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ConnectMethod extends HttpMethodBase {
    public static final String NAME = "CONNECT";
    static Class a;
    private static final Log d;
    private final HostConfiguration c;

    public ConnectMethod() {
        this.c = null;
    }

    public ConnectMethod(HttpMethod method) {
        this.c = null;
    }

    public ConnectMethod(HostConfiguration targethost) {
        if (targethost == null) {
            throw new IllegalArgumentException("Target host may not be null");
        }
        this.c = targethost;
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return NAME;
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getPath() {
        if (this.c == null) {
            return CookieSpec.PATH_DELIM;
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.c.getHost());
        int port = this.c.getPort();
        if (port == -1) {
            port = this.c.getProtocol().getDefaultPort();
        }
        buffer.append(':');
        buffer.append(port);
        return buffer.toString();
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public URI getURI() throws URIException {
        return new URI(getPath(), true, getParams().getUriCharset());
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public void addCookieRequestHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public void addRequestHeaders(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter ConnectMethod.addRequestHeaders(HttpState, HttpConnection)");
        addUserAgentRequestHeader(state, conn);
        addHostRequestHeader(state, conn);
        addProxyConnectionHeader(state, conn);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public int execute(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter ConnectMethod.execute(HttpState, HttpConnection)");
        int code = super.execute(state, conn);
        if (d.isDebugEnabled()) {
            d.debug(new StringBuffer().append("CONNECT status code ").append(code).toString());
        }
        return code;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public void writeRequestLine(HttpState state, HttpConnection conn) throws IOException, HttpException {
        StringBuffer buffer = new StringBuffer();
        buffer.append(getName());
        buffer.append(' ');
        if (this.c != null) {
            buffer.append(getPath());
        } else {
            int port = conn.getPort();
            if (port == -1) {
                port = conn.getProtocol().getDefaultPort();
            }
            buffer.append(conn.getHost());
            buffer.append(':');
            buffer.append(port);
        }
        buffer.append(" ");
        buffer.append(getEffectiveVersion());
        String line = buffer.toString();
        conn.printLine(line, getParams().getHttpElementCharset());
        if (e.a.a()) {
            e.a.a(line);
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public boolean shouldCloseConnection(HttpConnection conn) {
        if (getStatusCode() != 200) {
            return super.shouldCloseConnection(conn);
        }
        Header connectionHeader = null;
        if (!conn.isTransparent()) {
            connectionHeader = getResponseHeader("proxy-connection");
        }
        if (connectionHeader == null) {
            connectionHeader = getResponseHeader("connection");
        }
        if (connectionHeader != null && connectionHeader.getValue().equalsIgnoreCase("close") && d.isWarnEnabled()) {
            d.warn(new StringBuffer().append("Invalid header encountered '").append(connectionHeader.toExternalForm()).append("' in response ").append(getStatusLine().toString()).toString());
        }
        return false;
    }

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.ConnectMethod");
            a = cls;
        } else {
            cls = a;
        }
        d = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }
}
