package tms;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.tools.ISingleton;
import java.util.HashMap;

public final class gx extends BaseManager {
    private final HashMap<Class<? extends ISingleton>, ISingleton> a = new HashMap<>();

    public final <T extends ISingleton> T a(Class<T> cls) {
        ISingleton iSingleton = this.a.get(cls);
        if (iSingleton == null) {
            synchronized (cls) {
                iSingleton = this.a.get(cls);
                if (iSingleton == null) {
                    try {
                        iSingleton = cls.newInstance();
                        if (iSingleton != null) {
                            iSingleton.onCreate();
                            this.a.put(cls, iSingleton);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        iSingleton = iSingleton;
                    }
                }
            }
        }
        return cls.cast(iSingleton);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
    }
}
