package com.lenovo.lps.sus.control;

import android.widget.TextView;
import com.lenovo.lps.sus.c.c;

final class ag implements Runnable {
    final /* synthetic */ SUSNotificationActivity a;

    ag(SUSNotificationActivity sUSNotificationActivity) {
        this.a = sUSNotificationActivity;
    }

    public final void run() {
        TextView textView;
        if (SUSNotificationActivity.h.intValue() > 0) {
            SUSNotificationActivity.h = Integer.valueOf(SUSNotificationActivity.h.intValue() - 1);
        }
        if (SUSNotificationActivity.h.intValue() == 0) {
            if (this.a.j != null) {
                this.a.j.removeCallbacks(this.a.k);
            }
            if (SUSNotificationActivity.d != null && this.a.e != null && SUSNotificationActivity.d != null) {
                SUSNotificationActivity.d.dismiss();
                SUSNotificationActivity.h = 3;
                return;
            }
            return;
        }
        String num = SUSNotificationActivity.h.toString();
        if (!(num == null || num.length() <= 0 || SUSNotificationActivity.d == null || this.a.e == null || (textView = (TextView) SUSNotificationActivity.d.findViewById(c.a(this.a.e, SUSNotificationActivity.c, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_TIME"))) == null)) {
            textView.setText(num);
        }
        if (this.a.j != null && this.a.k != null) {
            this.a.j.removeCallbacks(this.a.k);
            this.a.j.postDelayed(this.a.k, 1500);
        }
    }
}
