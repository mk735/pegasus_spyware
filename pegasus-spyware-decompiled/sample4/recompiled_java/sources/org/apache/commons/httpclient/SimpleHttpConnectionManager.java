package org.apache.commons.httpclient;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.httpclient.params.HttpConnectionManagerParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class SimpleHttpConnectionManager implements HttpConnectionManager {
    static Class a;
    private static final Log b;
    private HttpConnectionManagerParams c = new HttpConnectionManagerParams();
    private long d = Long.MAX_VALUE;
    private volatile boolean e = false;
    private boolean f = false;
    protected HttpConnection httpConnection;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.SimpleHttpConnectionManager");
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

    static void a(HttpConnection conn) {
        InputStream lastResponse = conn.getLastResponseInputStream();
        if (lastResponse != null) {
            conn.setLastResponseInputStream(null);
            try {
                lastResponse.close();
            } catch (IOException e2) {
                conn.close();
            }
        }
    }

    public SimpleHttpConnectionManager(boolean alwaysClose) {
        this.f = alwaysClose;
    }

    public SimpleHttpConnectionManager() {
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnection getConnection(HostConfiguration hostConfiguration) {
        return getConnection(hostConfiguration, 0);
    }

    public boolean isConnectionStaleCheckingEnabled() {
        return this.c.isStaleCheckingEnabled();
    }

    public void setConnectionStaleCheckingEnabled(boolean connectionStaleCheckingEnabled) {
        this.c.setStaleCheckingEnabled(connectionStaleCheckingEnabled);
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnection getConnectionWithTimeout(HostConfiguration hostConfiguration, long timeout) {
        if (this.httpConnection == null) {
            this.httpConnection = new HttpConnection(hostConfiguration);
            this.httpConnection.setHttpConnectionManager(this);
            this.httpConnection.getParams().setDefaults(this.c);
        } else if (!hostConfiguration.hostEquals(this.httpConnection) || !hostConfiguration.proxyEquals(this.httpConnection)) {
            if (this.httpConnection.isOpen()) {
                this.httpConnection.close();
            }
            this.httpConnection.setHost(hostConfiguration.getHost());
            this.httpConnection.setPort(hostConfiguration.getPort());
            this.httpConnection.setProtocol(hostConfiguration.getProtocol());
            this.httpConnection.setLocalAddress(hostConfiguration.getLocalAddress());
            this.httpConnection.setProxyHost(hostConfiguration.getProxyHost());
            this.httpConnection.setProxyPort(hostConfiguration.getProxyPort());
        } else {
            a(this.httpConnection);
        }
        this.d = Long.MAX_VALUE;
        if (this.e) {
            b.warn("SimpleHttpConnectionManager being used incorrectly.  Be sure that HttpMethod.releaseConnection() is always called and that only one thread and/or method is using this connection manager at a time.");
        }
        this.e = true;
        return this.httpConnection;
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnection getConnection(HostConfiguration hostConfiguration, long timeout) {
        return getConnectionWithTimeout(hostConfiguration, timeout);
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public void releaseConnection(HttpConnection conn) {
        if (conn != this.httpConnection) {
            throw new IllegalStateException("Unexpected release of an unknown connection.");
        }
        if (this.f) {
            this.httpConnection.close();
        } else {
            a(this.httpConnection);
        }
        this.e = false;
        this.d = System.currentTimeMillis();
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public HttpConnectionManagerParams getParams() {
        return this.c;
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public void setParams(HttpConnectionManagerParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        this.c = params;
    }

    @Override // org.apache.commons.httpclient.HttpConnectionManager
    public void closeIdleConnections(long idleTimeout) {
        if (this.d <= System.currentTimeMillis() - idleTimeout) {
            this.httpConnection.close();
        }
    }

    public void shutdown() {
        this.httpConnection.close();
    }
}
