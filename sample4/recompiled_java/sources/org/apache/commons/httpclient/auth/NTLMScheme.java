package org.apache.commons.httpclient.auth;

import org.apache.commons.httpclient.Credentials;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.NTCredentials;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class NTLMScheme implements AuthScheme {
    static Class a;
    private static final Log b;
    private String c;
    private int d;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.auth.NTLMScheme");
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

    public NTLMScheme() {
        this.c = null;
        this.d = 0;
    }

    public NTLMScheme(String challenge) throws MalformedChallengeException {
        this.c = null;
        processChallenge(challenge);
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public void processChallenge(String challenge) throws MalformedChallengeException {
        if (!AuthChallengeParser.extractScheme(challenge).equalsIgnoreCase(getSchemeName())) {
            throw new MalformedChallengeException(new StringBuffer().append("Invalid NTLM challenge: ").append(challenge).toString());
        }
        int i = challenge.indexOf(32);
        if (i != -1) {
            this.c = challenge.substring(i, challenge.length()).trim();
            this.d = 3;
            return;
        }
        this.c = "";
        if (this.d == 0) {
            this.d = 1;
        } else {
            this.d = Integer.MAX_VALUE;
        }
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public boolean isComplete() {
        return this.d == 4 || this.d == Integer.MAX_VALUE;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getSchemeName() {
        return "ntlm";
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getRealm() {
        return null;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getID() {
        return this.c;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getParameter(String name) {
        if (name != null) {
            return null;
        }
        throw new IllegalArgumentException("Parameter name may not be null");
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public boolean isConnectionBased() {
        return true;
    }

    public static String authenticate(NTCredentials credentials, String challenge) throws AuthenticationException {
        b.trace("enter NTLMScheme.authenticate(NTCredentials, String)");
        if (credentials == null) {
            throw new IllegalArgumentException("Credentials may not be null");
        }
        return new StringBuffer().append("NTLM ").append(new a().a(challenge, credentials.getUserName(), credentials.getPassword(), credentials.getHost(), credentials.getDomain())).toString();
    }

    public static String authenticate(NTCredentials credentials, String challenge, String charset) throws AuthenticationException {
        b.trace("enter NTLMScheme.authenticate(NTCredentials, String)");
        if (credentials == null) {
            throw new IllegalArgumentException("Credentials may not be null");
        }
        a ntlm = new a();
        ntlm.b(charset);
        return new StringBuffer().append("NTLM ").append(ntlm.a(challenge, credentials.getUserName(), credentials.getPassword(), credentials.getHost(), credentials.getDomain())).toString();
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String authenticate(Credentials credentials, String method, String uri) throws AuthenticationException {
        b.trace("enter NTLMScheme.authenticate(Credentials, String, String)");
        try {
            return authenticate((NTCredentials) credentials, this.c);
        } catch (ClassCastException e) {
            throw new InvalidCredentialsException(new StringBuffer().append("Credentials cannot be used for NTLM authentication: ").append(credentials.getClass().getName()).toString());
        }
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String authenticate(Credentials credentials, HttpMethod method) throws AuthenticationException {
        String response;
        b.trace("enter NTLMScheme.authenticate(Credentials, HttpMethod)");
        if (this.d == 0) {
            throw new IllegalStateException("NTLM authentication process has not been initiated");
        }
        try {
            NTCredentials ntcredentials = (NTCredentials) credentials;
            a ntlm = new a();
            ntlm.b(method.getParams().getCredentialCharset());
            if (this.d == 1 || this.d == Integer.MAX_VALUE) {
                response = ntlm.a(ntcredentials.getHost(), ntcredentials.getDomain());
                this.d = 2;
            } else {
                response = ntlm.a(ntcredentials.getUserName(), ntcredentials.getPassword(), ntcredentials.getHost(), ntcredentials.getDomain(), a.a(this.c));
                this.d = 4;
            }
            return new StringBuffer().append("NTLM ").append(response).toString();
        } catch (ClassCastException e) {
            throw new InvalidCredentialsException(new StringBuffer().append("Credentials cannot be used for NTLM authentication: ").append(credentials.getClass().getName()).toString());
        }
    }
}
