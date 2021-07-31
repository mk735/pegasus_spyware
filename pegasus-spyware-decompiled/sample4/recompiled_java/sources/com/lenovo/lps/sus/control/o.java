package com.lenovo.lps.sus.control;

import android.app.Activity;
import android.content.DialogInterface;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

final class o implements DialogInterface.OnDismissListener {
    final /* synthetic */ SUSPromptActivity a;

    o(SUSPromptActivity sUSPromptActivity) {
        this.a = sUSPromptActivity;
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog onDismiss myCustomDialog=" + SUSPromptActivity.b() + "; myContext=" + SUSPromptActivity.b(this.a));
        if (SUSPromptActivity.b(this.a) != null) {
            ((Activity) SUSPromptActivity.b(this.a)).finish();
        }
    }
}
