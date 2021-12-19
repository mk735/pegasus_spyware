package com.network.h;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f145a;

    d(Context context) {
        this.f145a = context;
    }

    public final void run() {
        try {
            b.b(this.f145a);
        } catch (Throwable th) {
            a.a("killProcess: " + th.getMessage(), th);
        }
    }
}
