package org.apache.commons.httpclient.auth;

public class CredentialsNotAvailableException extends AuthenticationException {
    public CredentialsNotAvailableException() {
    }

    public CredentialsNotAvailableException(String message) {
        super(message);
    }

    public CredentialsNotAvailableException(String message, Throwable cause) {
        super(message, cause);
    }
}
