package org.apache.commons.httpclient;

import java.io.IOException;
import java.net.Socket;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpConnectionManagerParams;
import org.apache.commons.httpclient.params.HttpParams;

public class ProxyClient {
    private HttpState a;
    private HttpClientParams b;
    private HostConfiguration c;

    public ProxyClient() {
        this(new HttpClientParams());
    }

    public ProxyClient(HttpClientParams params) {
        this.a = new HttpState();
        this.b = null;
        this.c = new HostConfiguration();
        if (params == null) {
            throw new IllegalArgumentException("Params may not be null");
        }
        this.b = params;
    }

    public synchronized HttpState getState() {
        return this.a;
    }

    public synchronized void setState(HttpState state) {
        this.a = state;
    }

    public synchronized HostConfiguration getHostConfiguration() {
        return this.c;
    }

    public synchronized void setHostConfiguration(HostConfiguration hostConfiguration) {
        this.c = hostConfiguration;
    }

    public synchronized HttpClientParams getParams() {
        return this.b;
    }

    public synchronized void setParams(HttpClientParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        this.b = params;
    }

    public ConnectResponse connect() throws IOException, HttpException {
        HostConfiguration hostconf = getHostConfiguration();
        if (hostconf.getProxyHost() == null) {
            throw new IllegalStateException("proxy host must be configured");
        } else if (hostconf.getHost() == null) {
            throw new IllegalStateException("destination host must be configured");
        } else if (hostconf.getProtocol().isSecure()) {
            throw new IllegalStateException("secure protocol socket factory may not be used");
        } else {
            ConnectMethod method = new ConnectMethod(getHostConfiguration());
            method.getParams().setDefaults(getParams());
            a connectionManager = new a();
            connectionManager.a(getParams());
            new c(connectionManager, hostconf, getParams(), getState()).a(method);
            ConnectResponse response = new ConnectResponse((byte) 0);
            ConnectResponse.a(response, method);
            if (method.getStatusCode() == 200) {
                ConnectResponse.a(response, connectionManager.a().getSocket());
            } else {
                connectionManager.a().close();
            }
            return response;
        }
    }

    public static class ConnectResponse {
        private ConnectMethod a;
        private Socket b;

        ConnectResponse(byte b2) {
            this();
        }

        static void a(ConnectResponse x0, Socket x1) {
            x0.b = x1;
        }

        static void a(ConnectResponse x0, ConnectMethod x1) {
            x0.a = x1;
        }

        private ConnectResponse() {
        }

        public ConnectMethod getConnectMethod() {
            return this.a;
        }

        public Socket getSocket() {
            return this.b;
        }
    }

    static class a implements HttpConnectionManager {
        private HttpConnection a;
        private HttpParams b;

        a() {
        }

        @Override // org.apache.commons.httpclient.HttpConnectionManager
        public final void closeIdleConnections(long idleTimeout) {
        }

        public final HttpConnection a() {
            return this.a;
        }

        public final void a(HttpParams httpParams) {
            this.b = httpParams;
        }

        @Override // org.apache.commons.httpclient.HttpConnectionManager
        public final HttpConnection getConnectionWithTimeout(HostConfiguration hostConfiguration, long timeout) {
            this.a = new HttpConnection(hostConfiguration);
            this.a.setHttpConnectionManager(this);
            this.a.getParams().setDefaults(this.b);
            return this.a;
        }

        @Override // org.apache.commons.httpclient.HttpConnectionManager
        public final HttpConnection getConnection(HostConfiguration hostConfiguration, long timeout) throws HttpException {
            return getConnectionWithTimeout(hostConfiguration, timeout);
        }

        @Override // org.apache.commons.httpclient.HttpConnectionManager
        public final HttpConnection getConnection(HostConfiguration hostConfiguration) {
            return getConnectionWithTimeout(hostConfiguration, -1);
        }

        @Override // org.apache.commons.httpclient.HttpConnectionManager
        public final void releaseConnection(HttpConnection conn) {
        }

        @Override // org.apache.commons.httpclient.HttpConnectionManager
        public final HttpConnectionManagerParams getParams() {
            return null;
        }

        @Override // org.apache.commons.httpclient.HttpConnectionManager
        public final void setParams(HttpConnectionManagerParams params) {
        }
    }
}
