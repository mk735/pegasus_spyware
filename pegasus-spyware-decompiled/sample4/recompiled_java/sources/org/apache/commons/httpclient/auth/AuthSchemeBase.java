package org.apache.commons.httpclient.auth;

public abstract class AuthSchemeBase implements AuthScheme {
    private String a = null;

    public AuthSchemeBase(String challenge) throws MalformedChallengeException {
        if (challenge == null) {
            throw new IllegalArgumentException("Challenge may not be null");
        }
        this.a = challenge;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AuthSchemeBase) {
            return this.a.equals(((AuthSchemeBase) obj).a);
        }
        return super.equals(obj);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a;
    }
}
