package com.network.h;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f149a;
    final /* synthetic */ String b;

    h(Context context, String str) {
        this.f149a = context;
        this.b = str;
    }

    public final void run() {
        b.b(this.f149a, this.b);
    }
}
