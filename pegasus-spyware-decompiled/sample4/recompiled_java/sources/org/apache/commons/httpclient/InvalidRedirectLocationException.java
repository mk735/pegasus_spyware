package org.apache.commons.httpclient;

public class InvalidRedirectLocationException extends RedirectException {
    private final String b;

    public InvalidRedirectLocationException(String message, String location) {
        super(message);
        this.b = location;
    }

    public InvalidRedirectLocationException(String message, String location, Throwable cause) {
        super(message, cause);
        this.b = location;
    }

    public String getLocation() {
        return this.b;
    }
}
