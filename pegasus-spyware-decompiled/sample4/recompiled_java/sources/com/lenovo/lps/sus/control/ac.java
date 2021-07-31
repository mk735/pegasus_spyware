package com.lenovo.lps.sus.control;

import android.content.DialogInterface;

final class ac implements DialogInterface.OnClickListener {
    final /* synthetic */ SUSNotificationActivity a;

    ac(SUSNotificationActivity sUSNotificationActivity) {
        this.a = sUSNotificationActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (!(this.a.j == null || this.a.k == null)) {
            this.a.j.removeCallbacks(this.a.k);
        }
        ae.b();
        SUSNotificationActivity.h = 3;
        dialogInterface.dismiss();
    }
}
