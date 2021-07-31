package com.tencent.tmsecure.module.powersaving;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.gc;
import tms.gd;

public final class PowerSavingManager extends BaseManager {
    private gd a;
    private gc b;

    public final synchronized IBatteryInfoHelper getBatteryInfoHelper() {
        IBatteryInfoHelper b2;
        if (isExpired()) {
            if (this.b == null) {
                this.b = new gc();
            }
            b2 = this.b;
        } else {
            b2 = this.a.b();
        }
        return b2;
    }

    public final int getBatteryLevel() {
        if (isExpired()) {
            return 100;
        }
        return this.a.a();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new gd();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void registerPowerSavingEventListener(PowerSavingEventListener powerSavingEventListener) {
        if (!isExpired()) {
            this.a.a(powerSavingEventListener);
        }
    }

    public final void setPowerSavingConfig(PowerSavingConfig powerSavingConfig, boolean z) {
        if (!isExpired()) {
            this.a.a(powerSavingConfig, z);
        }
    }

    public final void unRegisterPowerSavingEventListener(PowerSavingEventListener powerSavingEventListener) {
        if (!isExpired()) {
            this.a.b(powerSavingEventListener);
        }
    }
}
