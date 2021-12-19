package com.network.media;

import android.content.Context;
import android.content.Intent;
import com.network.android.c.a.a;

final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f165a;
    final /* synthetic */ Intent b;
    final /* synthetic */ String c;
    final /* synthetic */ CoreReceiver d;

    e(CoreReceiver coreReceiver, Context context, Intent intent, String str) {
        this.d = coreReceiver;
        this.f165a = context;
        this.b = intent;
        this.c = str;
    }

    public final void run() {
        try {
            CoreReceiver coreReceiver = this.d;
            CoreReceiver.a(this.f165a, this.b, this.c);
        } catch (Throwable th) {
            a.a("onReceive resendingHandler Exception- " + th.getMessage(), th);
        }
    }
}
