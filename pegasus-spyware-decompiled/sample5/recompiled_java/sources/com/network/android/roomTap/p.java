package com.network.android.roomTap;

import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class p implements Runnable {
    p() {
    }

    public final void run() {
        try {
            k.f.release();
            a.a("turnScreenOnForLimitedTime released screen lock");
        } catch (Throwable th) {
            a.a("turnScreenOnForLimitedTime handler exception: \n\n- " + th.getMessage(), th);
        }
    }
}
