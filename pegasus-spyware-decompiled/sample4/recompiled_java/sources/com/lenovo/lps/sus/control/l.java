package com.lenovo.lps.sus.control;

import android.widget.TextView;
import com.lenovo.lps.sus.c.c;

final class l implements Runnable {
    l() {
    }

    public final void run() {
        TextView textView;
        if (am.q.intValue() > 0) {
            am.q = Integer.valueOf(am.q.intValue() - 1);
        }
        if (am.q.intValue() == 0) {
            if (am.r != null) {
                am.r.removeCallbacks(am.D);
            }
            if (am.n != null && am.y != null && am.n != null) {
                am.n.dismiss();
                am.q = 3;
                return;
            }
            return;
        }
        String num = am.q.toString();
        if (!(num == null || num.length() <= 0 || am.n == null || am.y == null || (textView = (TextView) am.n.findViewById(c.a(am.y, am.l, "SUS_NOTIFICATION_AUTOHIDPROMPTINFOTEXTVIEW_TIME"))) == null)) {
            textView.setText(num);
        }
        if (am.r != null && am.D != null) {
            am.r.removeCallbacks(am.D);
            am.r.postDelayed(am.D, 1500);
        }
    }
}
