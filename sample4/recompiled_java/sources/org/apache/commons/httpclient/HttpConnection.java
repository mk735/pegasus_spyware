package org.apache.commons.httpclient;

import com.lenovo.lps.sus.c.c;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import org.apache.commons.httpclient.params.HttpConnectionParams;
import org.apache.commons.httpclient.protocol.Protocol;
import org.apache.commons.httpclient.protocol.ProtocolSocketFactory;
import org.apache.commons.httpclient.protocol.SecureProtocolSocketFactory;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.httpclient.util.ExceptionUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class HttpConnection {
    static Class a;
    private static final byte[] b = {13, 10};
    private static final Log c;
    private String d;
    private int e;
    private String f;
    private int g;
    private Socket h;
    private InputStream i;
    protected boolean isOpen;
    private OutputStream j;
    private InputStream k;
    private Protocol l;
    private HttpConnectionParams m;
    private boolean n;
    private boolean o;
    private boolean p;
    private HttpConnectionManager q;
    private InetAddress r;

    public HttpConnection(String host, int port) {
        this(null, -1, host, null, port, Protocol.getProtocol("http"));
    }

    public HttpConnection(String host, int port, Protocol protocol) {
        this(null, -1, host, null, port, protocol);
    }

    public HttpConnection(String host, String virtualHost, int port, Protocol protocol) {
        this(null, -1, host, virtualHost, port, protocol);
    }

    public HttpConnection(String proxyHost, int proxyPort, String host, int port) {
        this(proxyHost, proxyPort, host, null, port, Protocol.getProtocol("http"));
    }

    public HttpConnection(HostConfiguration hostConfiguration) {
        this(hostConfiguration.getProxyHost(), hostConfiguration.getProxyPort(), hostConfiguration.getHost(), hostConfiguration.getPort(), hostConfiguration.getProtocol());
        this.r = hostConfiguration.getLocalAddress();
    }

    public HttpConnection(String proxyHost, int proxyPort, String host, String virtualHost, int port, Protocol protocol) {
        this(proxyHost, proxyPort, host, port, protocol);
    }

    public HttpConnection(String proxyHost, int proxyPort, String host, int port, Protocol protocol) {
        this.d = null;
        this.e = -1;
        this.f = null;
        this.g = -1;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.isOpen = false;
        this.m = new HttpConnectionParams();
        this.n = false;
        this.o = false;
        this.p = false;
        if (host == null) {
            throw new IllegalArgumentException("host parameter is null");
        } else if (protocol == null) {
            throw new IllegalArgumentException("protocol is null");
        } else {
            this.f = proxyHost;
            this.g = proxyPort;
            this.d = host;
            this.e = protocol.resolvePort(port);
            this.l = protocol;
        }
    }

    /* access modifiers changed from: protected */
    public Socket getSocket() {
        return this.h;
    }

    public String getHost() {
        return this.d;
    }

    public void setHost(String host) throws IllegalStateException {
        if (host == null) {
            throw new IllegalArgumentException("host parameter is null");
        }
        assertNotOpen();
        this.d = host;
    }

    public String getVirtualHost() {
        return this.d;
    }

    public void setVirtualHost(String host) throws IllegalStateException {
        assertNotOpen();
    }

    public int getPort() {
        if (this.e < 0) {
            return isSecure() ? 443 : 80;
        }
        return this.e;
    }

    public void setPort(int port) throws IllegalStateException {
        assertNotOpen();
        this.e = port;
    }

    public String getProxyHost() {
        return this.f;
    }

    public void setProxyHost(String host) throws IllegalStateException {
        assertNotOpen();
        this.f = host;
    }

    public int getProxyPort() {
        return this.g;
    }

    public void setProxyPort(int port) throws IllegalStateException {
        assertNotOpen();
        this.g = port;
    }

    public boolean isSecure() {
        return this.l.isSecure();
    }

    public Protocol getProtocol() {
        return this.l;
    }

    public void setProtocol(Protocol protocol) {
        assertNotOpen();
        if (protocol == null) {
            throw new IllegalArgumentException("protocol is null");
        }
        this.l = protocol;
    }

    public InetAddress getLocalAddress() {
        return this.r;
    }

    public void setLocalAddress(InetAddress localAddress) {
        assertNotOpen();
        this.r = localAddress;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public boolean closeIfStale() throws IOException {
        if (!this.isOpen || !isStale()) {
            return false;
        }
        c.debug("Connection is stale, closing...");
        close();
        return true;
    }

    public boolean isStaleCheckingEnabled() {
        return this.m.isStaleCheckingEnabled();
    }

    public void setStaleCheckingEnabled(boolean staleCheckEnabled) {
        this.m.setStaleCheckingEnabled(staleCheckEnabled);
    }

    /* access modifiers changed from: protected */
    public boolean isStale() throws IOException {
        if (!this.isOpen) {
            return true;
        }
        boolean isStale = false;
        try {
            if (this.i.available() > 0) {
                return false;
            }
            try {
                this.h.setSoTimeout(1);
                this.i.mark(1);
                if (this.i.read() == -1) {
                    isStale = true;
                } else {
                    this.i.reset();
                }
                return isStale;
            } finally {
                this.h.setSoTimeout(this.m.getSoTimeout());
            }
        } catch (InterruptedIOException e2) {
            if (ExceptionUtil.isSocketTimeoutException(e2)) {
                return false;
            }
            throw e2;
        } catch (IOException e3) {
            c.debug("An error occurred while reading from the socket, is appears to be stale", e3);
            return true;
        }
    }

    public boolean isProxied() {
        return this.f != null && this.g > 0;
    }

    public void setLastResponseInputStream(InputStream inStream) {
        this.k = inStream;
    }

    public InputStream getLastResponseInputStream() {
        return this.k;
    }

    public HttpConnectionParams getParams() {
        return this.m;
    }

    public void setParams(HttpConnectionParams params) {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        this.m = params;
    }

    public void setSoTimeout(int timeout) throws SocketException, IllegalStateException {
        this.m.setSoTimeout(timeout);
        if (this.h != null) {
            this.h.setSoTimeout(timeout);
        }
    }

    public void setSocketTimeout(int timeout) throws SocketException, IllegalStateException {
        assertOpen();
        if (this.h != null) {
            this.h.setSoTimeout(timeout);
        }
    }

    public int getSoTimeout() throws SocketException {
        return this.m.getSoTimeout();
    }

    public void setConnectionTimeout(int timeout) {
        this.m.setConnectionTimeout(timeout);
    }

    public void open() throws IOException {
        ProtocolSocketFactory socketFactory;
        c.trace("enter HttpConnection.open()");
        String host = this.f == null ? this.d : this.f;
        int port = this.f == null ? this.e : this.g;
        assertNotOpen();
        if (c.isDebugEnabled()) {
            c.debug(new StringBuffer().append("Open connection to ").append(host).append(c.N).append(port).toString());
        }
        try {
            if (this.h == null) {
                this.o = isSecure() && !isProxied();
                if (!isSecure() || !isProxied()) {
                    socketFactory = this.l.getSocketFactory();
                } else {
                    socketFactory = Protocol.getProtocol("http").getSocketFactory();
                }
                this.h = socketFactory.createSocket(host, port, this.r, 0, this.m);
            }
            this.h.setTcpNoDelay(this.m.getTcpNoDelay());
            this.h.setSoTimeout(this.m.getSoTimeout());
            int linger = this.m.getLinger();
            if (linger >= 0) {
                this.h.setSoLinger(linger > 0, linger);
            }
            int sndBufSize = this.m.getSendBufferSize();
            if (sndBufSize >= 0) {
                this.h.setSendBufferSize(sndBufSize);
            }
            int rcvBufSize = this.m.getReceiveBufferSize();
            if (rcvBufSize >= 0) {
                this.h.setReceiveBufferSize(rcvBufSize);
            }
            int outbuffersize = this.h.getSendBufferSize();
            if (outbuffersize > 2048 || outbuffersize <= 0) {
                outbuffersize = 2048;
            }
            int inbuffersize = this.h.getReceiveBufferSize();
            if (inbuffersize > 2048 || inbuffersize <= 0) {
                inbuffersize = 2048;
            }
            this.i = new BufferedInputStream(this.h.getInputStream(), inbuffersize);
            this.j = new BufferedOutputStream(this.h.getOutputStream(), outbuffersize);
            this.isOpen = true;
        } catch (IOException e2) {
            closeSocketAndStreams();
            throw e2;
        }
    }

    public void tunnelCreated() throws IllegalStateException, IOException {
        c.trace("enter HttpConnection.tunnelCreated()");
        if (!isSecure() || !isProxied()) {
            throw new IllegalStateException("Connection must be secure and proxied to use this feature");
        } else if (this.o) {
            throw new IllegalStateException("Already using a secure socket");
        } else {
            if (c.isDebugEnabled()) {
                c.debug(new StringBuffer().append("Secure tunnel to ").append(this.d).append(c.N).append(this.e).toString());
            }
            this.h = ((SecureProtocolSocketFactory) this.l.getSocketFactory()).createSocket(this.h, this.d, this.e, true);
            int sndBufSize = this.m.getSendBufferSize();
            if (sndBufSize >= 0) {
                this.h.setSendBufferSize(sndBufSize);
            }
            int rcvBufSize = this.m.getReceiveBufferSize();
            if (rcvBufSize >= 0) {
                this.h.setReceiveBufferSize(rcvBufSize);
            }
            int outbuffersize = this.h.getSendBufferSize();
            if (outbuffersize > 2048) {
                outbuffersize = 2048;
            }
            int inbuffersize = this.h.getReceiveBufferSize();
            if (inbuffersize > 2048) {
                inbuffersize = 2048;
            }
            this.i = new BufferedInputStream(this.h.getInputStream(), inbuffersize);
            this.j = new BufferedOutputStream(this.h.getOutputStream(), outbuffersize);
            this.o = true;
            this.p = true;
        }
    }

    public boolean isTransparent() {
        return !isProxied() || this.p;
    }

    public void flushRequestOutputStream() throws IOException {
        c.trace("enter HttpConnection.flushRequestOutputStream()");
        assertOpen();
        this.j.flush();
    }

    public OutputStream getRequestOutputStream() throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.getRequestOutputStream()");
        assertOpen();
        OutputStream out = this.j;
        if (e.b.a()) {
            return new g(out, e.b);
        }
        return out;
    }

    public InputStream getResponseInputStream() throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.getResponseInputStream()");
        assertOpen();
        return this.i;
    }

    public boolean isResponseAvailable() throws IOException {
        c.trace("enter HttpConnection.isResponseAvailable()");
        if (!this.isOpen || this.i.available() <= 0) {
            return false;
        }
        return true;
    }

    public boolean isResponseAvailable(int timeout) throws IOException {
        c.trace("enter HttpConnection.isResponseAvailable(int)");
        assertOpen();
        boolean result = false;
        if (this.i.available() > 0) {
            return true;
        }
        try {
            this.h.setSoTimeout(timeout);
            this.i.mark(1);
            if (this.i.read() != -1) {
                this.i.reset();
                c.debug("Input data available");
                result = true;
            } else {
                c.debug("Input data not available");
            }
            try {
                this.h.setSoTimeout(this.m.getSoTimeout());
                return result;
            } catch (IOException ioe) {
                c.debug("An error ocurred while resetting soTimeout, we will assume that no response is available.", ioe);
                return false;
            }
        } catch (InterruptedIOException e2) {
            if (!ExceptionUtil.isSocketTimeoutException(e2)) {
                throw e2;
            }
            if (c.isDebugEnabled()) {
                c.debug(new StringBuffer().append("Input data not available after ").append(timeout).append(" ms").toString());
            }
            try {
                this.h.setSoTimeout(this.m.getSoTimeout());
                return false;
            } catch (IOException ioe2) {
                c.debug("An error ocurred while resetting soTimeout, we will assume that no response is available.", ioe2);
                return false;
            }
        } catch (Throwable th) {
            try {
                this.h.setSoTimeout(this.m.getSoTimeout());
            } catch (IOException ioe3) {
                c.debug("An error ocurred while resetting soTimeout, we will assume that no response is available.", ioe3);
            }
            throw th;
        }
    }

    public void write(byte[] data) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.write(byte[])");
        write(data, 0, data.length);
    }

    public void write(byte[] data, int offset, int length) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.write(byte[], int, int)");
        if (offset < 0) {
            throw new IllegalArgumentException("Array offset may not be negative");
        } else if (length < 0) {
            throw new IllegalArgumentException("Array length may not be negative");
        } else if (offset + length > data.length) {
            throw new IllegalArgumentException("Given offset and length exceed the array length");
        } else {
            assertOpen();
            this.j.write(data, offset, length);
        }
    }

    public void writeLine(byte[] data) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.writeLine(byte[])");
        write(data);
        writeLine();
    }

    public void writeLine() throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.writeLine()");
        write(b);
    }

    public void print(String data) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.print(String)");
        write(EncodingUtil.getBytes(data, "ISO-8859-1"));
    }

    public void print(String data, String charset) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.print(String)");
        write(EncodingUtil.getBytes(data, charset));
    }

    public void printLine(String data) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.printLine(String)");
        writeLine(EncodingUtil.getBytes(data, "ISO-8859-1"));
    }

    public void printLine(String data, String charset) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.printLine(String)");
        writeLine(EncodingUtil.getBytes(data, charset));
    }

    public void printLine() throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.printLine()");
        writeLine();
    }

    public String readLine() throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.readLine()");
        assertOpen();
        return HttpParser.readLine(this.i);
    }

    public String readLine(String charset) throws IOException, IllegalStateException {
        c.trace("enter HttpConnection.readLine()");
        assertOpen();
        return HttpParser.readLine(this.i, charset);
    }

    public void shutdownOutput() {
        c.trace("enter HttpConnection.shutdownOutput()");
        try {
            Class<?> cls = this.h.getClass();
            cls.getMethod("shutdownOutput", new Class[0]).invoke(this.h, new Object[0]);
        } catch (Exception ex) {
            c.debug("Unexpected Exception caught", ex);
        }
    }

    public void close() {
        c.trace("enter HttpConnection.close()");
        closeSocketAndStreams();
    }

    public HttpConnectionManager getHttpConnectionManager() {
        return this.q;
    }

    public void setHttpConnectionManager(HttpConnectionManager httpConnectionManager) {
        this.q = httpConnectionManager;
    }

    public void releaseConnection() {
        c.trace("enter HttpConnection.releaseConnection()");
        if (this.n) {
            c.debug("Connection is locked.  Call to releaseConnection() ignored.");
        } else if (this.q != null) {
            c.debug("Releasing connection back to connection manager.");
            this.q.releaseConnection(this);
        } else {
            c.warn("HttpConnectionManager is null.  Connection cannot be released.");
        }
    }

    /* access modifiers changed from: protected */
    public boolean isLocked() {
        return this.n;
    }

    /* access modifiers changed from: protected */
    public void setLocked(boolean locked) {
        this.n = locked;
    }

    /* access modifiers changed from: protected */
    public void closeSocketAndStreams() {
        c.trace("enter HttpConnection.closeSockedAndStreams()");
        this.isOpen = false;
        this.k = null;
        if (this.j != null) {
            OutputStream temp = this.j;
            this.j = null;
            try {
                temp.close();
            } catch (Exception ex) {
                c.debug("Exception caught when closing output", ex);
            }
        }
        if (this.i != null) {
            InputStream temp2 = this.i;
            this.i = null;
            try {
                temp2.close();
            } catch (Exception ex2) {
                c.debug("Exception caught when closing input", ex2);
            }
        }
        if (this.h != null) {
            Socket temp3 = this.h;
            this.h = null;
            try {
                temp3.close();
            } catch (Exception ex3) {
                c.debug("Exception caught when closing socket", ex3);
            }
        }
        this.p = false;
        this.o = false;
    }

    /* access modifiers changed from: protected */
    public void assertNotOpen() throws IllegalStateException {
        if (this.isOpen) {
            throw new IllegalStateException("Connection is open");
        }
    }

    /* access modifiers changed from: protected */
    public void assertOpen() throws IllegalStateException {
        if (!this.isOpen) {
            throw new IllegalStateException("Connection is not open");
        }
    }

    public int getSendBufferSize() throws SocketException {
        if (this.h == null) {
            return -1;
        }
        return this.h.getSendBufferSize();
    }

    public void setSendBufferSize(int sendBufferSize) throws SocketException {
        this.m.setSendBufferSize(sendBufferSize);
    }

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.HttpConnection");
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
}
