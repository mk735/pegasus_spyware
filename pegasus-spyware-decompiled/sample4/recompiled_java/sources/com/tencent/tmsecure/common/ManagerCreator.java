package com.tencent.tmsecure.common;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import tms.f;

public final class ManagerCreator {
    private static volatile ManagerCreator a = null;
    private HashMap<Class<? extends BaseManager>, BaseManager> b = new HashMap<>();
    private HashMap<Class<? extends BaseManager>, WeakReference<? extends BaseManager>> c = new HashMap<>();
    private Context d;

    private ManagerCreator(Context context) {
        this.d = context.getApplicationContext();
    }

    private <T extends BaseManager> T a(Class<T> cls) {
        T cast;
        WeakReference<? extends BaseManager> weakReference;
        if (!f.a().a(cls)) {
            throw new SecurityException("Your license did not have the permission that geting the Manager named " + cls.getSimpleName());
        } else if (cls == null) {
            throw new NullPointerException("the param of getManager can't be null.");
        } else {
            synchronized (cls) {
                cast = cls.cast(this.b.get(cls));
                if (cast == null && (weakReference = this.c.get(cls)) != null) {
                    cast = cls.cast(weakReference.get());
                }
                if (cast == null) {
                    try {
                        cast = cls.newInstance();
                        cast.onCreate(this.d);
                        if (cast.getSingletonType() == 1) {
                            this.b.put(cls, cast);
                        } else if (cast.getSingletonType() == 0) {
                            this.c.put(cls, new WeakReference<>(cast));
                        }
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                }
            }
            return cast;
        }
    }

    static synchronized ManagerCreator a() {
        ManagerCreator managerCreator;
        synchronized (ManagerCreator.class) {
            if (a == null) {
                a = new ManagerCreator(TMSApplication.getApplicaionContext());
            }
            managerCreator = a;
        }
        return managerCreator;
    }

    public static <T extends BaseManager> T getManager(Class<T> cls) {
        return (T) a().a(cls);
    }
}
