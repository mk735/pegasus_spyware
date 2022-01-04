package a.a.a.a.a.a;

import a.a.a.a.a.a.d.a;
import a.a.a.a.a.a.e.b;
import a.a.a.a.a.a.e.c;
import a.a.a.a.a.a.e.f;
import a.a.a.a.a.a.e.u;
import a.a.a.a.a.i;
import java.io.IOException;
import java.io.InputStream;

public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6a = false;
    private Object b = new Object();
    private b c = null;
    private a d = null;
    private f e;
    private f f = null;
    private boolean g = false;
    private a h;

    public d(a aVar, a aVar2, b bVar, f fVar, InputStream inputStream) {
        this.e = new f(inputStream);
        this.d = aVar2;
        this.c = bVar;
        this.f = fVar;
        this.h = aVar;
    }

    public final void a() {
        if (!this.f6a) {
            this.f6a = true;
            new Thread(this, "Micro Client Comms Receiver").start();
        }
    }

    public final void b() {
        synchronized (this.b) {
            this.h.a(850);
            if (this.f6a) {
                this.f6a = false;
                try {
                    this.h.a(851);
                    this.b.wait();
                } catch (InterruptedException e2) {
                }
            }
        }
    }

    public final void c() {
        this.h.a(855, new Object[]{new Boolean(true)});
        this.g = true;
    }

    public final void run() {
        while (this.f6a && this.e != null) {
            try {
                this.h.a(852);
                u a2 = this.e.a();
                if (a2 instanceof b) {
                    m a3 = this.f.a(a2);
                    if (a3 != null) {
                        synchronized (a3) {
                            this.c.c(a2);
                            if ((a2 instanceof c) && ((c) a2).a_() != 0) {
                                synchronized (this.b) {
                                    this.f6a = false;
                                }
                            }
                        }
                    } else {
                        this.c.c(a2);
                    }
                } else {
                    this.c.c(a2);
                }
            } catch (i e2) {
                this.f6a = false;
                this.d.a(e2);
            } catch (IOException e3) {
                this.h.a(853, null, e3);
                this.f6a = false;
                if (!this.g) {
                    this.d.a(new i(e3, (byte) 0));
                } else {
                    this.d.a((i) null);
                }
            }
        }
        synchronized (this.b) {
            this.h.a(854);
            this.b.notifyAll();
        }
    }
}
