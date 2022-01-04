package com.network.android.monitor.observer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.telephony.TelephonyManager;
import com.network.android.monitor.a.a;

public final class e extends r {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f90a = false;
    private static final String[] b = new String[0];
    private t e;
    private BroadcastReceiver f = new BatteryReceiver();
    private final BroadcastReceiver g = new f(this);

    @Override // com.network.android.monitor.a.d
    public final void a(a aVar) {
        com.network.android.c.a.a.a("AndroidCellInfoWatcher start started");
        super.a(aVar);
        Context a2 = ((com.network.e.a.a) aVar).a();
        Context a3 = ((com.network.e.a.a) aVar).a();
        a3.registerReceiver(this.f, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        a3.registerReceiver(this.g, new IntentFilter("android.bluetooth.device.action.ACL_CONNECTED"));
        a3.registerReceiver(this.g, new IntentFilter("android.bluetooth.device.action.ACL_DISCONNECTED"));
        this.e = new t();
        ((TelephonyManager) a2.getSystemService("phone")).listen(this.e, 8);
        com.network.android.c.a.a.a("AndroidCellInfoWatcher start ended");
    }

    @Override // com.network.android.monitor.observer.r
    public final String[] a() {
        return b;
    }
}
