package com.lenovo.lps.sus.control;

import android.os.Handler;
import android.os.Message;

final class f extends Handler {
    final /* synthetic */ v a;

    f(v vVar) {
        this.a = vVar;
    }

    public final void handleMessage(Message message) {
        super.handleMessage(message);
        this.a.a(message);
    }
}
