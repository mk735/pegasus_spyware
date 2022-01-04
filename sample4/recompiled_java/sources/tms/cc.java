package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import java.util.concurrent.ConcurrentLinkedQueue;
import tms.cs;

/* access modifiers changed from: package-private */
public final class cc extends BroadcastReceiver {
    final /* synthetic */ cs.a a;

    cc(cs.a aVar) {
        this.a = aVar;
    }

    public final void onReceive(Context context, Intent intent) {
        TelephonyManager telephonyManager = (TelephonyManager) this.a.a.getSystemService("phone");
        if (intent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL")) {
            String stringExtra = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
            if (stringExtra == null) {
                stringExtra = getResultData();
            }
            ConcurrentLinkedQueue concurrentLinkedQueue = this.a.e;
            if (stringExtra == null) {
                stringExtra = "null";
            }
            concurrentLinkedQueue.add(stringExtra);
        } else if (telephonyManager.getCallState() == 1) {
            String stringExtra2 = intent.getStringExtra("incoming_number");
            if (stringExtra2 == null) {
                stringExtra2 = getResultData();
            }
            String stripSeparators = PhoneNumberUtils.stripSeparators(stringExtra2);
            ConcurrentLinkedQueue concurrentLinkedQueue2 = this.a.d;
            if (stripSeparators == null) {
                stripSeparators = "null";
            }
            concurrentLinkedQueue2.add(stripSeparators);
        }
    }
}
