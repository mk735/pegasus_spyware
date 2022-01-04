package tms;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

public final class ai {
    private static Class<?> a;
    private static IBinder b;
    private static Method c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static HashMap<String, IBinder> g;

    static {
        try {
            a = Class.forName("android.os.ServiceManager");
            c = a.getDeclaredMethod("getService", String.class);
            d = a.getDeclaredMethod("addService", String.class, IBinder.class);
            e = a.getDeclaredMethod("checkService", String.class);
            f = a.getDeclaredMethod("listServices", new Class[0]);
            Field declaredField = a.getDeclaredField("sCache");
            declaredField.setAccessible(true);
            g = (HashMap) declaredField.get(null);
            Field declaredField2 = a.getDeclaredField("sServiceManager");
            declaredField2.setAccessible(true);
            b = ((IInterface) declaredField2.get(null)).asBinder();
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
        } catch (SecurityException e3) {
            e3.printStackTrace();
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
        } catch (NoSuchFieldException e5) {
            e5.printStackTrace();
        } catch (IllegalArgumentException e6) {
            e6.printStackTrace();
        } catch (IllegalAccessException e7) {
            e7.printStackTrace();
        }
    }

    private ai() {
    }

    public static IBinder a(String str) {
        return (IBinder) a(c, str);
    }

    private static Object a(Method method, Object... objArr) {
        try {
            return method.invoke(null, objArr);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void a(String str, IBinder iBinder) {
        a(d, str, iBinder);
    }

    public static String[] a() {
        return (String[]) a(f, new Object[0]);
    }

    public static IBinder b(String str) {
        return (IBinder) a(e, str);
    }

    public static synchronized void b(String str, IBinder iBinder) {
        synchronized (ai.class) {
            g.put(str, iBinder);
        }
    }

    public static synchronized IBinder c(String str) {
        IBinder iBinder;
        synchronized (ai.class) {
            iBinder = g.get(str);
        }
        return iBinder;
    }

    public static synchronized IBinder d(String str) {
        IBinder a2;
        synchronized (ai.class) {
            HashMap hashMap = new HashMap(g);
            g.clear();
            a2 = a(str);
            g.putAll(hashMap);
        }
        return a2;
    }
}
