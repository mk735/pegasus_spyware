package com.network.android.monitor.observer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class f extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e f91a;

    f(e eVar) {
        this.f91a = eVar;
    }

    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.bluetooth.device.action.ACL_CONNECTED".equals(action)) {
            a.a("Bluetooth: BluetoothDevice.ACTION_ACL_CONNECTED");
            e.f90a = true;
        } else if ("android.bluetooth.device.action.ACL_DISCONNECTED".equals(action)) {
            a.a("Bluetooth: ACTION_ACL_DISCONNECTED");
            e.f90a = false;
        }
    }
}
