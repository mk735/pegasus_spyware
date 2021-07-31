package com.lenovo.lps.sus.control;

import android.content.DialogInterface;

final class aj implements DialogInterface.OnClickListener {
    final /* synthetic */ SUSNotificationActivity a;

    aj(SUSNotificationActivity sUSNotificationActivity) {
        this.a = sUSNotificationActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (!(this.a.j == null || this.a.k == null)) {
            this.a.j.removeCallbacks(this.a.k);
        }
        SUSNotificationActivity.h = 3;
        dialogInterface.dismiss();
    }
}
