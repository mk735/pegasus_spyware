package com.network.ussd;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class a extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ CDUSSDService f174a;

    a(CDUSSDService cDUSSDService) {
        this.f174a = cDUSSDService;
    }

    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.INSERT")) {
            this.f174a.mActive = true;
            com.network.android.c.a.a.a("CDUSSDService ussdactivate ussd listener");
        } else if (intent.getAction().equals("android.intent.action.DELETE")) {
            this.f174a.mActive = false;
            com.network.android.c.a.a.a("CDUSSDService deactivate ussd listener");
        }
    }
}
