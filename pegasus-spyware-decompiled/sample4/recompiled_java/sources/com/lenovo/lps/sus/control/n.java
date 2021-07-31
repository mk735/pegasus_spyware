package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class n implements DialogInterface.OnClickListener {
    n() {
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog NegativeButton myMSGHandler=null");
        am.o = true;
        am.p = true;
        dialogInterface.dismiss();
    }
}
