package org.apache.commons.httpclient.auth;

import java.util.Map;

public abstract class RFC2617Scheme implements AuthScheme {
    private Map a = null;

    public RFC2617Scheme() {
    }

    public RFC2617Scheme(String challenge) throws MalformedChallengeException {
        processChallenge(challenge);
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public void processChallenge(String challenge) throws MalformedChallengeException {
        if (!AuthChallengeParser.extractScheme(challenge).equalsIgnoreCase(getSchemeName())) {
            throw new MalformedChallengeException(new StringBuffer().append("Invalid ").append(getSchemeName()).append(" challenge: ").append(challenge).toString());
        }
        this.a = AuthChallengeParser.extractParams(challenge);
    }

    /* access modifiers changed from: protected */
    public Map getParameters() {
        return this.a;
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getParameter(String name) {
        if (name == null) {
            throw new IllegalArgumentException("Parameter name may not be null");
        } else if (this.a == null) {
            return null;
        } else {
            return (String) this.a.get(name.toLowerCase());
        }
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getRealm() {
        return getParameter("realm");
    }

    @Override // org.apache.commons.httpclient.auth.AuthScheme
    public String getID() {
        return getRealm();
    }
}
