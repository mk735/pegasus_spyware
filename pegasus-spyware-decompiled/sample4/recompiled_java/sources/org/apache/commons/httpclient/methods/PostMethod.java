package org.apache.commons.httpclient.methods;

import java.util.Iterator;
import java.util.Vector;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class PostMethod extends EntityEnclosingMethod {
    public static final String FORM_URL_ENCODED_CONTENT_TYPE = "application/x-www-form-urlencoded";
    static Class d;
    private static final Log e;
    private Vector f = new Vector();

    static {
        Class cls;
        if (d == null) {
            cls = a("org.apache.commons.httpclient.methods.PostMethod");
            d = cls;
        } else {
            cls = d;
        }
        e = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public PostMethod() {
    }

    public PostMethod(String uri) {
        super(uri);
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "POST";
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.EntityEnclosingMethod, org.apache.commons.httpclient.methods.ExpectContinueMethod
    public boolean hasRequestContent() {
        e.trace("enter PostMethod.hasRequestContent()");
        if (!this.f.isEmpty()) {
            return true;
        }
        return super.hasRequestContent();
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.EntityEnclosingMethod
    public void clearRequestBody() {
        e.trace("enter PostMethod.clearRequestBody()");
        this.f.clear();
        super.clearRequestBody();
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.EntityEnclosingMethod
    public RequestEntity generateRequestEntity() {
        if (!this.f.isEmpty()) {
            return new ByteArrayRequestEntity(EncodingUtil.getAsciiBytes(EncodingUtil.formUrlEncode(getParameters(), getRequestCharSet())), FORM_URL_ENCODED_CONTENT_TYPE);
        }
        return super.generateRequestEntity();
    }

    public void setParameter(String parameterName, String parameterValue) {
        e.trace("enter PostMethod.setParameter(String, String)");
        removeParameter(parameterName);
        addParameter(parameterName, parameterValue);
    }

    public NameValuePair getParameter(String paramName) {
        e.trace("enter PostMethod.getParameter(String)");
        if (paramName == null) {
            return null;
        }
        Iterator iter = this.f.iterator();
        while (iter.hasNext()) {
            NameValuePair parameter = (NameValuePair) iter.next();
            if (paramName.equals(parameter.getName())) {
                return parameter;
            }
        }
        return null;
    }

    public NameValuePair[] getParameters() {
        e.trace("enter PostMethod.getParameters()");
        int numPairs = this.f.size();
        Object[] objectArr = this.f.toArray();
        NameValuePair[] nvPairArr = new NameValuePair[numPairs];
        for (int i = 0; i < numPairs; i++) {
            nvPairArr[i] = (NameValuePair) objectArr[i];
        }
        return nvPairArr;
    }

    public void addParameter(String paramName, String paramValue) throws IllegalArgumentException {
        e.trace("enter PostMethod.addParameter(String, String)");
        if (paramName == null || paramValue == null) {
            throw new IllegalArgumentException("Arguments to addParameter(String, String) cannot be null");
        }
        super.clearRequestBody();
        this.f.add(new NameValuePair(paramName, paramValue));
    }

    public void addParameter(NameValuePair param) throws IllegalArgumentException {
        e.trace("enter PostMethod.addParameter(NameValuePair)");
        if (param == null) {
            throw new IllegalArgumentException("NameValuePair may not be null");
        }
        addParameter(param.getName(), param.getValue());
    }

    public void addParameters(NameValuePair[] parameters) {
        e.trace("enter PostMethod.addParameters(NameValuePair[])");
        if (parameters == null) {
            e.warn("Attempt to addParameters(null) ignored");
            return;
        }
        super.clearRequestBody();
        for (NameValuePair nameValuePair : parameters) {
            this.f.add(nameValuePair);
        }
    }

    public boolean removeParameter(String paramName) throws IllegalArgumentException {
        e.trace("enter PostMethod.removeParameter(String)");
        if (paramName == null) {
            throw new IllegalArgumentException("Argument passed to removeParameter(String) cannot be null");
        }
        boolean removed = false;
        Iterator iter = this.f.iterator();
        while (iter.hasNext()) {
            if (paramName.equals(((NameValuePair) iter.next()).getName())) {
                iter.remove();
                removed = true;
            }
        }
        return removed;
    }

    public boolean removeParameter(String paramName, String paramValue) throws IllegalArgumentException {
        e.trace("enter PostMethod.removeParameter(String, String)");
        if (paramName == null) {
            throw new IllegalArgumentException("Parameter name may not be null");
        } else if (paramValue == null) {
            throw new IllegalArgumentException("Parameter value may not be null");
        } else {
            Iterator iter = this.f.iterator();
            while (iter.hasNext()) {
                NameValuePair pair = (NameValuePair) iter.next();
                if (paramName.equals(pair.getName()) && paramValue.equals(pair.getValue())) {
                    iter.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public void setRequestBody(NameValuePair[] parametersBody) throws IllegalArgumentException {
        e.trace("enter PostMethod.setRequestBody(NameValuePair[])");
        if (parametersBody == null) {
            throw new IllegalArgumentException("Array of parameters may not be null");
        }
        clearRequestBody();
        addParameters(parametersBody);
    }
}
