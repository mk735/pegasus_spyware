package com.tencent.tmsecure.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.telephony.gsm.SmsManager;
import java.util.Iterator;

public abstract class SMSUtil {

    /* access modifiers changed from: package-private */
    public interface a {
        void a(String str, String str2);
    }

    /* access modifiers changed from: package-private */
    public static final class b implements a {
        private SmsManager a = SmsManager.getDefault();

        @Override // com.tencent.tmsecure.utils.SMSUtil.a
        public final void a(String str, String str2) {
            if (str2.length() > 70) {
                Iterator<String> it = this.a.divideMessage(str2).iterator();
                while (it.hasNext()) {
                    this.a.sendTextMessage(str, null, it.next(), null, null);
                }
                return;
            }
            this.a.sendTextMessage(str, null, str2, null, null);
        }
    }

    /* access modifiers changed from: package-private */
    public static final class c implements a {
        private android.telephony.SmsManager a = android.telephony.SmsManager.getDefault();

        @Override // com.tencent.tmsecure.utils.SMSUtil.a
        public final void a(String str, String str2) {
            if (str2.length() > 70) {
                Iterator<String> it = this.a.divideMessage(str2).iterator();
                while (it.hasNext()) {
                    this.a.sendTextMessage(str, null, it.next(), null, null);
                }
                return;
            }
            this.a.sendTextMessage(str, null, str2, null, null);
        }
    }

    private static void a(Context context, String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + str));
        intent.putExtra("address", str);
        intent.putExtra("sms_body", str2);
        intent.setType("vnd.android-dir/mms-sms");
        context.startActivity(intent);
    }

    public static void sendSMS(String str, String str2, Context context) {
        Log.i(str, str2);
        if (str != null && str2 != null) {
            try {
                (SDKUtil.getSDKVersion() > 3 ? new c() : new b()).a(str, str2);
            } catch (Exception e) {
                try {
                    a(context, str, str2);
                } catch (Exception e2) {
                }
            }
        }
    }
}
