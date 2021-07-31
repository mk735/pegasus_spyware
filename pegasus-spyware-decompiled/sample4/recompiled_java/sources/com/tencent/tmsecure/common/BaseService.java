package com.tencent.tmsecure.common;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

public abstract class BaseService {
    private IBinder a;

    public final boolean equals(Object obj) {
        return obj != null && getClass() == obj.getClass();
    }

    /* access modifiers changed from: protected */
    public synchronized IBinder getBinder() {
        if (this.a == null) {
            this.a = onBind();
        }
        return this.a;
    }

    public abstract IBinder onBind();

    public void onCreate(Context context) {
    }

    public void onDestory() {
    }

    public void onStart(Intent intent) {
    }

    /* access modifiers changed from: protected */
    public final void stopSelf() {
        TMSService.stopService(this);
    }
}
