package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

final class q implements DialogInterface.OnCancelListener {
    final /* synthetic */ SUSPromptActivity a;

    q(SUSPromptActivity sUSPromptActivity) {
        this.a = sUSPromptActivity;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog CancelListener");
        SUSPromptActivity.a(this.a, true);
        SUSPromptActivity.a(this.a);
        dialogInterface.dismiss();
    }
}
