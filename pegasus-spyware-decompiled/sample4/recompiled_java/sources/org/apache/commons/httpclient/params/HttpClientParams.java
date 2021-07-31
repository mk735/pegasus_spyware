package org.apache.commons.httpclient.params;

public class HttpClientParams extends HttpMethodParams {
    public static final String ALLOW_CIRCULAR_REDIRECTS = "http.protocol.allow-circular-redirects";
    public static final String CONNECTION_MANAGER_CLASS = "http.connection-manager.class";
    public static final String CONNECTION_MANAGER_TIMEOUT = "http.connection-manager.timeout";
    public static final String MAX_REDIRECTS = "http.protocol.max-redirects";
    public static final String PREEMPTIVE_AUTHENTICATION = "http.authentication.preemptive";
    public static final String REJECT_RELATIVE_REDIRECT = "http.protocol.reject-relative-redirect";
    private static final String[] c = {REJECT_RELATIVE_REDIRECT, ALLOW_CIRCULAR_REDIRECTS};

    public HttpClientParams() {
    }

    public HttpClientParams(HttpParams defaults) {
        super(defaults);
    }

    public long getConnectionManagerTimeout() {
        return getLongParameter(CONNECTION_MANAGER_TIMEOUT, 0);
    }

    public void setConnectionManagerTimeout(long timeout) {
        setLongParameter(CONNECTION_MANAGER_TIMEOUT, timeout);
    }

    public Class getConnectionManagerClass() {
        return (Class) getParameter(CONNECTION_MANAGER_CLASS);
    }

    public void setConnectionManagerClass(Class clazz) {
        setParameter(CONNECTION_MANAGER_CLASS, clazz);
    }

    public boolean isAuthenticationPreemptive() {
        return getBooleanParameter(PREEMPTIVE_AUTHENTICATION, false);
    }

    public void setAuthenticationPreemptive(boolean value) {
        setBooleanParameter(PREEMPTIVE_AUTHENTICATION, value);
    }

    @Override // org.apache.commons.httpclient.params.HttpMethodParams
    public void makeStrict() {
        super.makeStrict();
        setParameters(c, Boolean.TRUE);
    }

    @Override // org.apache.commons.httpclient.params.HttpMethodParams
    public void makeLenient() {
        super.makeLenient();
        setParameters(c, Boolean.FALSE);
    }
}
