package org.apache.commons.httpclient.methods;

import org.apache.commons.httpclient.HttpMethodBase;

public class DeleteMethod extends HttpMethodBase {
    public DeleteMethod() {
    }

    public DeleteMethod(String uri) {
        super(uri);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "DELETE";
    }
}
