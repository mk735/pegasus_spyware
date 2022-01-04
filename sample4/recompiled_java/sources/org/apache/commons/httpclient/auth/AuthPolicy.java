package org.apache.commons.httpclient.auth;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class AuthPolicy {
    public static final String AUTH_SCHEME_PRIORITY = "http.auth.scheme-priority";
    public static final String BASIC = "Basic";
    public static final String DIGEST = "Digest";
    protected static final Log LOG;
    public static final String NTLM = "NTLM";
    static Class a;
    static Class b;
    static Class c;
    static Class d;
    private static final HashMap e = new HashMap();
    private static final ArrayList f = new ArrayList();

    static {
        Class cls;
        Class cls2;
        Class cls3;
        Class cls4;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.auth.NTLMScheme");
            a = cls;
        } else {
            cls = a;
        }
        registerAuthScheme(NTLM, cls);
        if (b == null) {
            cls2 = a("org.apache.commons.httpclient.auth.DigestScheme");
            b = cls2;
        } else {
            cls2 = b;
        }
        registerAuthScheme(DIGEST, cls2);
        if (c == null) {
            cls3 = a("org.apache.commons.httpclient.auth.BasicScheme");
            c = cls3;
        } else {
            cls3 = c;
        }
        registerAuthScheme(BASIC, cls3);
        if (d == null) {
            cls4 = a("org.apache.commons.httpclient.auth.AuthPolicy");
            d = cls4;
        } else {
            cls4 = d;
        }
        LOG = LogFactory.getLog(cls4);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public static synchronized void registerAuthScheme(String id, Class clazz) {
        synchronized (AuthPolicy.class) {
            if (id == null) {
                throw new IllegalArgumentException("Id may not be null");
            } else if (clazz == null) {
                throw new IllegalArgumentException("Authentication scheme class may not be null");
            } else {
                e.put(id.toLowerCase(), clazz);
                f.add(id.toLowerCase());
            }
        }
    }

    public static synchronized void unregisterAuthScheme(String id) {
        synchronized (AuthPolicy.class) {
            if (id == null) {
                throw new IllegalArgumentException("Id may not be null");
            }
            e.remove(id.toLowerCase());
            f.remove(id.toLowerCase());
        }
    }

    public static synchronized AuthScheme getAuthScheme(String id) throws IllegalStateException {
        AuthScheme authScheme;
        synchronized (AuthPolicy.class) {
            if (id == null) {
                throw new IllegalArgumentException("Id may not be null");
            }
            Class clazz = (Class) e.get(id.toLowerCase());
            if (clazz != null) {
                try {
                    authScheme = (AuthScheme) clazz.newInstance();
                } catch (Exception e2) {
                    LOG.error(new StringBuffer().append("Error initializing authentication scheme: ").append(id).toString(), e2);
                    throw new IllegalStateException(new StringBuffer().append(id).append(" authentication scheme implemented by ").append(clazz.getName()).append(" could not be initialized").toString());
                }
            } else {
                throw new IllegalStateException(new StringBuffer().append("Unsupported authentication scheme ").append(id).toString());
            }
        }
        return authScheme;
    }

    public static synchronized List getDefaultAuthPrefs() {
        List list;
        synchronized (AuthPolicy.class) {
            list = (List) f.clone();
        }
        return list;
    }
}
