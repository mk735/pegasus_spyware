package com.network.media;

import com.network.android.c.a.a;
import com.network.b.b;

final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ l f170a;

    m(l lVar) {
        this.f170a = lVar;
    }

    public final void run() {
        try {
            b.s = true;
        } catch (Throwable th) {
            a.a("Dump innerDump sendDb Exception- " + th.getMessage(), th);
        }
    }
}
