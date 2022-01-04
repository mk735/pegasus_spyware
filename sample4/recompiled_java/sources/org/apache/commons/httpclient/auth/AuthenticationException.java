package org.apache.commons.httpclient.auth;

import org.apache.commons.httpclient.ProtocolException;

public class AuthenticationException extends ProtocolException {
    public AuthenticationException() {
    }

    public AuthenticationException(String message) {
        super(message);
    }

    public AuthenticationException(String message, Throwable cause) {
        super(message, cause);
    }
}
