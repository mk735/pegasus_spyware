package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

final class u implements DialogInterface.OnClickListener {
    final /* synthetic */ SUSPromptActivity a;

    u(SUSPromptActivity sUSPromptActivity) {
        this.a = sUSPromptActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog NegativeButton myMSGHandler=null");
        SUSPromptActivity.a(this.a, true);
        SUSPromptActivity.a(this.a);
        dialogInterface.dismiss();
    }
}
