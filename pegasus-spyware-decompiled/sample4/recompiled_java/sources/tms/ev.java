package tms;

import android.content.Intent;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;
import com.tencent.tmsecure.module.powersaving.PowerSavingEventListener;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public final class ev extends en {
    final /* synthetic */ gd e;

    ev(gd gdVar) {
        this.e = gdVar;
    }

    @Override // tms.en
    public final void a(Intent intent) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onBatteryLevelChanged(intent);
            }
        }
    }

    @Override // tms.en
    public final void a(boolean z) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onCloseWifi(z);
            }
        }
    }

    @Override // tms.en
    public final boolean a() {
        return this.e.b;
    }

    @Override // tms.en
    public final PowerSavingConfig b() {
        return this.e.a;
    }

    @Override // tms.en
    public final void b(Intent intent) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onStartBatteryCharging(intent);
            }
        }
    }

    @Override // tms.en
    public final void b(boolean z) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onOpenWifi(z);
            }
        }
    }

    @Override // tms.en
    public final void c(Intent intent) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onStopBatteryCharging(intent);
            }
        }
    }

    @Override // tms.en
    public final void c(boolean z) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onCloseMobileNetwork(z);
            }
        }
    }

    @Override // tms.en
    public final void d(Intent intent) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onFinishBatteryCharging(intent);
            }
        }
    }

    @Override // tms.en
    public final void d(boolean z) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onOpenMobileNetwork(z);
            }
        }
    }

    @Override // tms.en
    public final void e(boolean z) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onCloseBlueTooth(z);
            }
        }
    }

    @Override // tms.en
    public final void f(boolean z) {
        for (WeakReference weakReference : this.e.f) {
            PowerSavingEventListener powerSavingEventListener = (PowerSavingEventListener) weakReference.get();
            if (powerSavingEventListener != null) {
                powerSavingEventListener.onOpenBlueTooth(z);
            }
        }
    }
}
