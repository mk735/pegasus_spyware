package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import tms.bn;

/* access modifiers changed from: package-private */
public final class be extends BroadcastReceiver {
    final /* synthetic */ bn.b a;
    private TelephonyManager b = ((TelephonyManager) this.a.a.getSystemService("phone"));

    be(bn.b bVar) {
        this.a = bVar;
    }

    public final void onReceive(Context context, Intent intent) {
        if (this.b.getCallState() == 1) {
            String stringExtra = intent.getStringExtra("incoming_number");
            if (stringExtra == null) {
                stringExtra = getResultData();
            }
            String stripSeparators = PhoneNumberUtils.stripSeparators(stringExtra);
            if (!TextUtils.isEmpty(stripSeparators)) {
                new bf(this, stripSeparators).start();
            }
        }
    }
}
