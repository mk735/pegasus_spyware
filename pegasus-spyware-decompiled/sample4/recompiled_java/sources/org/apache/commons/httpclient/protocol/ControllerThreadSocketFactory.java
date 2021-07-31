package org.apache.commons.httpclient.protocol;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.commons.httpclient.ConnectTimeoutException;
import org.apache.commons.httpclient.util.TimeoutController;

public final class ControllerThreadSocketFactory {
    private ControllerThreadSocketFactory() {
    }

    public static Socket createSocket(ProtocolSocketFactory socketfactory, String host, int port, InetAddress localAddress, int localPort, int timeout) throws IOException, UnknownHostException, ConnectTimeoutException {
        SocketTask task = new a(socketfactory, host, port, localAddress, localPort);
        try {
            TimeoutController.execute(task, (long) timeout);
            Socket socket = task.getSocket();
            if (SocketTask.a(task) == null) {
                return socket;
            }
            throw SocketTask.a(task);
        } catch (TimeoutController.TimeoutException e) {
            throw new ConnectTimeoutException(new StringBuffer().append("The host did not accept the connection within timeout of ").append(timeout).append(" ms").toString());
        }
    }

    public static Socket createSocket(SocketTask task, int timeout) throws IOException, UnknownHostException, ConnectTimeoutException {
        try {
            TimeoutController.execute(task, (long) timeout);
            Socket socket = task.getSocket();
            if (SocketTask.a(task) == null) {
                return socket;
            }
            throw SocketTask.a(task);
        } catch (TimeoutController.TimeoutException e) {
            throw new ConnectTimeoutException(new StringBuffer().append("The host did not accept the connection within timeout of ").append(timeout).append(" ms").toString());
        }
    }

    public static abstract class SocketTask implements Runnable {
        private Socket a;
        private IOException b;

        public abstract void doit() throws IOException;

        static IOException a(SocketTask x0) {
            return x0.b;
        }

        /* access modifiers changed from: protected */
        public void setSocket(Socket newSocket) {
            this.a = newSocket;
        }

        /* access modifiers changed from: protected */
        public Socket getSocket() {
            return this.a;
        }

        public void run() {
            try {
                doit();
            } catch (IOException e) {
                this.b = e;
            }
        }
    }
}
