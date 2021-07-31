package org.apache.commons.httpclient;

import java.io.IOException;
import java.security.Provider;
import java.security.Security;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HttpClient {
    static Class a;
    private static final Log b;
    private HttpConnectionManager c;
    private HttpState d;
    private HttpClientParams e;
    private HostConfiguration f;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.HttpClient");
            a = cls;
        } else {
            cls = a;
        }
        b = LogFactory.getLog(cls);
        if (b.isDebugEnabled()) {
            try {
                b.debug(new StringBuffer().append("Java version: ").append(System.getProperty("java.version")).toString());
                b.debug(new StringBuffer().append("Java vendor: ").append(System.getProperty("java.vendor")).toString());
                b.debug(new StringBuffer().append("Java class path: ").append(System.getProperty("java.class.path")).toString());
                b.debug(new StringBuffer().append("Operating system name: ").append(System.getProperty("os.name")).toString());
                b.debug(new StringBuffer().append("Operating system architecture: ").append(System.getProperty("os.arch")).toString());
                b.debug(new StringBuffer().append("Operating system version: ").append(System.getProperty("os.version")).toString());
                Provider[] providers = Security.getProviders();
                for (Provider provider : providers) {
                    b.debug(new StringBuffer().append(provider.getName()).append(" ").append(provider.getVersion()).append(": ").append(provider.getInfo()).toString());
                }
            } catch (SecurityException e2) {
            }
        }
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public HttpClient() {
        this(new HttpClientParams());
    }

    public HttpClient(HttpClientParams params) {
        this.d = new HttpState();
        this.e = null;
        this.f = new HostConfiguration();
        if (params == null) {
            throw new IllegalArgumentException("Params may not be null");
        }
        this.e = params;
        this.c = null;
        Class clazz = params.getConnectionManagerClass();
        if (clazz != null) {
            try {
                this.c = (HttpConnectionManager) clazz.newInstance();
            } catch (Exception e2) {
                b.warn("Error instantiating connection manager class, defaulting to SimpleHttpConnectionManager", e2);
            }
        }
        if (this.c == null) {
            this.c = new SimpleHttpConnectionManager();
        }
        if (this.c != null) {
            this.c.getParams().setDefaults(this.e);
        }
    }

    public HttpClient(HttpClientParams params, HttpConnectionManager httpConnectionManager) {
        this.d = new HttpState();
        this.e = null;
        this.f = new HostConfiguration();
        if (httpConnectionManager == null) {
            throw new IllegalArgumentException("httpConnectionManager cannot be null");
        } else if (params == null) {
            throw new IllegalArgumentException("Params may not be null");
        } else {
            this.e = params;
            this.c = httpConnectionManager;
            this.c.getParams().setDefaults(this.e);
        }
    }

    public HttpClient(HttpConnectionManager httpConnectionManager) {
        this(new HttpClientParams(), httpConnectionManager);
    }

    public synchronized HttpState getState() {
        return this.d;
    }

    public synchronized void setState(HttpState state) {
        this.d = state;
    }

    public synchronized void setStrictMode(boolean strictMode) {
        if (strictMode) {
            this.e.makeStrict();
        } else {
            this.e.makeLenient();
        }
    }

    public synchronized boolean isStrictMode() {
        return false;
    }

    public synchronized void setTimeout(int newTimeoutInMilliseconds) {
        this.e.setSoTimeout(newTimeoutInMilliseconds);
    }

    public synchronized void setHttpConnectionFactoryTimeout(long timeout) {
        this.e.setConnectionManagerTimeout(timeout);
    }

    public synchronized void setConnectionTimeout(int newTimeoutInMilliseconds) {
        this.c.getParams().setConnectionTimeout(newTimeoutInMilliseconds);
    }

    public int executeMethod(HttpMethod method) throws IOException, HttpException {
        b.trace("enter HttpClient.executeMethod(HttpMethod)");
        return executeMethod(null, method, null);
    }

    public int executeMethod(HostConfiguration hostConfiguration, HttpMethod method) throws IOException, HttpException {
        b.trace("enter HttpClient.executeMethod(HostConfiguration,HttpMethod)");
        return executeMethod(hostConfiguration, method, null);
    }

    public int executeMethod(HostConfiguration hostconfig, HttpMethod method, HttpState state) throws IOException, HttpException {
        b.trace("enter HttpClient.executeMethod(HostConfiguration,HttpMethod,HttpState)");
        if (method == null) {
            throw new IllegalArgumentException("HttpMethod parameter may not be null");
        }
        HostConfiguration defaulthostconfig = getHostConfiguration();
        if (hostconfig == null) {
            hostconfig = defaulthostconfig;
        }
        URI uri = method.getURI();
        if (hostconfig == defaulthostconfig || uri.isAbsoluteURI()) {
            hostconfig = (HostConfiguration) hostconfig.clone();
            if (uri.isAbsoluteURI()) {
                hostconfig.setHost(uri);
            }
        }
        HttpConnectionManager httpConnectionManager = getHttpConnectionManager();
        HttpClientParams httpClientParams = this.e;
        if (state == null) {
            state = getState();
        }
        new c(httpConnectionManager, hostconfig, httpClientParams, state).a(method);
        return method.getStatusCode();
    }

    public String getHost() {
        return this.f.getHost();
    }

    public int getPort() {
        return this.f.getPort();
    }

    public synchronized HostConfiguration getHostConfiguration() {
        return this.f;
    }

    public synchronized void setHostConfiguration(HostConfiguration hostConfiguration) {
        this.f = hostConfiguration;
    }

    public synchronized HttpConnectionManager getHttpConnectionManager() {
        return this.c;
    }

    public synchronized void setHttpConnectionManager(HttpConnectionManager httpConnectionManager) {
        this.c = httpConnectionManager;
        if (this.c != null) {
            this.c.getParams().setDefaults(this.e);
        }
    }

    public HttpClientParams getParams() {
        return this.e;
    }

    public void setParams(HttpClientParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        this.e = params;
    }
}
