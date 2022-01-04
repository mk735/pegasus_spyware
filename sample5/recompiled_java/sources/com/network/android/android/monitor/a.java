package com.network.android.android.monitor;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* access modifiers changed from: package-private */
public final class a extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AndroidMonitorApplication f68a;

    a(AndroidMonitorApplication androidMonitorApplication) {
        this.f68a = androidMonitorApplication;
    }

    public final void onReceive(Context context, Intent intent) {
        this.f68a.f66a.b(new com.network.e.a.a(this, context, intent));
    }
}
