package com.network.android.monitor.observer;

import com.network.e.a.a;

/* access modifiers changed from: package-private */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f88a;
    final /* synthetic */ a b;

    c(a aVar, a aVar2) {
        this.b = aVar;
        this.f88a = aVar2;
    }

    public final void run() {
        this.b.a(this.f88a.a());
    }
}
