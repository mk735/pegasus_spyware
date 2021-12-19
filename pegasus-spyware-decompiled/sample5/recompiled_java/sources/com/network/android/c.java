package com.network.android;

import com.network.android.roomTap.AutoAnswerReceiver;

final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f71a;

    c(b bVar) {
        this.f71a = bVar;
    }

    public final void run() {
        AutoAnswerReceiver.f(this.f71a.f69a);
    }
}
