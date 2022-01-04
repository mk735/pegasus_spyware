package org.apache.commons.httpclient.params;

import java.io.Serializable;
import java.util.HashMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class DefaultHttpParams implements Serializable, Cloneable, HttpParams {
    static Class a;
    private static final Log b;
    private static HttpParamsFactory c = new DefaultHttpParamsFactory();
    private HttpParams d;
    private HashMap e;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.params.DefaultHttpParams");
            a = cls;
        } else {
            cls = a;
        }
        b = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public static HttpParams getDefaultParams() {
        return c.getDefaultParams();
    }

    public static void setHttpParamsFactory(HttpParamsFactory httpParamsFactory) {
        if (httpParamsFactory == null) {
            throw new IllegalArgumentException("httpParamsFactory may not be null");
        }
        c = httpParamsFactory;
    }

    public DefaultHttpParams(HttpParams defaults) {
        this.d = null;
        this.e = null;
        this.d = defaults;
    }

    public DefaultHttpParams() {
        this(getDefaultParams());
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public synchronized HttpParams getDefaults() {
        return this.d;
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public synchronized void setDefaults(HttpParams params) {
        this.d = params;
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public synchronized Object getParameter(String name) {
        Object param;
        param = null;
        if (this.e != null) {
            param = this.e.get(name);
        }
        if (param == null) {
            if (this.d != null) {
                param = this.d.getParameter(name);
            } else {
                param = null;
            }
        }
        return param;
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public synchronized void setParameter(String name, Object value) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        this.e.put(name, value);
        if (b.isDebugEnabled()) {
            b.debug(new StringBuffer().append("Set parameter ").append(name).append(" = ").append(value).toString());
        }
    }

    public synchronized void setParameters(String[] names, Object value) {
        for (String str : names) {
            setParameter(str, value);
        }
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public long getLongParameter(String name, long defaultValue) {
        Object param = getParameter(name);
        return param == null ? defaultValue : ((Long) param).longValue();
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public void setLongParameter(String name, long value) {
        setParameter(name, new Long(value));
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public int getIntParameter(String name, int defaultValue) {
        Object param = getParameter(name);
        return param == null ? defaultValue : ((Integer) param).intValue();
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public void setIntParameter(String name, int value) {
        setParameter(name, new Integer(value));
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public double getDoubleParameter(String name, double defaultValue) {
        Object param = getParameter(name);
        return param == null ? defaultValue : ((Double) param).doubleValue();
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public void setDoubleParameter(String name, double value) {
        setParameter(name, new Double(value));
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public boolean getBooleanParameter(String name, boolean defaultValue) {
        Object param = getParameter(name);
        return param == null ? defaultValue : ((Boolean) param).booleanValue();
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public void setBooleanParameter(String name, boolean value) {
        setParameter(name, value ? Boolean.TRUE : Boolean.FALSE);
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public boolean isParameterSet(String name) {
        return getParameter(name) != null;
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public boolean isParameterSetLocally(String name) {
        return (this.e == null || this.e.get(name) == null) ? false : true;
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public boolean isParameterTrue(String name) {
        return getBooleanParameter(name, false);
    }

    @Override // org.apache.commons.httpclient.params.HttpParams
    public boolean isParameterFalse(String name) {
        return !getBooleanParameter(name, false);
    }

    public void clear() {
        this.e = null;
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        DefaultHttpParams clone = (DefaultHttpParams) super.clone();
        if (this.e != null) {
            clone.e = (HashMap) this.e.clone();
        }
        clone.setDefaults(this.d);
        return clone;
    }
}
