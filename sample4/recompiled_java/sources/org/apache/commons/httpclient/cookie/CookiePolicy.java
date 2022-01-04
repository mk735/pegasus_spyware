package org.apache.commons.httpclient.cookie;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class CookiePolicy {
    public static final String BROWSER_COMPATIBILITY = "compatibility";
    public static final int COMPATIBILITY = 0;
    public static final String DEFAULT = "default";
    public static final String IGNORE_COOKIES = "ignoreCookies";
    protected static final Log LOG;
    public static final String NETSCAPE = "netscape";
    public static final int NETSCAPE_DRAFT = 1;
    public static final int RFC2109 = 2;
    public static final int RFC2965 = 3;
    public static final String RFC_2109 = "rfc2109";
    public static final String RFC_2965 = "rfc2965";
    static Class a;
    static Class b;
    static Class c;
    static Class d;
    static Class e;
    static Class f;
    private static Map g = Collections.synchronizedMap(new HashMap());
    private static int h = 2;

    static {
        Class cls;
        Class cls2;
        Class cls3;
        Class cls4;
        Class cls5;
        Class cls6;
        Class cls7;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.cookie.RFC2109Spec");
            a = cls;
        } else {
            cls = a;
        }
        registerCookieSpec(DEFAULT, cls);
        if (a == null) {
            cls2 = a("org.apache.commons.httpclient.cookie.RFC2109Spec");
            a = cls2;
        } else {
            cls2 = a;
        }
        registerCookieSpec(RFC_2109, cls2);
        if (b == null) {
            cls3 = a("org.apache.commons.httpclient.cookie.RFC2965Spec");
            b = cls3;
        } else {
            cls3 = b;
        }
        registerCookieSpec(RFC_2965, cls3);
        if (c == null) {
            cls4 = a("org.apache.commons.httpclient.cookie.CookieSpecBase");
            c = cls4;
        } else {
            cls4 = c;
        }
        registerCookieSpec(BROWSER_COMPATIBILITY, cls4);
        if (d == null) {
            cls5 = a("org.apache.commons.httpclient.cookie.NetscapeDraftSpec");
            d = cls5;
        } else {
            cls5 = d;
        }
        registerCookieSpec(NETSCAPE, cls5);
        if (e == null) {
            cls6 = a("org.apache.commons.httpclient.cookie.IgnoreCookiesSpec");
            e = cls6;
        } else {
            cls6 = e;
        }
        registerCookieSpec(IGNORE_COOKIES, cls6);
        if (f == null) {
            cls7 = a("org.apache.commons.httpclient.cookie.CookiePolicy");
            f = cls7;
        } else {
            cls7 = f;
        }
        LOG = LogFactory.getLog(cls7);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public static void registerCookieSpec(String id, Class clazz) {
        if (id == null) {
            throw new IllegalArgumentException("Id may not be null");
        } else if (clazz == null) {
            throw new IllegalArgumentException("Cookie spec class may not be null");
        } else {
            g.put(id.toLowerCase(), clazz);
        }
    }

    public static void unregisterCookieSpec(String id) {
        if (id == null) {
            throw new IllegalArgumentException("Id may not be null");
        }
        g.remove(id.toLowerCase());
    }

    public static CookieSpec getCookieSpec(String id) throws IllegalStateException {
        if (id == null) {
            throw new IllegalArgumentException("Id may not be null");
        }
        Class clazz = (Class) g.get(id.toLowerCase());
        if (clazz != null) {
            try {
                return (CookieSpec) clazz.newInstance();
            } catch (Exception e2) {
                LOG.error(new StringBuffer().append("Error initializing cookie spec: ").append(id).toString(), e2);
                throw new IllegalStateException(new StringBuffer().append(id).append(" cookie spec implemented by ").append(clazz.getName()).append(" could not be initialized").toString());
            }
        } else {
            throw new IllegalStateException(new StringBuffer().append("Unsupported cookie spec ").append(id).toString());
        }
    }

    public static int getDefaultPolicy() {
        return h;
    }

    public static void setDefaultPolicy(int policy) {
        h = policy;
    }

    public static CookieSpec getSpecByPolicy(int policy) {
        switch (policy) {
            case 0:
                return new CookieSpecBase();
            case 1:
                return new NetscapeDraftSpec();
            case 2:
                return new RFC2109Spec();
            case 3:
                return new RFC2965Spec();
            default:
                return getDefaultSpec();
        }
    }

    public static CookieSpec getDefaultSpec() {
        try {
            return getCookieSpec(DEFAULT);
        } catch (IllegalStateException e2) {
            LOG.warn("Default cookie policy is not registered");
            return new RFC2109Spec();
        }
    }

    public static CookieSpec getSpecByVersion(int ver) {
        switch (ver) {
            case 0:
                return new NetscapeDraftSpec();
            case 1:
                return new RFC2109Spec();
            default:
                return getDefaultSpec();
        }
    }

    public static CookieSpec getCompatibilitySpec() {
        return getSpecByPolicy(0);
    }

    public static String[] getRegisteredCookieSpecs() {
        return (String[]) g.keySet().toArray(new String[g.size()]);
    }
}
