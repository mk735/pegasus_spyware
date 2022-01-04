package org.apache.commons.httpclient.methods;

import org.apache.commons.httpclient.HttpMethodBase;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class GetMethod extends HttpMethodBase {
    static Class a;
    private static final Log c;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.GetMethod");
            a = cls;
        } else {
            cls = a;
        }
        c = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public GetMethod() {
        setFollowRedirects(true);
    }

    public GetMethod(String uri) {
        super(uri);
        c.trace("enter GetMethod(String)");
        setFollowRedirects(true);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "GET";
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public void recycle() {
        c.trace("enter GetMethod.recycle()");
        super.recycle();
        setFollowRedirects(true);
    }
}
