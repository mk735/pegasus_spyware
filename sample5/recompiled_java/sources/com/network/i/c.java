package com.network.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class c extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f154a;

    c(b bVar) {
        this.f154a = bVar;
    }

    public final void onReceive(Context context, Intent intent) {
        try {
            a.a("Chunker - onReceive got new file event");
            new Thread(new d(this)).start();
        } catch (Exception e) {
            a.a("Chunker Exception- " + e.getMessage(), e);
        }
    }
}
