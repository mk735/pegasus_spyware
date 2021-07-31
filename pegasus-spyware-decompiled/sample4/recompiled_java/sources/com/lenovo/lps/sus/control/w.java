package com.lenovo.lps.sus.control;

import android.os.Message;
import android.widget.CompoundButton;
import com.lenovo.lps.sus.b.b;
import com.lenovo.lps.sus.c.a;

/* access modifiers changed from: package-private */
public final class w implements CompoundButton.OnCheckedChangeListener {
    private final /* synthetic */ int a;

    w(int i) {
        this.a = i;
    }

    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Integer num;
        Integer.valueOf(0);
        if (z) {
            num = 1;
            a.d();
        } else {
            num = 0;
        }
        if (am.z != null) {
            Message message = new Message();
            message.what = b.a(b.SUS_USER_CHANGESETTINGS_EVENT);
            message.obj = Integer.valueOf(this.a);
            message.arg1 = num.intValue();
            am.z.sendMessage(message);
        }
    }
}
