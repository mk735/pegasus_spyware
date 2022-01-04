package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class b implements DialogInterface.OnCancelListener {
    b() {
    }

    public final void onCancel(DialogInterface dialogInterface) {
        i.a(c.b, "SUSNotificationActivity popupPromptionDialog CancelListener");
        if (!(am.r == null || am.D == null)) {
            am.r.removeCallbacks(am.D);
        }
        am.q = 3;
        dialogInterface.dismiss();
    }
}
