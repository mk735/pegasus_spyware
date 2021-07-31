package com.lenovo.lps.sus.control;

import android.content.DialogInterface;
import android.view.KeyEvent;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class m implements DialogInterface.OnKeyListener {
    m() {
    }

    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        i.a(c.b, "SUSPromptActivity popupPromptionDialog KeyListener keyCode=" + i + "; event=" + keyEvent);
        return i == 84 || i == 3 || i == 4;
    }
}
