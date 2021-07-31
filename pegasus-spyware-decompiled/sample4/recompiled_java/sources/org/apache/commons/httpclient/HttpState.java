package org.apache.commons.httpclient;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.httpclient.auth.AuthScope;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HttpState {
    public static final String PREEMPTIVE_DEFAULT = "false";
    public static final String PREEMPTIVE_PROPERTY = "httpclient.authentication.preemptive";
    static Class a;
    private static final Log d;
    private boolean b = false;
    private int c = -1;
    protected ArrayList cookies = new ArrayList();
    protected HashMap credMap = new HashMap();
    protected HashMap proxyCred = new HashMap();

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.HttpState");
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

    public synchronized void addCookie(Cookie cookie) {
        d.trace("enter HttpState.addCookie(Cookie)");
        if (cookie != null) {
            Iterator it = this.cookies.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (cookie.equals((Cookie) it.next())) {
                        it.remove();
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!cookie.isExpired()) {
                this.cookies.add(cookie);
            }
        }
    }

    public synchronized void addCookies(Cookie[] cookies2) {
        d.trace("enter HttpState.addCookies(Cookie[])");
        if (cookies2 != null) {
            for (Cookie cookie : cookies2) {
                addCookie(cookie);
            }
        }
    }

    public synchronized Cookie[] getCookies() {
        d.trace("enter HttpState.getCookies()");
        return (Cookie[]) this.cookies.toArray(new Cookie[this.cookies.size()]);
    }

    public synchronized Cookie[] getCookies(String domain, int port, String path, boolean secure) {
        ArrayList list;
        d.trace("enter HttpState.getCookies(String, int, String, boolean)");
        CookieSpec matcher = CookiePolicy.getDefaultSpec();
        list = new ArrayList(this.cookies.size());
        int m = this.cookies.size();
        for (int i = 0; i < m; i++) {
            Cookie cookie = (Cookie) this.cookies.get(i);
            if (matcher.match(domain, port, path, secure, cookie)) {
                list.add(cookie);
            }
        }
        return (Cookie[]) list.toArray(new Cookie[list.size()]);
    }

    public synchronized boolean purgeExpiredCookies() {
        d.trace("enter HttpState.purgeExpiredCookies()");
        return purgeExpiredCookies(new Date());
    }

    public synchronized boolean purgeExpiredCookies(Date date) {
        boolean removed;
        d.trace("enter HttpState.purgeExpiredCookies(Date)");
        removed = false;
        Iterator it = this.cookies.iterator();
        while (it.hasNext()) {
            if (((Cookie) it.next()).isExpired(date)) {
                it.remove();
                removed = true;
            }
        }
        return removed;
    }

    public int getCookiePolicy() {
        return this.c;
    }

    public void setAuthenticationPreemptive(boolean value) {
        this.b = value;
    }

    public boolean isAuthenticationPreemptive() {
        return this.b;
    }

    public void setCookiePolicy(int policy) {
        this.c = policy;
    }

    public synchronized void setCredentials(String realm, String host, Credentials credentials) {
        d.trace("enter HttpState.setCredentials(String, String, Credentials)");
        this.credMap.put(new AuthScope(host, -1, realm, AuthScope.ANY_SCHEME), credentials);
    }

    public synchronized void setCredentials(AuthScope authscope, Credentials credentials) {
        if (authscope == null) {
            throw new IllegalArgumentException("Authentication scope may not be null");
        }
        d.trace("enter HttpState.setCredentials(AuthScope, Credentials)");
        this.credMap.put(authscope, credentials);
    }

    private static Credentials a(HashMap map, AuthScope authscope) {
        Credentials creds = (Credentials) map.get(authscope);
        if (creds != null) {
            return creds;
        }
        int bestMatchFactor = -1;
        AuthScope bestMatch = null;
        for (AuthScope current : map.keySet()) {
            int factor = authscope.match(current);
            if (factor > bestMatchFactor) {
                bestMatchFactor = factor;
                bestMatch = current;
            }
        }
        if (bestMatch != null) {
            return (Credentials) map.get(bestMatch);
        }
        return creds;
    }

    public synchronized Credentials getCredentials(String realm, String host) {
        d.trace("enter HttpState.getCredentials(String, String");
        return a(this.credMap, new AuthScope(host, -1, realm, AuthScope.ANY_SCHEME));
    }

    public synchronized Credentials getCredentials(AuthScope authscope) {
        if (authscope == null) {
            throw new IllegalArgumentException("Authentication scope may not be null");
        }
        d.trace("enter HttpState.getCredentials(AuthScope)");
        return a(this.credMap, authscope);
    }

    public synchronized void setProxyCredentials(String realm, String proxyHost, Credentials credentials) {
        d.trace("enter HttpState.setProxyCredentials(String, String, Credentials");
        this.proxyCred.put(new AuthScope(proxyHost, -1, realm, AuthScope.ANY_SCHEME), credentials);
    }

    public synchronized void setProxyCredentials(AuthScope authscope, Credentials credentials) {
        if (authscope == null) {
            throw new IllegalArgumentException("Authentication scope may not be null");
        }
        d.trace("enter HttpState.setProxyCredentials(AuthScope, Credentials)");
        this.proxyCred.put(authscope, credentials);
    }

    public synchronized Credentials getProxyCredentials(String realm, String proxyHost) {
        d.trace("enter HttpState.getCredentials(String, String");
        return a(this.proxyCred, new AuthScope(proxyHost, -1, realm, AuthScope.ANY_SCHEME));
    }

    public synchronized Credentials getProxyCredentials(AuthScope authscope) {
        if (authscope == null) {
            throw new IllegalArgumentException("Authentication scope may not be null");
        }
        d.trace("enter HttpState.getProxyCredentials(AuthScope)");
        return a(this.proxyCred, authscope);
    }

    public synchronized String toString() {
        StringBuffer sbResult;
        sbResult = new StringBuffer();
        sbResult.append("[");
        sbResult.append(a(this.proxyCred));
        sbResult.append(" | ");
        sbResult.append(a(this.credMap));
        sbResult.append(" | ");
        sbResult.append(a(this.cookies));
        sbResult.append("]");
        return sbResult.toString();
    }

    private static String a(Map credMap2) {
        StringBuffer sbResult = new StringBuffer();
        for (Object key : credMap2.keySet()) {
            Credentials cred = (Credentials) credMap2.get(key);
            if (sbResult.length() > 0) {
                sbResult.append(", ");
            }
            sbResult.append(key);
            sbResult.append("#");
            sbResult.append(cred.toString());
        }
        return sbResult.toString();
    }

    private static String a(List cookies2) {
        StringBuffer sbResult = new StringBuffer();
        Iterator iter = cookies2.iterator();
        while (iter.hasNext()) {
            Cookie ck = (Cookie) iter.next();
            if (sbResult.length() > 0) {
                sbResult.append("#");
            }
            sbResult.append(ck.toExternalForm());
        }
        return sbResult.toString();
    }

    public void clearCredentials() {
        this.credMap.clear();
    }

    public void clearProxyCredentials() {
        this.proxyCred.clear();
    }

    public synchronized void clearCookies() {
        this.cookies.clear();
    }

    public void clear() {
        clearCookies();
        clearCredentials();
        clearProxyCredentials();
    }
}
