package org.apache.commons.httpclient.methods;

import java.io.IOException;
import org.apache.commons.httpclient.HttpConnection;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpMethodBase;
import org.apache.commons.httpclient.HttpState;
import org.apache.commons.httpclient.HttpVersion;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class ExpectContinueMethod extends HttpMethodBase {
    private static final Log a;
    static Class c;

    /* access modifiers changed from: protected */
    public abstract boolean hasRequestContent();

    static {
        Class cls;
        if (c == null) {
            cls = a("org.apache.commons.httpclient.methods.ExpectContinueMethod");
            c = cls;
        } else {
            cls = c;
        }
        a = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public ExpectContinueMethod() {
    }

    public ExpectContinueMethod(String uri) {
        super(uri);
    }

    public boolean getUseExpectHeader() {
        return getParams().getBooleanParameter(HttpMethodParams.USE_EXPECT_CONTINUE, false);
    }

    public void setUseExpectHeader(boolean value) {
        getParams().setBooleanParameter(HttpMethodParams.USE_EXPECT_CONTINUE, value);
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public void addRequestHeaders(HttpState state, HttpConnection conn) throws IOException, HttpException {
        a.trace("enter ExpectContinueMethod.addRequestHeaders(HttpState, HttpConnection)");
        super.addRequestHeaders(state, conn);
        boolean headerPresent = getRequestHeader("Expect") != null;
        if (!getParams().isParameterTrue(HttpMethodParams.USE_EXPECT_CONTINUE) || !getEffectiveVersion().greaterEquals(HttpVersion.HTTP_1_1) || !hasRequestContent()) {
            if (headerPresent) {
                removeRequestHeader("Expect");
            }
        } else if (!headerPresent) {
            setRequestHeader("Expect", "100-continue");
        }
    }
}
