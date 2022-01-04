package com.network.android.agent;

import android.content.Context;
import com.network.h.b;

final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f59a;
    final /* synthetic */ NetworkApp b;

    a(NetworkApp networkApp, Context context) {
        this.b = networkApp;
        this.f59a = context;
    }

    public final void run() {
        try {
            b.h(this.f59a);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("NetworkApp checkIfAntiduteExists Exception- " + th.getMessage(), th);
        }
    }
}
