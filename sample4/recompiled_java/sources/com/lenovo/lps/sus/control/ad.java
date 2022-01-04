package com.lenovo.lps.sus.control;

import android.os.Message;
import android.widget.CompoundButton;
import com.lenovo.lps.sus.b.b;
import com.lenovo.lps.sus.c.a;

final class ad implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ SUSPromptActivity a;
    private final /* synthetic */ int b;

    ad(SUSPromptActivity sUSPromptActivity, int i) {
        this.a = sUSPromptActivity;
        this.b = i;
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
        if (SUSPromptActivity.c() != null) {
            Message message = new Message();
            message.what = b.a(b.SUS_USER_CHANGESETTINGS_EVENT);
            message.obj = Integer.valueOf(this.b);
            message.arg1 = num.intValue();
            SUSPromptActivity.c().sendMessage(message);
        }
    }
}
