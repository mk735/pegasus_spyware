package org.apache.commons.httpclient.auth;

public class AuthState {
    public static final String PREEMPTIVE_AUTH_SCHEME = "basic";
    private AuthScheme a = null;
    private boolean b = false;
    private boolean c = false;
    private boolean d = false;

    public void invalidate() {
        this.a = null;
        this.b = false;
        this.c = false;
        this.d = false;
    }

    public boolean isAuthRequested() {
        return this.b;
    }

    public void setAuthRequested(boolean challengeReceived) {
        this.b = challengeReceived;
    }

    public boolean isAuthAttempted() {
        return this.c;
    }

    public void setAuthAttempted(boolean challengeResponded) {
        this.c = challengeResponded;
    }

    public void setPreemptive() {
        if (this.d) {
            return;
        }
        if (this.a != null) {
            throw new IllegalStateException("Authentication state already initialized");
        }
        this.a = AuthPolicy.getAuthScheme(PREEMPTIVE_AUTH_SCHEME);
        this.d = true;
    }

    public boolean isPreemptive() {
        return this.d;
    }

    public void setAuthScheme(AuthScheme authScheme) {
        if (authScheme == null) {
            invalidate();
            return;
        }
        if (this.d && !this.a.getClass().isInstance(authScheme)) {
            this.d = false;
            this.c = false;
        }
        this.a = authScheme;
    }

    public AuthScheme getAuthScheme() {
        return this.a;
    }

    public String getRealm() {
        if (this.a != null) {
            return this.a.getRealm();
        }
        return null;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Auth state: auth requested [");
        buffer.append(this.b);
        buffer.append("]; auth attempted [");
        buffer.append(this.c);
        if (this.a != null) {
            buffer.append("]; auth scheme [");
            buffer.append(this.a.getSchemeName());
            buffer.append("]; realm [");
            buffer.append(this.a.getRealm());
        }
        buffer.append("] preemptive [");
        buffer.append(this.d);
        buffer.append("]");
        return buffer.toString();
    }
}
