package org.apache.commons.httpclient;

public class RedirectException extends ProtocolException {
    public RedirectException() {
    }

    public RedirectException(String message) {
        super(message);
    }

    public RedirectException(String message, Throwable cause) {
        super(message, cause);
    }
}
