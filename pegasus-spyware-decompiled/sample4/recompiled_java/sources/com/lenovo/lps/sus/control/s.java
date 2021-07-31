package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import android.view.KeyEvent;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

final class s implements DialogInterface.OnKeyListener {
    final /* synthetic */ SUSPromptActivity a;

    s(SUSPromptActivity sUSPromptActivity) {
        this.a = sUSPromptActivity;
    }

    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog KeyListener keyCode=" + i + "; event=" + keyEvent);
        return i == 84 || i == 3 || i == 4;
    }
}
