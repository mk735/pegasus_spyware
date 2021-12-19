package com.network.android.roomTap;

import android.content.Intent;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;

final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m f124a;

    n(m mVar) {
        this.f124a = mVar;
    }

    public final void run() {
        try {
            NetworkApp.a().sendBroadcast(new Intent("stop_filter_event"));
        } catch (Throwable th) {
            a.a("BlackSCreen last case was activated Exception- " + th.getMessage(), th);
        }
    }
}
