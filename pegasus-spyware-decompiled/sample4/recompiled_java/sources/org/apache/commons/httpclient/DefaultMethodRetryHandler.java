package org.apache.commons.httpclient;

public class DefaultMethodRetryHandler implements MethodRetryHandler {
    private int a = 3;
    private boolean b = false;

    @Override // org.apache.commons.httpclient.MethodRetryHandler
    public boolean retryMethod(HttpMethod method, HttpConnection connection, HttpRecoverableException recoverableException, int executionCount, boolean requestSent) {
        return (!requestSent || this.b) && executionCount <= this.a;
    }

    public boolean isRequestSentRetryEnabled() {
        return this.b;
    }

    public int getRetryCount() {
        return this.a;
    }

    public void setRequestSentRetryEnabled(boolean requestSentRetryEnabled) {
        this.b = requestSentRetryEnabled;
    }

    public void setRetryCount(int retryCount) {
        this.a = retryCount;
    }
}
