package org.apache.commons.httpclient.protocol;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.commons.httpclient.ConnectTimeoutException;
import org.apache.commons.httpclient.params.HttpConnectionParams;

public class DefaultProtocolSocketFactory implements ProtocolSocketFactory {
    private static final DefaultProtocolSocketFactory a = new DefaultProtocolSocketFactory();

    static DefaultProtocolSocketFactory a() {
        return a;
    }

    @Override // org.apache.commons.httpclient.protocol.ProtocolSocketFactory
    public Socket createSocket(String host, int port, InetAddress localAddress, int localPort) throws IOException, UnknownHostException {
        return new Socket(host, port, localAddress, localPort);
    }

    @Override // org.apache.commons.httpclient.protocol.ProtocolSocketFactory
    public Socket createSocket(String host, int port, InetAddress localAddress, int localPort, HttpConnectionParams params) throws IOException, UnknownHostException, ConnectTimeoutException {
        if (params == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        int timeout = params.getConnectionTimeout();
        if (timeout == 0) {
            return createSocket(host, port, localAddress, localPort);
        }
        Socket socket = ReflectionSocketFactory.createSocket("javax.net.SocketFactory", host, port, localAddress, localPort, timeout);
        if (socket == null) {
            return ControllerThreadSocketFactory.createSocket(this, host, port, localAddress, localPort, timeout);
        }
        return socket;
    }

    @Override // org.apache.commons.httpclient.protocol.ProtocolSocketFactory
    public Socket createSocket(String host, int port) throws IOException, UnknownHostException {
        return new Socket(host, port);
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass().equals(getClass());
    }

    public int hashCode() {
        return getClass().hashCode();
    }
}
