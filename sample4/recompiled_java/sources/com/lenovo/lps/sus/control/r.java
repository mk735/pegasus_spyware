package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class r implements DialogInterface.OnCancelListener {
    r() {
    }

    public final void onCancel(DialogInterface dialogInterface) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog CancelListener");
        am.o = true;
        am.p = true;
        dialogInterface.dismiss();
    }
}
