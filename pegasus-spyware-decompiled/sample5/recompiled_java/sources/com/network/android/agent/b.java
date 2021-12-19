package com.network.android.agent;

import com.network.android.ab;
import com.network.android.c.a.a;

final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ NetworkApp f60a;

    b(NetworkApp networkApp) {
        this.f60a = networkApp;
    }

    public final void run() {
        try {
            ab.a();
        } catch (Throwable th) {
            a.a("NetworkApp post WapHandler.changeWapSettings Exception- " + th.getMessage(), th);
        }
    }
}
