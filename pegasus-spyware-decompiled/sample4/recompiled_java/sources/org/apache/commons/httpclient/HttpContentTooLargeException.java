package org.apache.commons.httpclient;

public class HttpContentTooLargeException extends HttpException {
    private int b;

    public HttpContentTooLargeException(String message, int maxlen) {
        super(message);
        this.b = maxlen;
    }

    public int getMaxLength() {
        return this.b;
    }
}
