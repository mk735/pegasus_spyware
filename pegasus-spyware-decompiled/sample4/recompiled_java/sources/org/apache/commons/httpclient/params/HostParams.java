package org.apache.commons.httpclient.params;

public class HostParams extends DefaultHttpParams {
    public static final String DEFAULT_HEADERS = "http.default-headers";

    public HostParams() {
    }

    public HostParams(HttpParams defaults) {
        super(defaults);
    }

    public void setVirtualHost(String hostname) {
        setParameter(HttpMethodParams.VIRTUAL_HOST, hostname);
    }

    public String getVirtualHost() {
        return (String) getParameter(HttpMethodParams.VIRTUAL_HOST);
    }
}
