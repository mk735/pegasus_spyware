package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

final class y implements DialogInterface.OnCancelListener {
    final /* synthetic */ SUSNotificationActivity a;

    y(SUSNotificationActivity sUSNotificationActivity) {
        this.a = sUSNotificationActivity;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        i.a(c.b, "SUSNotificationActivity popupPromptionDialog CancelListener");
        if (!(this.a.j == null || this.a.k == null)) {
            this.a.j.removeCallbacks(this.a.k);
        }
        SUSNotificationActivity.h = 3;
        dialogInterface.dismiss();
    }
}
