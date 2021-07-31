package org.apache.commons.httpclient.methods;

import org.apache.commons.httpclient.HttpMethodBase;

public class TraceMethod extends HttpMethodBase {
    public TraceMethod(String uri) {
        super(uri);
        setFollowRedirects(false);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "TRACE";
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public void recycle() {
        super.recycle();
        setFollowRedirects(false);
    }
}
