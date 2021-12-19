package com.network.android.roomTap;

import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class o implements Runnable {
    o() {
    }

    public final void run() {
        try {
            k.f122a = true;
        } catch (Throwable th) {
            a.a("Screen Exception- " + th.getMessage(), th);
        }
    }
}
