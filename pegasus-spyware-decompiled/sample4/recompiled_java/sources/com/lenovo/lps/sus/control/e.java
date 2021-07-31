package com.lenovo.lps.sus.control;

import android.widget.TextView;
import com.lenovo.lps.sus.c.c;

final class e implements Runnable {
    final /* synthetic */ SUSCustdefNotificationActivity a;

    e(SUSCustdefNotificationActivity sUSCustdefNotificationActivity) {
        this.a = sUSCustdefNotificationActivity;
    }

    public final void run() {
        TextView textView;
        if (SUSCustdefNotificationActivity.e.intValue() > 0) {
            SUSCustdefNotificationActivity.e = Integer.valueOf(SUSCustdefNotificationActivity.e.intValue() - 1);
        }
        if (SUSCustdefNotificationActivity.e.intValue() == 0) {
            if (this.a.g != null) {
                this.a.g.removeCallbacks(this.a.j);
            }
            SUSCustdefNotificationActivity.e = 3;
            this.a.finish();
            return;
        }
        String num = SUSCustdefNotificationActivity.e.toString();
        if (!(num == null || num.length() <= 0 || SUSCustdefNotificationActivity.c == null || (textView = (TextView) this.a.findViewById(c.a(SUSCustdefNotificationActivity.c, SUSCustdefNotificationActivity.b, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_TIME"))) == null)) {
            textView.setText(num);
        }
        if (this.a.g != null && this.a.j != null) {
            this.a.g.removeCallbacks(this.a.j);
            this.a.g.postDelayed(this.a.j, 1500);
        }
    }
}
