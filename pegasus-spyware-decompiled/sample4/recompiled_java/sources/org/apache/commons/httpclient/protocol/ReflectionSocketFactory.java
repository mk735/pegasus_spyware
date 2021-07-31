package org.apache.commons.httpclient.protocol;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.commons.httpclient.ConnectTimeoutException;

public final class ReflectionSocketFactory {
    static Class a;
    static Class b;
    private static boolean c = false;
    private static Constructor d = null;
    private static Method e = null;
    private static Method f = null;
    private static Class g = null;

    private ReflectionSocketFactory() {
    }

    public static Socket createSocket(String socketfactoryName, String host, int port, InetAddress localAddress, int localPort, int timeout) throws IOException, UnknownHostException, ConnectTimeoutException {
        Class cls;
        Class cls2;
        Class<?> cls3;
        if (c) {
            return null;
        }
        try {
            Class socketfactoryClass = Class.forName(socketfactoryName);
            Socket socket = (Socket) socketfactoryClass.getMethod("createSocket", new Class[0]).invoke(socketfactoryClass.getMethod("getDefault", new Class[0]).invoke(null, new Object[0]), new Object[0]);
            if (d == null) {
                Class addressClass = Class.forName("java.net.InetSocketAddress");
                Class<?>[] clsArr = new Class[2];
                if (a == null) {
                    cls3 = a("java.net.InetAddress");
                    a = cls3;
                } else {
                    cls3 = a;
                }
                clsArr[0] = cls3;
                clsArr[1] = Integer.TYPE;
                d = addressClass.getConstructor(clsArr);
            }
            Object remoteaddr = d.newInstance(InetAddress.getByName(host), new Integer(port));
            Object localaddr = d.newInstance(localAddress, new Integer(localPort));
            if (e == null) {
                if (b == null) {
                    cls2 = a("java.net.Socket");
                    b = cls2;
                } else {
                    cls2 = b;
                }
                e = cls2.getMethod("connect", Class.forName("java.net.SocketAddress"), Integer.TYPE);
            }
            if (f == null) {
                if (b == null) {
                    cls = a("java.net.Socket");
                    b = cls;
                } else {
                    cls = b;
                }
                f = cls.getMethod("bind", Class.forName("java.net.SocketAddress"));
            }
            f.invoke(socket, localaddr);
            e.invoke(socket, remoteaddr, new Integer(timeout));
            return socket;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getTargetException();
            if (g == null) {
                try {
                    g = Class.forName("java.net.SocketTimeoutException");
                } catch (ClassNotFoundException e3) {
                    c = true;
                    return null;
                }
            }
            if (g.isInstance(cause)) {
                throw new ConnectTimeoutException(new StringBuffer().append("The host did not accept the connection within timeout of ").append(timeout).append(" ms").toString(), cause);
            } else if (!(cause instanceof IOException)) {
                return null;
            } else {
                throw ((IOException) cause);
            }
        } catch (Exception e4) {
            c = true;
            return null;
        }
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }
}
