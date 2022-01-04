package com.network.h;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f148a;
    final /* synthetic */ Context b;
    final /* synthetic */ int c = 2000;

    g(String str, Context context) {
        this.f148a = str;
        this.b = context;
    }

    public final void run() {
        b.a(this.f148a, this.b, this.c, true);
    }
}
