package com.network.android.roomTap;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.network.android.c.a.a;

final class q extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ShowDesktop f125a;

    q(ShowDesktop showDesktop) {
        this.f125a = showDesktop;
    }

    public final void onReceive(Context context, Intent intent) {
        a.a("ShowDesktop got stop event. removing");
        try {
            this.f125a.finish();
        } catch (Exception e) {
            a.a("ShowDesktop finish Exception- " + e.getMessage(), e);
        }
    }
}
