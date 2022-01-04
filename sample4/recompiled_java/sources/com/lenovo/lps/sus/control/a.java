package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

final class a implements DialogInterface.OnClickListener {
    final /* synthetic */ SUSPromptActivity a;

    a(SUSPromptActivity sUSPromptActivity) {
        this.a = sUSPromptActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        SUSPromptActivity.a(this.a, false);
        SUSPromptActivity.a(this.a);
        i.a(c.b, "SUSPromptActivity popupPromptionDialog PositiveButton");
        com.lenovo.lps.sus.c.a.e();
        dialogInterface.dismiss();
    }
}
