package org.apache.commons.httpclient.auth;

import com.lenovo.lps.sus.c.c;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.httpclient.Credentials;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class BasicScheme extends RFC2617Scheme {
    static Class a;
    private static final Log b;
    private boolean c = false;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.auth.BasicScheme");
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

    public BasicScheme() {
    }

    public BasicScheme(String challenge) throws MalformedChallengeException {
        super(challenge);
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getSchemeName() {
        return AuthState.PREEMPTIVE_AUTH_SCHEME;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme, org.apache.commons.httpclient.auth.RFC2617Scheme
    public void processChallenge(String challenge) throws MalformedChallengeException {
        super.processChallenge(challenge);
        this.c = true;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public boolean isComplete() {
        return this.c;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String authenticate(Credentials credentials, String method, String uri) throws AuthenticationException {
        b.trace("enter BasicScheme.authenticate(Credentials, String, String)");
        try {
            return authenticate((UsernamePasswordCredentials) credentials);
        } catch (ClassCastException e) {
            throw new InvalidCredentialsException(new StringBuffer().append("Credentials cannot be used for basic authentication: ").append(credentials.getClass().getName()).toString());
        }
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String authenticate(Credentials credentials, HttpMethod method) throws AuthenticationException {
        b.trace("enter BasicScheme.authenticate(Credentials, HttpMethod)");
        if (method == null) {
            throw new IllegalArgumentException("Method may not be null");
        }
        try {
            return authenticate((UsernamePasswordCredentials) credentials, method.getParams().getCredentialCharset());
        } catch (ClassCastException e) {
            throw new InvalidCredentialsException(new StringBuffer().append("Credentials cannot be used for basic authentication: ").append(credentials.getClass().getName()).toString());
        }
    }

    public static String authenticate(UsernamePasswordCredentials credentials) {
        return authenticate(credentials, "ISO-8859-1");
    }

    public static String authenticate(UsernamePasswordCredentials credentials, String charset) {
        b.trace("enter BasicScheme.authenticate(UsernamePasswordCredentials, String)");
        if (credentials == null) {
            throw new IllegalArgumentException("Credentials may not be null");
        } else if (charset == null || charset.length() == 0) {
            throw new IllegalArgumentException("charset may not be null or empty");
        } else {
            StringBuffer buffer = new StringBuffer();
            buffer.append(credentials.getUserName());
            buffer.append(c.N);
            buffer.append(credentials.getPassword());
            return new StringBuffer().append("Basic ").append(EncodingUtil.getAsciiString(Base64.encodeBase64(EncodingUtil.getBytes(buffer.toString(), charset)))).toString();
        }
    }
}
