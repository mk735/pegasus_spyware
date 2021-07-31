package org.apache.commons.httpclient;

import org.apache.commons.httpclient.protocol.Protocol;
import org.apache.commons.httpclient.util.LangUtils;

public class HttpHost implements Cloneable {
    private String a;
    private int b;
    private Protocol c;

    public HttpHost(String hostname, int port, Protocol protocol) {
        this.a = null;
        this.b = -1;
        this.c = null;
        if (hostname == null) {
            throw new IllegalArgumentException("Host name may not be null");
        } else if (protocol == null) {
            throw new IllegalArgumentException("Protocol may not be null");
        } else {
            this.a = hostname;
            this.c = protocol;
            if (port >= 0) {
                this.b = port;
            } else {
                this.b = this.c.getDefaultPort();
            }
        }
    }

    public HttpHost(String hostname, int port) {
        this(hostname, port, Protocol.getProtocol("http"));
    }

    public HttpHost(String hostname) {
        this(hostname, -1, Protocol.getProtocol("http"));
    }

    public HttpHost(URI uri) throws URIException {
        this(uri.getHost(), uri.getPort(), Protocol.getProtocol(uri.getScheme()));
    }

    public HttpHost(HttpHost httphost) {
        this.a = null;
        this.b = -1;
        this.c = null;
        a(httphost);
    }

    private void a(HttpHost httphost) {
        this.a = httphost.a;
        this.b = httphost.b;
        this.c = httphost.c;
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        HttpHost copy = (HttpHost) super.clone();
        copy.a(this);
        return copy;
    }

    public String getHostName() {
        return this.a;
    }

    public int getPort() {
        return this.b;
    }

    public Protocol getProtocol() {
        return this.c;
    }

    public String toURI() {
        StringBuffer buffer = new StringBuffer(50);
        buffer.append(this.c.getScheme());
        buffer.append("://");
        buffer.append(this.a);
        if (this.b != this.c.getDefaultPort()) {
            buffer.append(':');
            buffer.append(this.b);
        }
        return buffer.toString();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(50);
        buffer.append(toURI());
        return buffer.toString();
    }

    public boolean equals(Object o) {
        if (!(o instanceof HttpHost)) {
            return false;
        }
        if (o == this) {
            return true;
        }
        HttpHost that = (HttpHost) o;
        if (!this.a.equalsIgnoreCase(that.a)) {
            return false;
        }
        if (this.b != that.b) {
            return false;
        }
        return this.c.equals(that.c);
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.a), this.b), this.c);
    }
}
