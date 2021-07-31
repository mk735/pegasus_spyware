package org.apache.commons.httpclient.methods;

public class PutMethod extends EntityEnclosingMethod {
    public PutMethod() {
    }

    public PutMethod(String uri) {
        super(uri);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "PUT";
    }
}
