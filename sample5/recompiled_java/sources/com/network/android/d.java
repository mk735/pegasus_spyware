package com.network.android;

final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f75a;
    final /* synthetic */ b b;

    d(b bVar, String str) {
        this.b = bVar;
        this.f75a = str;
    }

    public final void run() {
        AndroidCallDirectWatcher.a(this.b.f69a, this.b.c, this.f75a);
    }
}
