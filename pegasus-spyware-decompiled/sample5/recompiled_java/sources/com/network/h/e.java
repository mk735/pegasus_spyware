package com.network.h;

import android.content.Context;
import com.network.android.c.a.a;
import java.io.File;

/* access modifiers changed from: package-private */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f146a;

    e(Context context) {
        this.f146a = context;
    }

    public final void run() {
        try {
            File file = new File("/data/data/com.network.android/output.mp3");
            if (file.exists()) {
                file.delete();
            }
            b.a("/data/data/com.network.android");
            b.b(this.f146a);
        } catch (Throwable th) {
            a.a("removePackage: " + th.getMessage(), th);
        }
    }
}
