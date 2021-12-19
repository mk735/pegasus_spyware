package com.network.android.a;

import android.content.Context;

final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f50a;
    final /* synthetic */ String b;
    final /* synthetic */ int c;

    i(Context context, String str, int i) {
        this.f50a = context;
        this.b = str;
        this.c = i;
    }

    public final void run() {
        c.a(this.f50a, 0, this.b, this.c);
    }
}
