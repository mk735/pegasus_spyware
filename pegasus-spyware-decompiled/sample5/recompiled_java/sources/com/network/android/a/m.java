package com.network.android.a;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f54a;

    m(Context context) {
        this.f54a = context;
    }

    public final void run() {
        try {
            c.e(this.f54a);
        } catch (Exception e) {
            a.a("kill: " + e.getMessage(), e);
        }
    }
}
