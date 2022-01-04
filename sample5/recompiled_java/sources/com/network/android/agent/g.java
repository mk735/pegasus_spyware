package com.network.android.agent;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.j;
import com.network.h.b;

final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f65a;
    final /* synthetic */ Context b;
    final /* synthetic */ NetworkReceiver c;

    g(NetworkReceiver networkReceiver, Intent intent, Context context) {
        this.c = networkReceiver;
        this.f65a = intent;
        this.b = context;
    }

    public final void run() {
        try {
            String action = this.f65a.getAction();
            a.a("NetworkReceiver: 2.9.3 action:" + action + " apkPAth: " + b.c(this.b));
            if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (!j.a((TelephonyManager) this.b.getSystemService("phone"), this.b, true, (ConnectivityManager) this.b.getSystemService("connectivity")) && !j.c) {
                    c.a(this.b, "httpPing");
                }
            }
        } catch (Throwable th) {
            a.a("NetworkReceiver onReceive- " + th.getMessage(), th);
        }
    }
}
