package com.tendcloud.tenddata;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* access modifiers changed from: package-private */
public final class c implements Runnable {
    private static final int a = 1;
    private static final int b = 20480;
    private static final int c = 10000;
    private static final HandlerThread d = new HandlerThread("ProcessingThread");
    private static c e = null;
    private static Handler f = null;
    private int g = 0;
    private boolean h = false;
    private long i;
    private int j = 0;

    static {
        d.start();
    }

    private c() {
    }

    static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (e == null) {
                e();
            }
            cVar = e;
        }
        return cVar;
    }

    private void a(ah ahVar) {
        Log.d("TalkingData", "Send Success, Clear Data");
        q.a(TCAgent.c());
        List<ag> list = ahVar.e;
        q.b(ahVar.f);
        q.c(ahVar.g);
        q.d(ahVar.h);
        for (ag agVar : list) {
            switch (agVar.a) {
                case 1:
                    TCAgent.b(false);
                    break;
                case 2:
                    b bVar = agVar.b;
                    if (bVar.c != 1) {
                        if (bVar.c == 3) {
                            q.b(bVar.a);
                            q.c(bVar.a);
                            q.d(bVar.a);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        q.a(bVar.a);
                        break;
                    }
            }
        }
        q.b();
        if (ahVar.i != null) {
            TCAgent.a();
        }
    }

    static synchronized Handler b() {
        Handler handler;
        synchronized (c.class) {
            if (f == null) {
                e();
            }
            handler = f;
        }
        return handler;
    }

    private static void e() {
        if (e == null) {
            e = new c();
            new Thread(e).start();
        }
        if (f == null) {
            f = new g(d.getLooper());
        }
    }

    private synchronized boolean f() {
        boolean z = false;
        synchronized (this) {
            if (TCAgent.c() != null && SystemClock.elapsedRealtime() - this.i >= 10000) {
                ah g2 = g();
                if (g2 == null) {
                    z = true;
                } else if (this.g > 1) {
                    this.h = false;
                    b().hasMessages(5);
                    b().removeMessages(5);
                    TCAgent.a(5, 300000);
                    this.g = 0;
                } else {
                    Log.d("TalkingData", "Post data to server...");
                    z = o.a(g2);
                    Log.d("TalkingData", "server return success:" + z);
                    if (z) {
                        this.g = 0;
                        a(g2);
                        TCAgent.f(System.currentTimeMillis());
                    } else {
                        this.g++;
                        this.h = true;
                    }
                    this.i = SystemClock.elapsedRealtime();
                }
            }
        }
        return z;
    }

    private ah g() {
        int i2;
        boolean z;
        ah ahVar = new ah();
        ahVar.a = u.e();
        ahVar.b = TCAgent.d();
        ahVar.c = TCAgent.n();
        ahVar.d = TCAgent.o();
        ahVar.i = TCAgent.f;
        int a2 = ahVar.a() + 3 + 0;
        if (TCAgent.e()) {
            ag agVar = new ag();
            agVar.a = 1;
            agVar.c = u.E();
            ahVar.e.add(agVar);
            i2 = a2 + agVar.c.a() + p.c(agVar.a);
            z = true;
        } else {
            i2 = a2;
            z = false;
        }
        q.a(TCAgent.c());
        ahVar.h = q.e(r.e);
        List d2 = q.d();
        ArrayList arrayList = new ArrayList();
        Iterator it = d2.iterator();
        int i3 = i2;
        int i4 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            b bVar = (b) it.next();
            i4++;
            bVar.h = q.a(bVar.a, ahVar.f);
            bVar.i = q.b(bVar.a, ahVar.g);
            ag agVar2 = new ag();
            agVar2.a = 2;
            agVar2.b = bVar;
            int a3 = bVar.a();
            if (a3 + i3 > b && i4 != 1) {
                this.h = true;
                break;
            }
            i3 += a3;
            arrayList.add(bVar);
            if (bVar.c != 2 || bVar.h.size() != 0 || bVar.i.size() != 0) {
                ahVar.e.add(agVar2);
            }
        }
        ahVar.f = q.a(arrayList);
        ahVar.g = q.b(arrayList);
        if (ahVar.h > 0) {
            for (ag agVar3 : q.e(ahVar.h)) {
                ahVar.e.add(agVar3);
            }
        }
        q.b();
        if (z || ahVar.e.size() != 0) {
            return ahVar;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public synchronized void c() {
        if (!u.a()) {
            Log.w("TalkingData", "network is disabled.");
        } else if (TCAgent.j == 0 && TCAgent.g && !u.b()) {
            Log.w("TalkingData", "wifi is not connected.");
        } else if (this.j <= 1) {
            this.j++;
            notify();
        }
    }

    public boolean d() {
        if (TCAgent.c() == null) {
            return false;
        }
        q.a(TCAgent.c());
        List d2 = q.d();
        q.b();
        return d2.size() > 0;
    }

    public void run() {
        try {
            synchronized (this) {
                while (true) {
                    if (this.j == 0 || !u.a()) {
                        try {
                            wait();
                        } catch (InterruptedException e2) {
                        }
                    }
                    try {
                        this.j--;
                        if (f()) {
                        }
                        if (this.h) {
                            TCAgent.a(5, 10000);
                            this.h = false;
                        }
                    } catch (IOException e3) {
                    }
                }
            }
        } catch (Throwable th) {
        }
    }
}
