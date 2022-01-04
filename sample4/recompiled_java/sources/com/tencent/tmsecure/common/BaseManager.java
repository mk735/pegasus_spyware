package com.tencent.tmsecure.common;

import android.content.Context;
import tms.f;

public abstract class BaseManager {
    public static final int TYPE_AUTO = 0;
    public static final int TYPE_FOREVER = 1;
    public static final int TYPE_ONCE = 2;
    private BaseManager a;

    protected static final boolean isExpired() {
        return f.a().e();
    }

    public int getSingletonType() {
        if (this.a != null) {
            return this.a.getSingletonType();
        }
        return 0;
    }

    public abstract void onCreate(Context context);

    /* access modifiers changed from: protected */
    public void setImpl(BaseManager baseManager) {
        this.a = baseManager;
    }
}
