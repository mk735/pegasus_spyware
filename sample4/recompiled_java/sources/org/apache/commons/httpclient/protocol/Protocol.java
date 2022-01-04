package org.apache.commons.httpclient.protocol;

import com.lenovo.lps.sus.c.c;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.httpclient.util.LangUtils;

public class Protocol {
    private static final Map a = Collections.synchronizedMap(new HashMap());
    private String b;
    private ProtocolSocketFactory c;
    private int d;
    private boolean e;

    public static void registerProtocol(String id, Protocol protocol) {
        if (id == null) {
            throw new IllegalArgumentException("id is null");
        } else if (protocol == null) {
            throw new IllegalArgumentException("protocol is null");
        } else {
            a.put(id, protocol);
        }
    }

    public static void unregisterProtocol(String id) {
        if (id == null) {
            throw new IllegalArgumentException("id is null");
        }
        a.remove(id);
    }

    public static Protocol getProtocol(String id) throws IllegalStateException {
        if (id == null) {
            throw new IllegalArgumentException("id is null");
        }
        Protocol protocol = (Protocol) a.get(id);
        if (protocol != null) {
            return protocol;
        }
        if ("http".equals(id)) {
            Protocol protocol2 = new Protocol("http", DefaultProtocolSocketFactory.a(), 80);
            registerProtocol("http", protocol2);
            return protocol2;
        } else if ("https".equals(id)) {
            Protocol protocol3 = new Protocol("https", (SecureProtocolSocketFactory) SSLProtocolSocketFactory.a(), 443);
            registerProtocol("https", protocol3);
            return protocol3;
        } else {
            throw new IllegalStateException(new StringBuffer().append("unsupported protocol: '").append(id).append("'").toString());
        }
    }

    public Protocol(String scheme, ProtocolSocketFactory factory, int defaultPort) {
        if (scheme == null) {
            throw new IllegalArgumentException("scheme is null");
        } else if (factory == null) {
            throw new IllegalArgumentException("socketFactory is null");
        } else if (defaultPort <= 0) {
            throw new IllegalArgumentException(new StringBuffer().append("port is invalid: ").append(defaultPort).toString());
        } else {
            this.b = scheme;
            this.c = factory;
            this.d = defaultPort;
            this.e = factory instanceof SecureProtocolSocketFactory;
        }
    }

    public Protocol(String scheme, SecureProtocolSocketFactory factory, int defaultPort) {
        this(scheme, (ProtocolSocketFactory) factory, defaultPort);
    }

    public int getDefaultPort() {
        return this.d;
    }

    public ProtocolSocketFactory getSocketFactory() {
        return this.c;
    }

    public String getScheme() {
        return this.b;
    }

    public boolean isSecure() {
        return this.e;
    }

    public int resolvePort(int port) {
        return port <= 0 ? getDefaultPort() : port;
    }

    public String toString() {
        return new StringBuffer().append(this.b).append(c.N).append(this.d).toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Protocol)) {
            return false;
        }
        Protocol p = (Protocol) obj;
        if (this.d != p.getDefaultPort() || !this.b.equalsIgnoreCase(p.getScheme()) || this.e != p.isSecure() || !this.c.equals(p.getSocketFactory())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.d), this.b.toLowerCase()), this.e), this.c);
    }
}
