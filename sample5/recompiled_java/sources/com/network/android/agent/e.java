package com.network.android.agent;

import android.content.Context;

/* access modifiers changed from: package-private */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f63a;

    e(Context context) {
        this.f63a = context;
    }

    public final void run() {
        NetworkApp.b(this.f63a);
    }
}
