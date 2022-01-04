package org.apache.commons.httpclient.methods;

import java.io.IOException;
import org.apache.commons.httpclient.HttpConnection;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpMethodBase;
import org.apache.commons.httpclient.HttpState;
import org.apache.commons.httpclient.ProtocolException;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HeadMethod extends HttpMethodBase {
    static Class a;
    private static final Log c;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.HeadMethod");
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

    public HeadMethod() {
        setFollowRedirects(true);
    }

    public HeadMethod(String uri) {
        super(uri);
        setFollowRedirects(true);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "HEAD";
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public void recycle() {
        super.recycle();
        setFollowRedirects(true);
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public void readResponseBody(HttpState state, HttpConnection conn) throws HttpException, IOException {
        boolean responseAvailable;
        c.trace("enter HeadMethod.readResponseBody(HttpState, HttpConnection)");
        int bodyCheckTimeout = getParams().getIntParameter(HttpMethodParams.HEAD_BODY_CHECK_TIMEOUT, -1);
        if (bodyCheckTimeout < 0) {
            responseBodyConsumed();
            return;
        }
        if (c.isDebugEnabled()) {
            c.debug(new StringBuffer().append("Check for non-compliant response body. Timeout in ").append(bodyCheckTimeout).append(" ms").toString());
        }
        try {
            responseAvailable = conn.isResponseAvailable(bodyCheckTimeout);
        } catch (IOException e) {
            c.debug("An IOException occurred while testing if a response was available, we will assume one is not.", e);
            responseAvailable = false;
        }
        if (!responseAvailable) {
            return;
        }
        if (getParams().isParameterTrue(HttpMethodParams.REJECT_HEAD_BODY)) {
            throw new ProtocolException("Body content may not be sent in response to HTTP HEAD request");
        }
        c.warn("Body content returned in response to HTTP HEAD");
        super.readResponseBody(state, conn);
    }

    public int getBodyCheckTimeout() {
        return getParams().getIntParameter(HttpMethodParams.HEAD_BODY_CHECK_TIMEOUT, -1);
    }

    public void setBodyCheckTimeout(int timeout) {
        getParams().setIntParameter(HttpMethodParams.HEAD_BODY_CHECK_TIMEOUT, timeout);
    }
}
