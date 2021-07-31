package com.tendcloud.tenddata;

import android.app.Activity;
import android.os.Message;

final class ad implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ String b;
    final /* synthetic */ Activity c;

    ad(int i, String str, Activity activity) {
        this.a = i;
        this.b = str;
        this.c = activity;
    }

    public void run() {
        try {
            if (!TCAgent.q()) {
                TCAgent.init(this.c);
            }
            if (TCAgent.r() != null) {
                c.b().sendMessage(Message.obtain(c.b(), this.a, this.b));
            }
        } catch (Throwable th) {
        }
    }
}
