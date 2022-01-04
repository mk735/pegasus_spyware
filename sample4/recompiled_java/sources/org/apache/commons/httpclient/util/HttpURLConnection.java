package org.apache.commons.httpclient.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HttpURLConnection extends java.net.HttpURLConnection {
    static Class a;
    private static final Log b;
    private HttpMethod c;
    private URL d;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.util.HttpURLConnection");
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

    public HttpURLConnection(HttpMethod method, URL url) {
        super(url);
        this.c = method;
        this.d = url;
    }

    protected HttpURLConnection(URL url) {
        super(url);
        throw new RuntimeException("An HTTP URL connection can only be constructed from a HttpMethod class");
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        b.trace("enter HttpURLConnection.getInputStream()");
        return this.c.getResponseBodyAsStream();
    }

    public InputStream getErrorStream() {
        b.trace("enter HttpURLConnection.getErrorStream()");
        throw new RuntimeException("Not implemented yet");
    }

    public void disconnect() {
        b.trace("enter HttpURLConnection.disconnect()");
        throw new RuntimeException("Not implemented yet");
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        b.trace("enter HttpURLConnection.connect()");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public boolean usingProxy() {
        b.trace("enter HttpURLConnection.usingProxy()");
        throw new RuntimeException("Not implemented yet");
    }

    public String getRequestMethod() {
        b.trace("enter HttpURLConnection.getRequestMethod()");
        return this.c.getName();
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        b.trace("enter HttpURLConnection.getResponseCode()");
        return this.c.getStatusCode();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        b.trace("enter HttpURLConnection.getResponseMessage()");
        return this.c.getStatusText();
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String name) {
        b.trace("enter HttpURLConnection.getHeaderField(String)");
        Header[] headers = this.c.getResponseHeaders();
        for (int i = headers.length - 1; i >= 0; i--) {
            if (headers[i].getName().equalsIgnoreCase(name)) {
                return headers[i].getValue();
            }
        }
        return null;
    }

    public String getHeaderFieldKey(int keyPosition) {
        b.trace("enter HttpURLConnection.getHeaderFieldKey(int)");
        if (keyPosition == 0) {
            return null;
        }
        Header[] headers = this.c.getResponseHeaders();
        if (keyPosition < 0 || keyPosition > headers.length) {
            return null;
        }
        return headers[keyPosition - 1].getName();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int position) {
        b.trace("enter HttpURLConnection.getHeaderField(int)");
        if (position == 0) {
            return this.c.getStatusLine().toString();
        }
        Header[] headers = this.c.getResponseHeaders();
        if (position < 0 || position > headers.length) {
            return null;
        }
        return headers[position - 1].getValue();
    }

    public URL getURL() {
        b.trace("enter HttpURLConnection.getURL()");
        return this.d;
    }

    public void setInstanceFollowRedirects(boolean isFollowingRedirects) {
        b.trace("enter HttpURLConnection.setInstanceFollowRedirects(boolean)");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public boolean getInstanceFollowRedirects() {
        b.trace("enter HttpURLConnection.getInstanceFollowRedirects()");
        throw new RuntimeException("Not implemented yet");
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String method) throws ProtocolException {
        b.trace("enter HttpURLConnection.setRequestMethod(String)");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        b.trace("enter HttpURLConnection.getPermission()");
        throw new RuntimeException("Not implemented yet");
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        b.trace("enter HttpURLConnection.getContent()");
        throw new RuntimeException("Not implemented yet");
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] classes) throws IOException {
        b.trace("enter HttpURLConnection.getContent(Class[])");
        throw new RuntimeException("Not implemented yet");
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        b.trace("enter HttpURLConnection.getOutputStream()");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public void setDoInput(boolean isInput) {
        b.trace("enter HttpURLConnection.setDoInput()");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public boolean getDoInput() {
        b.trace("enter HttpURLConnection.getDoInput()");
        throw new RuntimeException("Not implemented yet");
    }

    public void setDoOutput(boolean isOutput) {
        b.trace("enter HttpURLConnection.setDoOutput()");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public boolean getDoOutput() {
        b.trace("enter HttpURLConnection.getDoOutput()");
        throw new RuntimeException("Not implemented yet");
    }

    public void setAllowUserInteraction(boolean isAllowInteraction) {
        b.trace("enter HttpURLConnection.setAllowUserInteraction(boolean)");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public boolean getAllowUserInteraction() {
        b.trace("enter HttpURLConnection.getAllowUserInteraction()");
        throw new RuntimeException("Not implemented yet");
    }

    public void setUseCaches(boolean isUsingCaches) {
        b.trace("enter HttpURLConnection.setUseCaches(boolean)");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public boolean getUseCaches() {
        b.trace("enter HttpURLConnection.getUseCaches()");
        throw new RuntimeException("Not implemented yet");
    }

    public void setIfModifiedSince(long modificationDate) {
        b.trace("enter HttpURLConnection.setIfModifiedSince(long)");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public long getIfModifiedSince() {
        b.trace("enter HttpURLConnection.getIfmodifiedSince()");
        throw new RuntimeException("Not implemented yet");
    }

    public boolean getDefaultUseCaches() {
        b.trace("enter HttpURLConnection.getDefaultUseCaches()");
        throw new RuntimeException("Not implemented yet");
    }

    public void setDefaultUseCaches(boolean isUsingCaches) {
        b.trace("enter HttpURLConnection.setDefaultUseCaches(boolean)");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public void setRequestProperty(String key, String value) {
        b.trace("enter HttpURLConnection.setRequestProperty()");
        throw new RuntimeException("This class can only be used with alreadyretrieved data");
    }

    public String getRequestProperty(String key) {
        b.trace("enter HttpURLConnection.getRequestProperty()");
        throw new RuntimeException("Not implemented yet");
    }
}
