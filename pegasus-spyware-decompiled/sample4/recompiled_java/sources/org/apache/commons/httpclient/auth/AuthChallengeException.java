package org.apache.commons.httpclient.auth;

public class AuthChallengeException extends AuthenticationException {
    public AuthChallengeException() {
    }

    public AuthChallengeException(String message) {
        super(message);
    }

    public AuthChallengeException(String message, Throwable cause) {
        super(message, cause);
    }
}
