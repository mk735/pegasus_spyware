package a.a.a.a.a.a;

import a.a.a.a.a.a;
import a.a.a.a.a.a.e.k;
import a.a.a.a.a.a.e.l;
import a.a.a.a.a.a.e.o;
import a.a.a.a.a.h;
import a.a.a.a.a.i;
import a.a.a.a.a.n;
import java.util.Vector;

public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static int f3a = 10;
    private a b;
    private a c;
    private Vector d;
    private Vector e;
    private boolean f = false;
    private boolean g = false;
    private Object h = new Object();
    private Thread i;
    private Object j = new Object();
    private Object k = new Object();
    private boolean l = false;
    private a.a.a.a.a.a.d.a m;

    c(a.a.a.a.a.a.d.a aVar, a aVar2) {
        this.m = aVar;
        this.c = aVar2;
        this.d = new Vector(f3a);
        this.e = new Vector(f3a);
    }

    public final void a() {
        if (!this.f) {
            this.f = true;
            this.g = false;
            this.i = new Thread(this, "Micro Client Callback");
            this.i.start();
        }
    }

    public final void a(o oVar) {
        if (this.b != null) {
            synchronized (this.k) {
                if (!this.g && this.d.size() >= f3a) {
                    try {
                        this.m.a(709);
                        this.k.wait();
                    } catch (InterruptedException e2) {
                    }
                }
            }
            if (!this.g) {
                this.d.addElement(oVar);
                synchronized (this.j) {
                    this.m.a(710);
                    this.j.notifyAll();
                }
            }
        }
    }

    public final void a(a aVar) {
        this.b = aVar;
    }

    public final void a(h hVar) {
        if (this.b != null) {
            this.e.addElement(hVar);
            synchronized (this.j) {
                if (this.m.a()) {
                    this.m.a(715, new Object[]{hVar});
                }
                this.j.notifyAll();
            }
        }
    }

    public final void a(Throwable th) {
        if (this.b != null) {
            this.m.a(708, null, th);
            this.b.a(th);
        }
    }

    public final void b() {
        if (this.f) {
            this.m.a(700);
            this.f = false;
            if (!Thread.currentThread().equals(this.i)) {
                try {
                    synchronized (this.h) {
                        synchronized (this.j) {
                            this.m.a(701);
                            this.j.notifyAll();
                        }
                        this.m.a(702);
                        this.h.wait();
                    }
                } catch (InterruptedException e2) {
                }
            }
            this.m.a(703);
        }
    }

    public final void c() {
        this.g = true;
        synchronized (this.k) {
            this.m.a(711);
            this.k.notifyAll();
        }
        synchronized (this.k) {
            if (this.l) {
                try {
                    this.m.a(712);
                    this.k.wait();
                } catch (InterruptedException e2) {
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final Thread d() {
        return this.i;
    }

    public final void run() {
        while (this.f) {
            try {
                synchronized (this.j) {
                    if (this.d.isEmpty() && this.e.isEmpty()) {
                        this.m.a(704);
                        this.j.wait();
                    }
                }
            } catch (InterruptedException e2) {
            }
            if (this.f) {
                if (!this.e.isEmpty() && this.b != null) {
                    h hVar = (h) this.e.elementAt(0);
                    this.e.removeElementAt(0);
                    if (this.m.a()) {
                        this.m.a(705, new Object[]{hVar});
                    }
                    this.b.a(hVar);
                }
                if (!this.d.isEmpty()) {
                    if (this.g) {
                        this.d.clear();
                    } else if (this.c.a()) {
                        this.l = true;
                        o oVar = (o) this.d.elementAt(0);
                        this.d.removeElementAt(0);
                        if (this.c.a() && this.b != null) {
                            String g2 = oVar.g();
                            n a2 = g2 != null ? this.c.a(g2) : null;
                            try {
                                if (this.m.a()) {
                                    this.m.a(713, new Object[]{a2.a(), new Integer(oVar.i())});
                                }
                                this.b.a(a2, oVar.h());
                                if (oVar.h().d() == 1) {
                                    this.c.b(new k(oVar));
                                } else if (oVar.h().d() == 2) {
                                    this.c.a(oVar);
                                    this.c.b(new l(oVar));
                                }
                            } catch (Exception e3) {
                                this.m.a(714, null, e3);
                                this.c.a(new i(e3));
                            }
                        }
                        this.l = false;
                    }
                }
            }
            synchronized (this.k) {
                this.m.a(706);
                this.k.notifyAll();
            }
        }
        this.d.clear();
        synchronized (this.h) {
            this.m.a(707);
            this.h.notifyAll();
        }
    }
}
