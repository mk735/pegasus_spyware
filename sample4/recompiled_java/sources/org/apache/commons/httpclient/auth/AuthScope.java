package org.apache.commons.httpclient.auth;

import org.apache.commons.httpclient.util.LangUtils;

public class AuthScope {
    public static final AuthScope ANY = new AuthScope(ANY_HOST, -1, ANY_REALM, ANY_SCHEME);
    public static final String ANY_HOST = null;
    public static final int ANY_PORT = -1;
    public static final String ANY_REALM = null;
    public static final String ANY_SCHEME = null;
    private String a;
    private String b;
    private String c;
    private int d;

    public AuthScope(String host, int port, String realm, String scheme) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = -1;
        this.c = host == null ? ANY_HOST : host.toLowerCase();
        this.d = port < 0 ? -1 : port;
        this.b = realm == null ? ANY_REALM : realm;
        this.a = scheme == null ? ANY_SCHEME : scheme.toUpperCase();
    }

    public AuthScope(String host, int port, String realm) {
        this(host, port, realm, ANY_SCHEME);
    }

    public AuthScope(String host, int port) {
        this(host, port, ANY_REALM, ANY_SCHEME);
    }

    public AuthScope(AuthScope authscope) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = -1;
        if (authscope == null) {
            throw new IllegalArgumentException("Scope may not be null");
        }
        this.c = authscope.getHost();
        this.d = authscope.getPort();
        this.b = authscope.getRealm();
        this.a = authscope.getScheme();
    }

    public String getHost() {
        return this.c;
    }

    public int getPort() {
        return this.d;
    }

    public String getRealm() {
        return this.b;
    }

    public String getScheme() {
        return this.a;
    }

    private static boolean a(String p1, String p2) {
        if (p1 == null) {
            return p1 == p2;
        }
        return p1.equals(p2);
    }

    private static boolean a(int p1, int p2) {
        return p1 == p2;
    }

    public int match(AuthScope that) {
        int factor = 0;
        if (a(this.a, that.a)) {
            factor = 0 + 1;
        } else if (!(this.a == ANY_SCHEME || that.a == ANY_SCHEME)) {
            return -1;
        }
        if (a(this.b, that.b)) {
            factor += 2;
        } else if (!(this.b == ANY_REALM || that.b == ANY_REALM)) {
            return -1;
        }
        if (a(this.d, that.d)) {
            factor += 4;
        } else if (!(this.d == -1 || that.d == -1)) {
            return -1;
        }
        if (a(this.c, that.c)) {
            factor += 8;
        } else if (!(this.c == ANY_HOST || that.c == ANY_HOST)) {
            return -1;
        }
        return factor;
    }

    public boolean equals(Object o) {
        if (o == null) {
            return false;
        }
        if (o == this) {
            return true;
        }
        if (!(o instanceof AuthScope)) {
            return super.equals(o);
        }
        AuthScope that = (AuthScope) o;
        return a(this.c, that.c) && a(this.d, that.d) && a(this.b, that.b) && a(this.a, that.a);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        if (this.a != null) {
            buffer.append(this.a.toUpperCase());
            buffer.append(' ');
        }
        if (this.b != null) {
            buffer.append('\'');
            buffer.append(this.b);
            buffer.append('\'');
        } else {
            buffer.append("<any realm>");
        }
        if (this.c != null) {
            buffer.append('@');
            buffer.append(this.c);
            if (this.d >= 0) {
                buffer.append(':');
                buffer.append(this.d);
            }
        }
        return buffer.toString();
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.c), this.d), this.b), this.a);
    }
}
