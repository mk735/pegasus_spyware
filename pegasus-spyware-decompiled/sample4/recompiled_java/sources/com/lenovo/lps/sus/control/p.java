package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.EventType;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class p implements DialogInterface.OnDismissListener {
    p() {
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog onDismiss myUpdateInfoAlertDialog=" + am.m + "; myApplicationContext=" + am.y);
        if ((am.p) && !(am.o)) {
            ae.a(EventType.SUS_UPDATEPROMPT_USER_CONFIRM);
        } else if (am.o) {
            am.o = false;
            ae.a(EventType.SUS_UPDATEPROMPT_USER_CANCEL);
        }
        if (am.m != null) {
            am.m = null;
        }
    }
}
