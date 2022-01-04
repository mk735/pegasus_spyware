package com.lenovo.lps.sus.control;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
public final class aa implements DialogInterface.OnClickListener {
    aa() {
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (!(am.r == null || am.D == null)) {
            am.r.removeCallbacks(am.D);
        }
        ae.b();
        am.q = 3;
        dialogInterface.dismiss();
    }
}
