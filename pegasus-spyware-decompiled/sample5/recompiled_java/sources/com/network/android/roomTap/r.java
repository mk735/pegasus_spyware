package com.network.android.roomTap;

import android.app.NotificationManager;

final class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ShowDesktop f126a;

    r(ShowDesktop showDesktop) {
        this.f126a = showDesktop;
    }

    public final void run() {
        synchronized (this.f126a) {
            ((NotificationManager) this.f126a.getSystemService("notification")).cancel(0);
        }
    }
}
