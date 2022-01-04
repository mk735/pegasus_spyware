package org.apache.commons.httpclient;

import QQPIM.ECloudCMDID;
import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.commons.httpclient.auth.AuthChallengeException;
import org.apache.commons.httpclient.auth.AuthChallengeParser;
import org.apache.commons.httpclient.auth.AuthChallengeProcessor;
import org.apache.commons.httpclient.auth.AuthScheme;
import org.apache.commons.httpclient.auth.AuthScope;
import org.apache.commons.httpclient.auth.AuthState;
import org.apache.commons.httpclient.auth.AuthenticationException;
import org.apache.commons.httpclient.auth.CredentialsNotAvailableException;
import org.apache.commons.httpclient.auth.CredentialsProvider;
import org.apache.commons.httpclient.auth.HttpAuthenticator;
import org.apache.commons.httpclient.auth.MalformedChallengeException;
import org.apache.commons.httpclient.params.HostParams;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* access modifiers changed from: package-private */
/* compiled from: HttpMethodDirector */
public class c {
    static Class a;
    private static final Log b;
    private ConnectMethod c;
    private HttpState d;
    private HostConfiguration e;
    private HttpConnectionManager f;
    private HttpClientParams g;
    private HttpConnection h;
    private boolean i = false;
    private AuthChallengeProcessor j = null;
    private Set k = null;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.c");
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

    public c(HttpConnectionManager connectionManager, HostConfiguration hostConfiguration, HttpClientParams params, HttpState state) {
        this.f = connectionManager;
        this.e = hostConfiguration;
        this.g = params;
        this.d = state;
        this.j = new AuthChallengeProcessor(this.g);
    }

    /* JADX INFO: finally extract failed */
    public final void a(HttpMethod method) throws IOException, HttpException {
        boolean z;
        boolean z2;
        AuthState hostAuthState;
        AuthScheme authScheme;
        if (method == null) {
            throw new IllegalArgumentException("Method may not be null");
        }
        this.e.getParams().setDefaults(this.g);
        method.getParams().setDefaults(this.e.getParams());
        Collection<Header> defaults = (Collection) this.e.getParams().getParameter(HostParams.DEFAULT_HEADERS);
        if (defaults != null) {
            for (Header header : defaults) {
                method.addRequestHeader(header);
            }
        }
        try {
            int maxRedirects = this.g.getIntParameter(HttpClientParams.MAX_REDIRECTS, 100);
            int redirectCount = 0;
            while (true) {
                if (this.h != null && !this.e.hostEquals(this.h)) {
                    this.h.setLocked(false);
                    this.h.releaseConnection();
                    this.h = null;
                }
                if (this.h == null) {
                    this.h = this.f.getConnectionWithTimeout(this.e, this.g.getConnectionManagerTimeout());
                    this.h.setLocked(true);
                    if (this.g.isAuthenticationPreemptive() || this.d.isAuthenticationPreemptive()) {
                        b.debug("Preemptively sending default basic credentials");
                        method.getHostAuthState().setPreemptive();
                        method.getHostAuthState().setAuthAttempted(true);
                        if (this.h.isProxied() && !this.h.isSecure()) {
                            method.getProxyAuthState().setPreemptive();
                            method.getProxyAuthState().setAuthAttempted(true);
                        }
                    }
                }
                try {
                    if (this.h.isProxied() && !this.h.isSecure()) {
                        b(method);
                    }
                    if (a(method, HttpAuthenticator.WWW_AUTH_RESP) && (authScheme = (hostAuthState = method.getHostAuthState()).getAuthScheme()) != null && (hostAuthState.isAuthRequested() || !authScheme.isConnectionBased())) {
                        String virtualHost = method.getParams().getVirtualHost();
                        if (virtualHost == null) {
                            virtualHost = this.h.getHost();
                        }
                        AuthScope authScope = new AuthScope(virtualHost, this.h.getPort(), authScheme.getRealm(), authScheme.getSchemeName());
                        if (b.isDebugEnabled()) {
                            b.debug(new StringBuffer().append("Authenticating with ").append(authScope).toString());
                        }
                        Credentials credentials = this.d.getCredentials(authScope);
                        if (credentials != null) {
                            String authenticate = authScheme.authenticate(credentials, method);
                            if (authenticate != null) {
                                method.addRequestHeader(new Header(HttpAuthenticator.WWW_AUTH_RESP, authenticate, true));
                            }
                        } else if (b.isWarnEnabled()) {
                            b.warn(new StringBuffer().append("Required credentials not available for ").append(authScope).toString());
                            if (method.getHostAuthState().isPreemptive()) {
                                b.warn("Preemptive authentication requested but no default credentials available");
                            }
                        }
                    }
                } catch (AuthenticationException e2) {
                    b.error(e2.getMessage(), e2);
                }
                d(method);
                if (this.c != null) {
                    b.debug("CONNECT failed, fake the response for the original method");
                    if (method instanceof HttpMethodBase) {
                        ((HttpMethodBase) method).a(this.c.getStatusLine(), this.c.getResponseHeaderGroup(), this.c.getResponseBodyAsStream());
                        method.getProxyAuthState().setAuthScheme(this.c.getProxyAuthState().getAuthScheme());
                        this.c = null;
                    } else {
                        this.i = true;
                        b.warn("Unable to fake response on method as it is not derived from HttpMethodBase.");
                    }
                } else {
                    boolean retry = false;
                    switch (method.getStatusCode()) {
                        case 301:
                        case 302:
                        case 303:
                        case 307:
                            b.debug("Redirect required");
                            if (method.getFollowRedirects()) {
                                z = true;
                                break;
                            } else {
                                z = false;
                                break;
                            }
                        case 304:
                        case 305:
                        case ECloudCMDID._ECCID_SetSoftBlackWhite:
                        default:
                            z = false;
                            break;
                    }
                    if (z && e(method)) {
                        retry = true;
                        redirectCount++;
                        if (redirectCount >= maxRedirects) {
                            b.error("Narrowly avoided an infinite loop in execute");
                            throw new RedirectException(new StringBuffer().append("Maximum redirects (").append(maxRedirects).append(") exceeded").toString());
                        } else if (b.isDebugEnabled()) {
                            b.debug(new StringBuffer().append("Execute redirect ").append(redirectCount).append(" of ").append(maxRedirects).toString());
                        }
                    }
                    method.getHostAuthState().setAuthRequested(method.getStatusCode() == 401);
                    method.getProxyAuthState().setAuthRequested(method.getStatusCode() == 407);
                    if (method.getHostAuthState().isAuthRequested() || method.getProxyAuthState().isAuthRequested()) {
                        b.debug("Authorization required");
                        if (method.getDoAuthentication()) {
                            z2 = true;
                        } else {
                            b.info("Authentication requested but doAuthentication is disabled");
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    if (z2 && f(method)) {
                        b.debug("Retry authentication");
                        retry = true;
                    }
                    if (retry) {
                        if (method.getResponseBodyAsStream() != null) {
                            method.getResponseBodyAsStream().close();
                        }
                    }
                }
            }
            if (this.h != null) {
                this.h.setLocked(false);
            }
            if ((this.i || method.getResponseBodyAsStream() == null) && this.h != null) {
                this.h.releaseConnection();
            }
        } catch (Throwable th) {
            if (this.h != null) {
                this.h.setLocked(false);
            }
            if ((this.i || method.getResponseBodyAsStream() == null) && this.h != null) {
                this.h.releaseConnection();
            }
            throw th;
        }
    }

    private static boolean a(HttpMethod method, String name) {
        Header[] authheaders = method.getRequestHeaders(name);
        boolean clean = true;
        for (Header authheader : authheaders) {
            if (authheader.isAutogenerated()) {
                method.removeRequestHeader(authheader);
            } else {
                clean = false;
            }
        }
        return clean;
    }

    private void b(HttpMethod method) throws AuthenticationException {
        AuthState authstate;
        AuthScheme authscheme;
        if (!a(method, HttpAuthenticator.PROXY_AUTH_RESP) || (authscheme = (authstate = method.getProxyAuthState()).getAuthScheme()) == null) {
            return;
        }
        if (authstate.isAuthRequested() || !authscheme.isConnectionBased()) {
            AuthScope authscope = new AuthScope(this.h.getProxyHost(), this.h.getProxyPort(), authscheme.getRealm(), authscheme.getSchemeName());
            if (b.isDebugEnabled()) {
                b.debug(new StringBuffer().append("Authenticating with ").append(authscope).toString());
            }
            Credentials credentials = this.d.getProxyCredentials(authscope);
            if (credentials != null) {
                String authstring = authscheme.authenticate(credentials, method);
                if (authstring != null) {
                    method.addRequestHeader(new Header(HttpAuthenticator.PROXY_AUTH_RESP, authstring, true));
                }
            } else if (b.isWarnEnabled()) {
                b.warn(new StringBuffer().append("Required proxy credentials not available for ").append(authscope).toString());
                if (method.getProxyAuthState().isPreemptive()) {
                    b.warn("Preemptive authentication requested but no default proxy credentials available");
                }
            }
        }
    }

    private void c(HttpMethod method) throws IOException {
        int timeout = 0;
        Object param = method.getParams().getParameter("http.socket.timeout");
        if (param == null) {
            param = this.h.getParams().getParameter("http.socket.timeout");
        }
        if (param != null) {
            timeout = ((Integer) param).intValue();
        }
        this.h.setSocketTimeout(timeout);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c1, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00c8, code lost:
        if (r9.h.isOpen() != false) goto L_0x00ca;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00ca, code lost:
        org.apache.commons.httpclient.c.b.debug("Closing the connection.");
        r9.h.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00d6, code lost:
        r9.i = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00d8, code lost:
        throw r7;
     */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00c1 A[ExcHandler: RuntimeException (r7v0 'e' java.lang.RuntimeException A[CUSTOM_DECLARE]), Splitter:B:2:0x0004] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(org.apache.commons.httpclient.HttpMethod r10) throws java.io.IOException, org.apache.commons.httpclient.HttpException {
        /*
        // Method dump skipped, instructions count: 330
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.httpclient.c.d(org.apache.commons.httpclient.HttpMethod):void");
    }

    private boolean a() throws IOException, HttpException {
        int code;
        boolean z;
        this.c = new ConnectMethod(this.e);
        this.c.getParams().setDefaults(this.e.getParams());
        while (true) {
            if (!this.h.isOpen()) {
                this.h.open();
            }
            if (this.g.isAuthenticationPreemptive() || this.d.isAuthenticationPreemptive()) {
                b.debug("Preemptively sending default basic credentials");
                this.c.getProxyAuthState().setPreemptive();
                this.c.getProxyAuthState().setAuthAttempted(true);
            }
            try {
                b(this.c);
            } catch (AuthenticationException e2) {
                b.error(e2.getMessage(), e2);
            }
            c(this.c);
            this.c.execute(this.d, this.h);
            code = this.c.getStatusCode();
            boolean retry = false;
            AuthState authstate = this.c.getProxyAuthState();
            if (code == 407) {
                z = true;
            } else {
                z = false;
            }
            authstate.setAuthRequested(z);
            if (authstate.isAuthRequested() && f(this.c)) {
                retry = true;
            }
            if (!retry) {
                break;
            } else if (this.c.getResponseBodyAsStream() != null) {
                this.c.getResponseBodyAsStream().close();
            }
        }
        if (code < 200 || code >= 300) {
            this.h.close();
            return false;
        }
        this.h.tunnelCreated();
        this.c = null;
        return true;
    }

    private boolean e(HttpMethod method) throws RedirectException {
        URIException ex;
        URI redirectUri;
        Header locationHeader = method.getResponseHeader("location");
        if (locationHeader == null) {
            b.error(new StringBuffer().append("Received redirect response ").append(method.getStatusCode()).append(" but no location header").toString());
            return false;
        }
        String location = locationHeader.getValue();
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("Redirect requested to location '").append(location).append("'").toString());
        }
        try {
            URI currentUri = new URI(this.h.getProtocol().getScheme(), (String) null, this.h.getHost(), this.h.getPort(), method.getPath());
            try {
                URI redirectUri2 = new URI(location, true, method.getParams().getUriCharset());
                try {
                    if (!redirectUri2.isRelativeURI()) {
                        method.getParams().setDefaults(this.g);
                        redirectUri = redirectUri2;
                    } else if (this.g.isParameterTrue(HttpClientParams.REJECT_RELATIVE_REDIRECT)) {
                        b.warn(new StringBuffer().append("Relative redirect location '").append(location).append("' not allowed").toString());
                        return false;
                    } else {
                        b.debug("Redirect URI is not absolute - parsing as relative");
                        redirectUri = new URI(currentUri, redirectUri2);
                    }
                    method.setURI(redirectUri);
                    this.e.setHost(redirectUri);
                    if (this.g.isParameterFalse(HttpClientParams.ALLOW_CIRCULAR_REDIRECTS)) {
                        if (this.k == null) {
                            this.k = new HashSet();
                        }
                        this.k.add(currentUri);
                        try {
                            if (redirectUri.hasQuery()) {
                                redirectUri.setQuery(null);
                            }
                            if (this.k.contains(redirectUri)) {
                                throw new CircularRedirectException(new StringBuffer().append("Circular redirect to '").append(redirectUri).append("'").toString());
                            }
                        } catch (URIException e2) {
                            return false;
                        }
                    }
                    if (b.isDebugEnabled()) {
                        b.debug(new StringBuffer().append("Redirecting from '").append(currentUri.getEscapedURI()).append("' to '").append(redirectUri.getEscapedURI()).toString());
                    }
                    method.getHostAuthState().invalidate();
                    return true;
                } catch (URIException e3) {
                    ex = e3;
                    throw new InvalidRedirectLocationException(new StringBuffer().append("Invalid redirect location: ").append(location).toString(), location, ex);
                }
            } catch (URIException e4) {
                ex = e4;
                throw new InvalidRedirectLocationException(new StringBuffer().append("Invalid redirect location: ").append(location).toString(), location, ex);
            }
        } catch (URIException e5) {
            ex = e5;
            throw new InvalidRedirectLocationException(new StringBuffer().append("Invalid redirect location: ").append(location).toString(), location, ex);
        }
    }

    private boolean f(HttpMethod method) {
        b.trace("enter HttpMethodBase.processAuthenticationResponse(HttpState, HttpConnection)");
        try {
            switch (method.getStatusCode()) {
                case 401:
                    return g(method);
                case HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED:
                    return h(method);
                default:
                    return false;
            }
        } catch (Exception e2) {
            if (!b.isErrorEnabled()) {
                return false;
            }
            b.error(e2.getMessage(), e2);
            return false;
        }
    }

    private boolean g(HttpMethod method) throws MalformedChallengeException, AuthenticationException {
        AuthState authstate = method.getHostAuthState();
        Map challenges = AuthChallengeParser.parseChallenges(method.getResponseHeaders(HttpAuthenticator.WWW_AUTH));
        if (challenges.isEmpty()) {
            b.debug("Authentication challenge(s) not found");
            return false;
        }
        AuthScheme authscheme = null;
        try {
            authscheme = this.j.processChallenge(authstate, challenges);
        } catch (AuthChallengeException e2) {
            if (b.isWarnEnabled()) {
                b.warn(e2.getMessage());
            }
        }
        if (authscheme == null) {
            return false;
        }
        String host = method.getParams().getVirtualHost();
        if (host == null) {
            host = this.h.getHost();
        }
        AuthScope authscope = new AuthScope(host, this.h.getPort(), authscheme.getRealm(), authscheme.getSchemeName());
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("Authentication scope: ").append(authscope).toString());
        }
        if (!authstate.isAuthAttempted() || !authscheme.isComplete()) {
            authstate.setAuthAttempted(true);
            Credentials credentials = this.d.getCredentials(authscope);
            if (credentials == null) {
                credentials = a(authscheme, method.getParams(), authscope);
            }
            if (credentials != null) {
                return true;
            }
            if (!b.isInfoEnabled()) {
                return false;
            }
            b.info(new StringBuffer().append("No credentials available for ").append(authscope).toString());
            return false;
        } else if (a(authscheme, method.getParams(), authscope) != null) {
            return true;
        } else {
            if (!b.isInfoEnabled()) {
                return false;
            }
            b.info(new StringBuffer().append("Failure authenticating with ").append(authscope).toString());
            return false;
        }
    }

    private boolean h(HttpMethod method) throws MalformedChallengeException, AuthenticationException {
        AuthState authstate = method.getProxyAuthState();
        Map proxyChallenges = AuthChallengeParser.parseChallenges(method.getResponseHeaders(HttpAuthenticator.PROXY_AUTH));
        if (proxyChallenges.isEmpty()) {
            b.debug("Proxy authentication challenge(s) not found");
            return false;
        }
        AuthScheme authscheme = null;
        try {
            authscheme = this.j.processChallenge(authstate, proxyChallenges);
        } catch (AuthChallengeException e2) {
            if (b.isWarnEnabled()) {
                b.warn(e2.getMessage());
            }
        }
        if (authscheme == null) {
            return false;
        }
        AuthScope authscope = new AuthScope(this.h.getProxyHost(), this.h.getProxyPort(), authscheme.getRealm(), authscheme.getSchemeName());
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("Proxy authentication scope: ").append(authscope).toString());
        }
        if (!authstate.isAuthAttempted() || !authscheme.isComplete()) {
            authstate.setAuthAttempted(true);
            Credentials credentials = this.d.getProxyCredentials(authscope);
            if (credentials == null) {
                credentials = b(authscheme, method.getParams(), authscope);
            }
            if (credentials != null) {
                return true;
            }
            if (!b.isInfoEnabled()) {
                return false;
            }
            b.info(new StringBuffer().append("No credentials available for ").append(authscope).toString());
            return false;
        } else if (b(authscheme, method.getParams(), authscope) != null) {
            return true;
        } else {
            if (!b.isInfoEnabled()) {
                return false;
            }
            b.info(new StringBuffer().append("Failure authenticating with ").append(authscope).toString());
            return false;
        }
    }

    private Credentials a(AuthScheme authScheme, HttpParams params, AuthScope authscope) {
        b.debug("Credentials required");
        Credentials creds = null;
        CredentialsProvider credProvider = (CredentialsProvider) params.getParameter(CredentialsProvider.PROVIDER);
        if (credProvider != null) {
            try {
                creds = credProvider.getCredentials(authScheme, authscope.getHost(), authscope.getPort(), false);
            } catch (CredentialsNotAvailableException e2) {
                b.warn(e2.getMessage());
            }
            if (creds != null) {
                this.d.setCredentials(authscope, creds);
                if (b.isDebugEnabled()) {
                    b.debug(new StringBuffer().append(authscope).append(" new credentials given").toString());
                }
            }
        } else {
            b.debug("Credentials provider not available");
        }
        return creds;
    }

    private Credentials b(AuthScheme authScheme, HttpParams params, AuthScope authscope) {
        b.debug("Proxy credentials required");
        Credentials creds = null;
        CredentialsProvider credProvider = (CredentialsProvider) params.getParameter(CredentialsProvider.PROVIDER);
        if (credProvider != null) {
            try {
                creds = credProvider.getCredentials(authScheme, authscope.getHost(), authscope.getPort(), true);
            } catch (CredentialsNotAvailableException e2) {
                b.warn(e2.getMessage());
            }
            if (creds != null) {
                this.d.setProxyCredentials(authscope, creds);
                if (b.isDebugEnabled()) {
                    b.debug(new StringBuffer().append(authscope).append(" new credentials given").toString());
                }
            }
        } else {
            b.debug("Proxy credentials provider not available");
        }
        return creds;
    }
}
