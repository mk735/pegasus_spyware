package com.tendcloud.tenddata;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class x implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ Map c;

    x(String str, String str2, Map map) {
        this.a = str;
        this.b = str2;
        this.c = map;
    }

    public void run() {
        try {
            if ((TCAgent.H) && !TextUtils.isEmpty(TCAgent.M)) {
                a aVar = new a();
                aVar.a = this.a;
                aVar.b = this.b;
                aVar.g = this.c;
                Handler b2 = c.b();
                b2.sendMessage(Message.obtain(b2, 3, aVar));
            }
        } catch (Throwable th) {
        }
    }
}
