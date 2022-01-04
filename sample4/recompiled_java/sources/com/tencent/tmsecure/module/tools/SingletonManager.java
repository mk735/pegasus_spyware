package com.tencent.tmsecure.module.tools;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.gx;

public final class SingletonManager extends BaseManager {
    private gx a;

    public final <T extends ISingleton> T getSingleton(Class<T> cls) {
        return (T) this.a.a(cls);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new gx();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
