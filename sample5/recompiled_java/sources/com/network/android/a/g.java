package com.network.android.a;

import android.content.Context;
import com.network.android.c.a.a;

final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f48a;

    g(Context context) {
        this.f48a = context;
    }

    public final void run() {
        try {
            c.d(this.f48a);
        } catch (Exception e) {
            a.a("kill: " + e.getMessage(), e);
        }
    }
}
