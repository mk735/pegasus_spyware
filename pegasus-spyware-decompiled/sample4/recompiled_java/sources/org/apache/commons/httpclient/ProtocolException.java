package org.apache.commons.httpclient;

public class ProtocolException extends HttpException {
    public ProtocolException() {
    }

    public ProtocolException(String message) {
        super(message);
    }

    public ProtocolException(String message, Throwable cause) {
        super(message, cause);
    }
}
