package tms;

import android.content.Context;
import com.tencent.tmsecure.module.permission.IDummyService;
import java.util.ArrayList;
import java.util.List;

public abstract class ff {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final String d = "process_id";
    public static final String e = "com.tencent.tmsecure.hookeraction";
    static String f;
    static Context g;
    static List<IDummyService.Stub> h = new ArrayList();

    ff() {
    }

    public static synchronized void a(Context context) {
        synchronized (ff.class) {
            g = context;
        }
    }

    public static synchronized void a(String str) {
        synchronized (ff.class) {
            f = str;
        }
    }

    protected static Object[] c() {
        Object[] objArr = new Object[(h.size() * 2)];
        int i = 0;
        for (IDummyService.Stub stub : h) {
            objArr[i] = stub.getServiceName();
            objArr[i + 1] = stub;
            i += 2;
        }
        return objArr;
    }

    public static synchronized Context d() {
        Context context;
        synchronized (ff.class) {
            context = g;
        }
        return context;
    }

    public static synchronized String e() {
        String str;
        synchronized (ff.class) {
            str = f;
        }
        return str;
    }

    /* access modifiers changed from: protected */
    public void a(IDummyService.Stub stub) {
        h.add(stub);
    }

    public abstract Object[] a();

    public abstract void b();
}
