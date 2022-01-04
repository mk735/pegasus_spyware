package org.apache.commons.httpclient.methods;

import java.util.Enumeration;
import java.util.StringTokenizer;
import java.util.Vector;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpConnection;
import org.apache.commons.httpclient.HttpMethodBase;
import org.apache.commons.httpclient.HttpState;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class OptionsMethod extends HttpMethodBase {
    static Class a;
    private static final Log c;
    private Vector d = new Vector();

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.OptionsMethod");
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

    public OptionsMethod() {
    }

    public OptionsMethod(String uri) {
        super(uri);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "OPTIONS";
    }

    public boolean isAllowed(String method) {
        checkUsed();
        return this.d.contains(method);
    }

    public Enumeration getAllowedMethods() {
        checkUsed();
        return this.d.elements();
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public void processResponseHeaders(HttpState state, HttpConnection conn) {
        c.trace("enter OptionsMethod.processResponseHeaders(HttpState, HttpConnection)");
        Header allowHeader = getResponseHeader("allow");
        if (allowHeader != null) {
            StringTokenizer tokenizer = new StringTokenizer(allowHeader.getValue(), ",");
            while (tokenizer.hasMoreElements()) {
                this.d.addElement(tokenizer.nextToken().trim().toUpperCase());
            }
        }
    }

    public boolean needContentLength() {
        return false;
    }
}
