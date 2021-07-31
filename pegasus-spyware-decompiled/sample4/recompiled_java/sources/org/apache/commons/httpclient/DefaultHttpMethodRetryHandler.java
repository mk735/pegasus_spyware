package org.apache.commons.httpclient;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.NoRouteToHostException;
import java.net.UnknownHostException;

public class DefaultHttpMethodRetryHandler implements HttpMethodRetryHandler {
    private static Class a;
    private int b;
    private boolean c;

    static {
        a = null;
        try {
            a = Class.forName("javax.net.ssl.SSLHandshakeException");
        } catch (ClassNotFoundException e) {
        }
    }

    public DefaultHttpMethodRetryHandler(int retryCount, boolean requestSentRetryEnabled) {
        this.b = retryCount;
        this.c = requestSentRetryEnabled;
    }

    public DefaultHttpMethodRetryHandler() {
        this(3, false);
    }

    @Override // org.apache.commons.httpclient.HttpMethodRetryHandler
    public boolean retryMethod(HttpMethod method, IOException exception, int executionCount) {
        if (method == null) {
            throw new IllegalArgumentException("HTTP method may not be null");
        } else if (exception == null) {
            throw new IllegalArgumentException("Exception parameter may not be null");
        } else if ((method instanceof HttpMethodBase) && ((HttpMethodBase) method).isAborted()) {
            return false;
        } else {
            if (executionCount > this.b) {
                return false;
            }
            if (exception instanceof NoHttpResponseException) {
                return true;
            }
            if (exception instanceof InterruptedIOException) {
                return false;
            }
            if (exception instanceof UnknownHostException) {
                return false;
            }
            if (exception instanceof NoRouteToHostException) {
                return false;
            }
            if (a == null || !a.isInstance(exception)) {
                return !method.isRequestSent() || this.c;
            }
            return false;
        }
    }

    public boolean isRequestSentRetryEnabled() {
        return this.c;
    }

    public int getRetryCount() {
        return this.b;
    }
}
