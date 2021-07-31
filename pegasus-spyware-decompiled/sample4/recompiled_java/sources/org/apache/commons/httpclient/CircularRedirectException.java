package org.apache.commons.httpclient;

public class CircularRedirectException extends RedirectException {
    public CircularRedirectException() {
    }

    public CircularRedirectException(String message) {
        super(message);
    }

    public CircularRedirectException(String message, Throwable cause) {
        super(message, cause);
    }
}
