package org.apache.commons.httpclient.util;

import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ExceptionUtil {
    static Class a;
    static Class b;
    private static final Log c;
    private static final Method d = a();
    private static final Class e = b();

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.util.ExceptionUtil");
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

    private static Method a() {
        Class cls;
        Class cls2;
        try {
            Class[] paramsClasses = new Class[1];
            if (b == null) {
                cls = a("java.lang.Throwable");
                b = cls;
            } else {
                cls = b;
            }
            paramsClasses[0] = cls;
            if (b == null) {
                cls2 = a("java.lang.Throwable");
                b = cls2;
            } else {
                cls2 = b;
            }
            return cls2.getMethod("initCause", paramsClasses);
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }

    private static Class b() {
        try {
            return Class.forName("java.net.SocketTimeoutException");
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    public static void initCause(Throwable throwable, Throwable cause) {
        if (d != null) {
            try {
                d.invoke(throwable, cause);
            } catch (Exception e2) {
                c.warn("Exception invoking Throwable.initCause", e2);
            }
        }
    }

    public static boolean isSocketTimeoutException(InterruptedIOException e2) {
        if (e != null) {
            return e.isInstance(e2);
        }
        return true;
    }
}
