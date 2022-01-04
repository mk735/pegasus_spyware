package com.network.media;

import com.network.android.c.a.a;
import com.network.b.b;

/* access modifiers changed from: package-private */
public final class o implements Runnable {
    o() {
    }

    public final void run() {
        try {
            b.t = true;
        } catch (Throwable th) {
            a.a("Dump innerDump sendDb Exception- " + th.getMessage(), th);
        }
    }
}
