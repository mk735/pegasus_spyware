package org.apache.commons.httpclient.auth;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.httpclient.Credentials;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpConnection;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.HttpState;
import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public final class HttpAuthenticator {
    public static final String PROXY_AUTH = "Proxy-Authenticate";
    public static final String PROXY_AUTH_RESP = "Proxy-Authorization";
    public static final String WWW_AUTH = "WWW-Authenticate";
    public static final String WWW_AUTH_RESP = "Authorization";
    static Class a;
    private static final Log b;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.auth.HttpAuthenticator");
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

    public static AuthScheme selectAuthScheme(Header[] challenges) throws MalformedChallengeException {
        b.trace("enter HttpAuthenticator.selectAuthScheme(Header[])");
        if (challenges == null) {
            throw new IllegalArgumentException("Array of challenges may not be null");
        } else if (challenges.length == 0) {
            throw new IllegalArgumentException("Array of challenges may not be empty");
        } else {
            Map challengemap = new HashMap(challenges.length);
            for (Header header : challenges) {
                String challenge = header.getValue();
                challengemap.put(AuthChallengeParser.extractScheme(challenge), challenge);
            }
            String challenge2 = (String) challengemap.get("ntlm");
            if (challenge2 != null) {
                return new NTLMScheme(challenge2);
            }
            String challenge3 = (String) challengemap.get("digest");
            if (challenge3 != null) {
                return new DigestScheme(challenge3);
            }
            String challenge4 = (String) challengemap.get(AuthState.PREEMPTIVE_AUTH_SCHEME);
            if (challenge4 != null) {
                return new BasicScheme(challenge4);
            }
            throw new UnsupportedOperationException(new StringBuffer().append("Authentication scheme(s) not supported: ").append(challengemap.toString()).toString());
        }
    }

    private static boolean a(HttpMethod method, HttpConnection conn, HttpState state, boolean proxy) throws AuthenticationException {
        if (method == null) {
            throw new IllegalArgumentException("HTTP method may not be null");
        } else if (state == null) {
            throw new IllegalArgumentException("HTTP state may not be null");
        } else {
            String host = null;
            if (conn != null) {
                host = proxy ? conn.getProxyHost() : conn.getHost();
            }
            Credentials credentials = proxy ? state.getProxyCredentials(null, host) : state.getCredentials(null, host);
            if (credentials == null) {
                return false;
            }
            if (!(credentials instanceof UsernamePasswordCredentials)) {
                throw new InvalidCredentialsException(new StringBuffer().append("Credentials cannot be used for basic authentication: ").append(credentials.toString()).toString());
            }
            String auth = BasicScheme.authenticate((UsernamePasswordCredentials) credentials, method.getParams().getCredentialCharset());
            if (auth == null) {
                return false;
            }
            method.addRequestHeader(new Header(proxy ? PROXY_AUTH_RESP : WWW_AUTH_RESP, auth, true));
            return true;
        }
    }

    public static boolean authenticateDefault(HttpMethod method, HttpConnection conn, HttpState state) throws AuthenticationException {
        b.trace("enter HttpAuthenticator.authenticateDefault(HttpMethod, HttpConnection, HttpState)");
        return a(method, conn, state, false);
    }

    public static boolean authenticateProxyDefault(HttpMethod method, HttpConnection conn, HttpState state) throws AuthenticationException {
        b.trace("enter HttpAuthenticator.authenticateProxyDefault(HttpMethod, HttpState)");
        return a(method, conn, state, true);
    }

    private static boolean a(AuthScheme authscheme, HttpMethod method, HttpConnection conn, HttpState state, boolean proxy) throws AuthenticationException {
        if (authscheme == null) {
            throw new IllegalArgumentException("Authentication scheme may not be null");
        } else if (method == null) {
            throw new IllegalArgumentException("HTTP method may not be null");
        } else if (state == null) {
            throw new IllegalArgumentException("HTTP state may not be null");
        } else {
            String host = null;
            if (conn != null) {
                if (proxy) {
                    host = conn.getProxyHost();
                } else {
                    host = method.getParams().getVirtualHost();
                    if (host == null) {
                        host = conn.getHost();
                    }
                }
            }
            String realm = authscheme.getRealm();
            if (b.isDebugEnabled()) {
                StringBuffer buffer = new StringBuffer();
                buffer.append("Using credentials for ");
                if (realm == null) {
                    buffer.append(CookiePolicy.DEFAULT);
                } else {
                    buffer.append('\'');
                    buffer.append(realm);
                    buffer.append('\'');
                }
                buffer.append(" authentication realm at ");
                buffer.append(host);
                b.debug(buffer.toString());
            }
            Credentials credentials = proxy ? state.getProxyCredentials(realm, host) : state.getCredentials(realm, host);
            if (credentials == null) {
                StringBuffer buffer2 = new StringBuffer();
                buffer2.append("No credentials available for the ");
                if (realm == null) {
                    buffer2.append(CookiePolicy.DEFAULT);
                } else {
                    buffer2.append('\'');
                    buffer2.append(realm);
                    buffer2.append('\'');
                }
                buffer2.append(" authentication realm at ");
                buffer2.append(host);
                throw new CredentialsNotAvailableException(buffer2.toString());
            }
            String auth = authscheme.authenticate(credentials, method);
            if (auth == null) {
                return false;
            }
            method.addRequestHeader(new Header(proxy ? PROXY_AUTH_RESP : WWW_AUTH_RESP, auth, true));
            return true;
        }
    }

    public static boolean authenticate(AuthScheme authscheme, HttpMethod method, HttpConnection conn, HttpState state) throws AuthenticationException {
        b.trace("enter HttpAuthenticator.authenticate(AuthScheme, HttpMethod, HttpConnection, HttpState)");
        return a(authscheme, method, conn, state, false);
    }

    public static boolean authenticateProxy(AuthScheme authscheme, HttpMethod method, HttpConnection conn, HttpState state) throws AuthenticationException {
        b.trace("enter HttpAuthenticator.authenticateProxy(AuthScheme, HttpMethod, HttpState)");
        return a(authscheme, method, conn, state, true);
    }
}
