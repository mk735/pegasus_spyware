package com.lenovo.lps.sus.control;

import android.app.Activity;
import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

final class ab implements DialogInterface.OnDismissListener {
    final /* synthetic */ SUSNotificationActivity a;

    ab(SUSNotificationActivity sUSNotificationActivity) {
        this.a = sUSNotificationActivity;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        i.a(c.b, "SUSNotificationActivity popupPromptionDialog onDismiss myCustomDialog=" + SUSNotificationActivity.d + "; myContext=" + this.a.e);
        if (!(this.a.j == null || this.a.k == null)) {
            this.a.j.removeCallbacks(this.a.k);
        }
        SUSNotificationActivity.h = 3;
        if (this.a.e != null) {
            ((Activity) this.a.e).finish();
        }
    }
}
