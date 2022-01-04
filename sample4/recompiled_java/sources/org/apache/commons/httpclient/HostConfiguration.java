package org.apache.commons.httpclient;

import java.net.InetAddress;
import org.apache.commons.httpclient.params.HostParams;
import org.apache.commons.httpclient.protocol.Protocol;
import org.apache.commons.httpclient.util.LangUtils;

public class HostConfiguration implements Cloneable {
    public static final HostConfiguration ANY_HOST_CONFIGURATION = new HostConfiguration();
    private HttpHost a = null;
    private ProxyHost b = null;
    private InetAddress c = null;
    private HostParams d = new HostParams();

    public HostConfiguration() {
    }

    public HostConfiguration(HostConfiguration hostConfiguration) {
        a(hostConfiguration);
    }

    private void a(HostConfiguration hostConfiguration) {
        synchronized (hostConfiguration) {
            try {
                if (hostConfiguration.a != null) {
                    this.a = (HttpHost) hostConfiguration.a.clone();
                } else {
                    this.a = null;
                }
                if (hostConfiguration.b != null) {
                    this.b = (ProxyHost) hostConfiguration.b.clone();
                } else {
                    this.b = null;
                }
                this.c = hostConfiguration.getLocalAddress();
                this.d = (HostParams) hostConfiguration.getParams().clone();
            } catch (CloneNotSupportedException e) {
                throw new IllegalArgumentException("Host configuration could not be cloned");
            }
        }
    }

    @Override // java.lang.Object
    public Object clone() {
        try {
            HostConfiguration copy = (HostConfiguration) super.clone();
            copy.a(this);
            return copy;
        } catch (CloneNotSupportedException e) {
            throw new IllegalArgumentException("Host configuration could not be cloned");
        }
    }

    public synchronized String toString() {
        StringBuffer b2;
        boolean appendComma = false;
        b2 = new StringBuffer(50);
        b2.append("HostConfiguration[");
        if (this.a != null) {
            appendComma = true;
            b2.append("host=").append(this.a);
        }
        if (this.b != null) {
            if (appendComma) {
                b2.append(", ");
            } else {
                appendComma = true;
            }
            b2.append("proxyHost=").append(this.b);
        }
        if (this.c != null) {
            if (appendComma) {
                b2.append(", ");
            }
            b2.append("localAddress=").append(this.c);
            b2.append(", ");
            b2.append("params=").append(this.d);
        }
        b2.append("]");
        return b2.toString();
    }

    public synchronized boolean hostEquals(HttpConnection connection) {
        boolean z = false;
        synchronized (this) {
            if (connection == null) {
                throw new IllegalArgumentException("Connection may not be null");
            } else if (this.a != null && this.a.getHostName().equalsIgnoreCase(connection.getHost()) && this.a.getPort() == connection.getPort() && this.a.getProtocol().equals(connection.getProtocol()) && (this.c == null ? connection.getLocalAddress() == null : this.c.equals(connection.getLocalAddress()))) {
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean proxyEquals(HttpConnection connection) {
        boolean z = true;
        synchronized (this) {
            if (connection == null) {
                throw new IllegalArgumentException("Connection may not be null");
            } else if (this.b != null) {
                if (!this.b.getHostName().equalsIgnoreCase(connection.getProxyHost()) || this.b.getPort() != connection.getProxyPort()) {
                    z = false;
                }
            } else if (connection.getProxyHost() != null) {
                z = false;
            }
        }
        return z;
    }

    public synchronized boolean isHostSet() {
        return this.a != null;
    }

    public synchronized void setHost(HttpHost host) {
        this.a = host;
    }

    public synchronized void setHost(String host, int port, String protocol) {
        this.a = new HttpHost(host, port, Protocol.getProtocol(protocol));
    }

    public synchronized void setHost(String host, String virtualHost, int port, Protocol protocol) {
        setHost(host, port, protocol);
        this.d.setVirtualHost(virtualHost);
    }

    public synchronized void setHost(String host, int port, Protocol protocol) {
        if (host == null) {
            throw new IllegalArgumentException("host must not be null");
        } else if (protocol == null) {
            throw new IllegalArgumentException("protocol must not be null");
        } else {
            this.a = new HttpHost(host, port, protocol);
        }
    }

    public synchronized void setHost(String host, int port) {
        setHost(host, port, Protocol.getProtocol("http"));
    }

    public synchronized void setHost(String host) {
        Protocol defaultProtocol = Protocol.getProtocol("http");
        setHost(host, defaultProtocol.getDefaultPort(), defaultProtocol);
    }

    public synchronized void setHost(URI uri) {
        try {
            setHost(uri.getHost(), uri.getPort(), uri.getScheme());
        } catch (URIException e) {
            throw new IllegalArgumentException(e.toString());
        }
    }

    public synchronized String getHostURL() {
        if (this.a == null) {
            throw new IllegalStateException("Host must be set to create a host URL");
        }
        return this.a.toURI();
    }

    public synchronized String getHost() {
        String str;
        if (this.a != null) {
            str = this.a.getHostName();
        } else {
            str = null;
        }
        return str;
    }

    public synchronized String getVirtualHost() {
        return this.d.getVirtualHost();
    }

    public synchronized int getPort() {
        int i;
        if (this.a != null) {
            i = this.a.getPort();
        } else {
            i = -1;
        }
        return i;
    }

    public synchronized Protocol getProtocol() {
        Protocol protocol;
        if (this.a != null) {
            protocol = this.a.getProtocol();
        } else {
            protocol = null;
        }
        return protocol;
    }

    public synchronized boolean isProxySet() {
        return this.b != null;
    }

    public synchronized void setProxyHost(ProxyHost proxyHost) {
        this.b = proxyHost;
    }

    public synchronized void setProxy(String proxyHost, int proxyPort) {
        this.b = new ProxyHost(proxyHost, proxyPort);
    }

    public synchronized String getProxyHost() {
        String str;
        if (this.b != null) {
            str = this.b.getHostName();
        } else {
            str = null;
        }
        return str;
    }

    public synchronized int getProxyPort() {
        int i;
        if (this.b != null) {
            i = this.b.getPort();
        } else {
            i = -1;
        }
        return i;
    }

    public synchronized void setLocalAddress(InetAddress localAddress) {
        this.c = localAddress;
    }

    public synchronized InetAddress getLocalAddress() {
        return this.c;
    }

    public HostParams getParams() {
        return this.d;
    }

    public void setParams(HostParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        this.d = params;
    }

    public synchronized boolean equals(Object o) {
        boolean z = true;
        synchronized (this) {
            if (!(o instanceof HostConfiguration)) {
                z = false;
            } else if (o != this) {
                HostConfiguration that = (HostConfiguration) o;
                if (!LangUtils.equals(this.a, that.a) || !LangUtils.equals(this.b, that.b) || !LangUtils.equals(this.c, that.c)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public synchronized int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.a), this.b), this.c);
    }
}
