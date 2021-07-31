package com.tendcloud.tenddata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* access modifiers changed from: package-private */
public final class g extends Handler {
    g(Looper looper) {
        super(looper);
    }

    public void handleMessage(Message message) {
        TCAgent.a(message);
    }
}
