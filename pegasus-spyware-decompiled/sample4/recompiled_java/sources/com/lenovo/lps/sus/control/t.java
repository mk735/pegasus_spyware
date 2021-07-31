package com.lenovo.lps.sus.control;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
public final class t implements DialogInterface.OnClickListener {
    t() {
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (!(am.r == null || am.D == null)) {
            am.r.removeCallbacks(am.D);
        }
        am.q = 3;
        dialogInterface.dismiss();
    }
}
