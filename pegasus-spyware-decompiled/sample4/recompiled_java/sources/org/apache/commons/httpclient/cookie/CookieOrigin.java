package org.apache.commons.httpclient.cookie;

public final class CookieOrigin {
    private final String a;
    private final int b;
    private final String c;
    private final boolean d;

    public CookieOrigin(String host, int port, String path, boolean secure) {
        if (host == null) {
            throw new IllegalArgumentException("Host of origin may not be null");
        } else if (host.trim().equals("")) {
            throw new IllegalArgumentException("Host of origin may not be blank");
        } else if (port < 0) {
            throw new IllegalArgumentException(new StringBuffer().append("Invalid port: ").append(port).toString());
        } else if (path == null) {
            throw new IllegalArgumentException("Path of origin may not be null.");
        } else {
            this.a = host;
            this.b = port;
            this.c = path;
            this.d = secure;
        }
    }

    public final String getHost() {
        return this.a;
    }

    public final String getPath() {
        return this.c;
    }

    public final int getPort() {
        return this.b;
    }

    public final boolean isSecure() {
        return this.d;
    }
}
