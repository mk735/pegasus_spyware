package a.a.a.a.a.a;

import a.a.a.a.a.a.d.a;
import a.a.a.a.a.a.e.b;
import a.a.a.a.a.a.e.g;
import a.a.a.a.a.a.e.u;
import a.a.a.a.a.i;
import java.io.OutputStream;

public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10a = false;
    private Object b = new Object();
    private b c = null;
    private g d;
    private a e = null;
    private f f = null;
    private a g;

    public e(a aVar, a aVar2, b bVar, f fVar, OutputStream outputStream) {
        this.g = aVar;
        this.d = new g(outputStream);
        this.e = aVar2;
        this.c = bVar;
        this.f = fVar;
    }

    public final void a() {
        if (!this.f10a) {
            this.f10a = true;
            new Thread(this, "Micro Client Comms Sender").start();
        }
    }

    public final void b() {
        synchronized (this.b) {
            this.g.a(800);
            if (this.f10a) {
                this.f10a = false;
                try {
                    this.g.a(801);
                    this.b.wait();
                } catch (InterruptedException e2) {
                }
            }
        }
    }

    public final void run() {
        u uVar = null;
        while (this.f10a && this.d != null) {
            try {
                this.g.a(802);
                uVar = this.c.a();
                if (uVar != null) {
                    if (uVar instanceof b) {
                        this.d.a(uVar);
                        this.d.flush();
                    } else {
                        synchronized (this.f.a(uVar)) {
                            this.d.a(uVar);
                            this.d.flush();
                            this.c.b(uVar);
                        }
                    }
                    if (uVar instanceof a.a.a.a.a.a.e.e) {
                        synchronized (this.b) {
                            this.g.a(803);
                            this.f10a = false;
                        }
                    } else {
                        continue;
                    }
                } else {
                    synchronized (this.b) {
                        this.f10a = false;
                    }
                }
            } catch (i e2) {
                synchronized (this.b) {
                    this.f10a = false;
                    this.e.a(e2);
                }
            } catch (Exception e3) {
                this.g.a(804, null, e3);
                if (uVar != null && (uVar instanceof a.a.a.a.a.a.e.e)) {
                    this.c.b(uVar);
                }
                this.f10a = false;
                this.e.a(new i(e3, (byte) 0));
            }
        }
        synchronized (this.b) {
            this.g.a(805);
            this.b.notifyAll();
        }
    }
}
