package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.a;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class k implements DialogInterface.OnClickListener {
    k() {
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        am.o = false;
        am.p = true;
        i.a(c.b, "SUSPromptActivity popupPromptionDialog PositiveButton");
        a.e();
        dialogInterface.dismiss();
    }
}
