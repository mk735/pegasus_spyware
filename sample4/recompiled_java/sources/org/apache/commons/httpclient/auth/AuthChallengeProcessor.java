package org.apache.commons.httpclient.auth;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.httpclient.params.HttpParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public final class AuthChallengeProcessor {
    static Class a;
    private static final Log b;
    private HttpParams c = null;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.auth.AuthChallengeProcessor");
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

    public AuthChallengeProcessor(HttpParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameter collection may not be null");
        }
        this.c = params;
    }

    public final AuthScheme selectAuthScheme(Map challenges) throws AuthChallengeException {
        if (challenges == null) {
            throw new IllegalArgumentException("Challenge map may not be null");
        }
        Collection authPrefs = (Collection) this.c.getParameter(AuthPolicy.AUTH_SCHEME_PRIORITY);
        if (authPrefs == null || authPrefs.isEmpty()) {
            authPrefs = AuthPolicy.getDefaultAuthPrefs();
        }
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("Supported authentication schemes in the order of preference: ").append(authPrefs).toString());
        }
        AuthScheme authscheme = null;
        Iterator item = authPrefs.iterator();
        while (true) {
            if (!item.hasNext()) {
                break;
            }
            String id = (String) item.next();
            if (((String) challenges.get(id.toLowerCase())) != null) {
                if (b.isInfoEnabled()) {
                    b.info(new StringBuffer().append(id).append(" authentication scheme selected").toString());
                }
                try {
                    authscheme = AuthPolicy.getAuthScheme(id);
                } catch (IllegalStateException e) {
                    throw new AuthChallengeException(e.getMessage());
                }
            } else if (b.isDebugEnabled()) {
                b.debug(new StringBuffer().append("Challenge for ").append(id).append(" authentication scheme not available").toString());
            }
        }
        if (authscheme != null) {
            return authscheme;
        }
        throw new AuthChallengeException(new StringBuffer().append("Unable to respond to any of these challenges: ").append(challenges).toString());
    }

    public final AuthScheme processChallenge(AuthState state, Map challenges) throws MalformedChallengeException, AuthenticationException {
        if (state == null) {
            throw new IllegalArgumentException("Authentication state may not be null");
        } else if (challenges == null) {
            throw new IllegalArgumentException("Challenge map may not be null");
        } else {
            if (state.isPreemptive() || state.getAuthScheme() == null) {
                state.setAuthScheme(selectAuthScheme(challenges));
            }
            AuthScheme authscheme = state.getAuthScheme();
            String id = authscheme.getSchemeName();
            if (b.isDebugEnabled()) {
                b.debug(new StringBuffer().append("Using authentication scheme: ").append(id).toString());
            }
            String challenge = (String) challenges.get(id.toLowerCase());
            if (challenge == null) {
                throw new AuthenticationException(new StringBuffer().append(id).append(" authorization challenge expected, but not found").toString());
            }
            authscheme.processChallenge(challenge);
            b.debug("Authorization challenge processed");
            return authscheme;
        }
    }
}
