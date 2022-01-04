package com.lenovo.lps.sus.control;

import android.view.View;

final class j implements View.OnClickListener {
    final /* synthetic */ SUSCustdefNotificationActivity a;

    j(SUSCustdefNotificationActivity sUSCustdefNotificationActivity) {
        this.a = sUSCustdefNotificationActivity;
    }

    public final void onClick(View view) {
        if (view.equals(this.a.i)) {
            ae.b();
            SUSCustdefNotificationActivity.e = 3;
            this.a.finish();
        }
    }
}
