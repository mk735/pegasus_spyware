package com.network.android;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f83a;

    l(Context context) {
        this.f83a = context;
    }

    public final void run() {
        a.a("DataQueue sendDb run");
        if (j.c(this.f83a)) {
            j.b(this.f83a);
        }
    }
}
