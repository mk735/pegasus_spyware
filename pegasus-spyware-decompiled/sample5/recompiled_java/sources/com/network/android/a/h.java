package com.network.android.a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.network.location.OnAlarmReceiver;
import com.network.location.a;
import com.network.media.CoreReceiver;

final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f49a;
    final /* synthetic */ long b;
    final /* synthetic */ long c;

    h(Context context, long j, long j2) {
        this.f49a = context;
        this.b = j;
        this.c = j2;
    }

    public final void run() {
        try {
            a.a(this.f49a);
            AlarmManager alarmManager = (AlarmManager) this.f49a.getSystemService("alarm");
            alarmManager.setRepeating(0, System.currentTimeMillis() + 3000, this.b * 1000, PendingIntent.getBroadcast(this.f49a, 0, new Intent(this.f49a, OnAlarmReceiver.class), 0));
            if (this.c > 0) {
                com.network.android.c.a.a.a("MO loctionalarmStart Start - monitorTimeLimit: " + this.c);
                Intent intent = new Intent(this.f49a, CoreReceiver.class);
                intent.setAction("finishLocationMonitor");
                alarmManager.set(0, System.currentTimeMillis() + (this.c * 1000), PendingIntent.getBroadcast(this.f49a, 0, intent, 0));
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("Send Data List Exception- " + th.getMessage(), th);
        }
    }
}
