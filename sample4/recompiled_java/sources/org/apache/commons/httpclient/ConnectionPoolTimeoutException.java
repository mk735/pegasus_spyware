package org.apache.commons.httpclient;

public class ConnectionPoolTimeoutException extends ConnectTimeoutException {
    public ConnectionPoolTimeoutException() {
    }

    public ConnectionPoolTimeoutException(String message) {
        super(message);
    }

    public ConnectionPoolTimeoutException(String message, Throwable cause) {
        super(message, cause);
    }
}
