package tms;

import android.content.Intent;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.Arrays;

/* access modifiers changed from: package-private */
public final class bw {
    private ba a;

    bw() {
    }

    private static boolean a(String str, String... strArr) {
        return strArr.length > 1 ? Arrays.asList(strArr).contains(str) : strArr[0].equals(str);
    }

    public final synchronized void a(Intent intent) {
        String action = intent.getAction();
        String type = intent.getType();
        if (action != null) {
            if (a(action, "android.provider.Telephony.SMS_RECEIVED", "android.provider.Telephony.SMS_RECEIVED2", "android.provider.Telephony.GSM_SMS_RECEIVED")) {
                this.a = new cb(intent);
            } else if (type == null) {
                this.a = null;
            } else {
                if (a(action, "android.provider.Telephony.WAP_PUSH_RECEIVED")) {
                    if (a(type, PushReceiver.CONTENT_MIME_TYPE_PUSH_SI, PushReceiver.CONTENT_MIME_TYPE_PUSH_SL, "application/vnd.wap.coc")) {
                        this.a = new ct(intent);
                    } else {
                        if (a(type, "application/vnd.wap.mms-message")) {
                            this.a = new bv(intent);
                        }
                    }
                } else {
                    this.a = null;
                }
            }
        }
    }

    public final synchronized boolean a() {
        return this.a != null;
    }

    public final synchronized SmsEntity b() {
        SmsEntity smsEntity = null;
        synchronized (this) {
            if (this.a != null) {
                smsEntity = this.a.c();
                this.a = null;
            }
        }
        return smsEntity;
    }
}
