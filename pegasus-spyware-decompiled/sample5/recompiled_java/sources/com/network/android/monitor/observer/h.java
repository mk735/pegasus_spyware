package com.network.android.monitor.observer;

import android.database.ContentObserver;
import com.network.e.a.a;

final class h extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f93a;
    final /* synthetic */ g b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    h(g gVar, a aVar) {
        super(null);
        this.b = gVar;
        this.f93a = aVar;
    }

    public final void onChange(boolean z) {
        this.b.a(this.f93a);
    }
}
