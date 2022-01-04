package com.lenovo.lps.sus.control;

import android.view.View;

final class ak implements View.OnClickListener {
    final /* synthetic */ SUSCustdefNotificationActivity a;

    ak(SUSCustdefNotificationActivity sUSCustdefNotificationActivity) {
        this.a = sUSCustdefNotificationActivity;
    }

    public final void onClick(View view) {
        if (view.equals(this.a.h)) {
            SUSCustdefNotificationActivity.e = 3;
            this.a.finish();
        }
    }
}
