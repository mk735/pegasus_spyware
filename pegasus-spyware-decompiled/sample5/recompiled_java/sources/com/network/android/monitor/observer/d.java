package com.network.android.monitor.observer;

import android.database.ContentObserver;
import com.network.e.a.a;

final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f89a;
    final /* synthetic */ a b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    d(a aVar, a aVar2) {
        super(null);
        this.b = aVar;
        this.f89a = aVar2;
    }

    public final void onChange(boolean z) {
        this.b.a(this.f89a);
    }
}
