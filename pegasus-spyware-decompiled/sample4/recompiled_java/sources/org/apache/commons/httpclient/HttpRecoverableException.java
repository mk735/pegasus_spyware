package org.apache.commons.httpclient;

public class HttpRecoverableException extends HttpException {
    public HttpRecoverableException() {
    }

    public HttpRecoverableException(String message) {
        super(message);
    }
}
