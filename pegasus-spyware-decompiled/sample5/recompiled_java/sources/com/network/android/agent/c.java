package com.network.android.agent;

import com.network.android.c.a.a;

final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ NetworkApp f61a;

    c(NetworkApp networkApp) {
        this.f61a = networkApp;
    }

    public final void run() {
        try {
            NetworkApp.a(this.f61a);
            NetworkApp.b(this.f61a);
        } catch (Throwable th) {
            a.a("NetworkApp post initializeAndCallDump Exception- " + th.getMessage(), th);
        }
    }
}
