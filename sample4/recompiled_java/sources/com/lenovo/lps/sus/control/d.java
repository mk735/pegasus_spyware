package com.lenovo.lps.sus.control;

import android.content.Context;
import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class d implements DialogInterface.OnDismissListener {
    private final /* synthetic */ Context a;

    d(Context context) {
        this.a = context;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        i.a(c.b, "SUSNotificationActivity popupPromptionDialog onDismiss myPromptionInfoAlertDialog=" + am.n + "; context=" + this.a);
        if (!(am.r == null || am.D == null)) {
            am.r.removeCallbacks(am.D);
        }
        am.q = 3;
        c.d(false);
    }
}
