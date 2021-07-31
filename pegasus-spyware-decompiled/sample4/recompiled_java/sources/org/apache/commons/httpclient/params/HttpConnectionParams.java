package org.apache.commons.httpclient.params;

public class HttpConnectionParams extends DefaultHttpParams {
    public static final String CONNECTION_TIMEOUT = "http.connection.timeout";
    public static final String SO_LINGER = "http.socket.linger";
    public static final String SO_RCVBUF = "http.socket.receivebuffer";
    public static final String SO_SNDBUF = "http.socket.sendbuffer";
    public static final String SO_TIMEOUT = "http.socket.timeout";
    public static final String STALE_CONNECTION_CHECK = "http.connection.stalecheck";
    public static final String TCP_NODELAY = "http.tcp.nodelay";

    public int getSoTimeout() {
        return getIntParameter("http.socket.timeout", 0);
    }

    public void setSoTimeout(int timeout) {
        setIntParameter("http.socket.timeout", timeout);
    }

    public void setTcpNoDelay(boolean value) {
        setBooleanParameter(TCP_NODELAY, value);
    }

    public boolean getTcpNoDelay() {
        return getBooleanParameter(TCP_NODELAY, true);
    }

    public int getSendBufferSize() {
        return getIntParameter(SO_SNDBUF, -1);
    }

    public void setSendBufferSize(int size) {
        setIntParameter(SO_SNDBUF, size);
    }

    public int getReceiveBufferSize() {
        return getIntParameter(SO_RCVBUF, -1);
    }

    public void setReceiveBufferSize(int size) {
        setIntParameter(SO_RCVBUF, size);
    }

    public int getLinger() {
        return getIntParameter(SO_LINGER, -1);
    }

    public void setLinger(int value) {
        setIntParameter(SO_LINGER, value);
    }

    public int getConnectionTimeout() {
        return getIntParameter(CONNECTION_TIMEOUT, 0);
    }

    public void setConnectionTimeout(int timeout) {
        setIntParameter(CONNECTION_TIMEOUT, timeout);
    }

    public boolean isStaleCheckingEnabled() {
        return getBooleanParameter(STALE_CONNECTION_CHECK, true);
    }

    public void setStaleCheckingEnabled(boolean value) {
        setBooleanParameter(STALE_CONNECTION_CHECK, value);
    }
}
