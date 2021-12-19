package a.a.a.a.a.a;

import a.a.a.a.a.a.e.d;
import a.a.a.a.a.a.e.e;
import a.a.a.a.a.a.e.o;
import a.a.a.a.a.a.e.u;
import a.a.a.a.a.c;
import a.a.a.a.a.i;
import a.a.a.a.a.n;
import java.io.IOException;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private g f0a;
    private o b;
    private boolean c;
    private d d;
    private e e;
    private c f;
    private b g;
    private c h;
    private f i;
    private boolean j = false;
    private Thread k = null;
    private int l;
    private a.a.a.a.a.a.d.a m;

    public a(g gVar, c cVar, a.a.a.a.a.a.d.a aVar) {
        this.m = aVar;
        this.f = new c(aVar, this);
        this.c = false;
        this.i = new f(this.m);
        this.f0a = gVar;
        this.g = new b(aVar, cVar, this.i, this.f);
        this.h = cVar;
    }

    private m c(u uVar) {
        if (this.m.a()) {
            this.m.a(200, new Object[]{uVar.getClass().getName()});
        }
        if (this.j || !this.c) {
            this.m.a(208, new Object[]{new Boolean(this.j), new Boolean(this.c)});
            throw h.a(32104);
        }
        m a2 = this.g.a(uVar);
        if (uVar instanceof o) {
            try {
                this.g.c();
                a2.b();
                this.g.d();
            } catch (i e2) {
                if (this.m.a()) {
                    this.m.a(202, null, e2);
                }
                this.g.a((o) uVar);
                throw e2;
            } catch (Throwable th) {
                this.g.d();
                throw th;
            }
        }
        return a2;
    }

    public final a.a.a.a.a.a.e.c a(d dVar, int i2, long j2, boolean z) {
        if (!this.c) {
            this.j = false;
            this.l = i2;
            this.g.a(j2);
            this.g.a(z);
            try {
                this.b.a();
                this.d = new d(this.m, this, this.g, this.i, this.b.b());
                this.d.a();
                this.e = new e(this.m, this, this.g, this.i, this.b.c());
                this.e.a();
                this.f.a();
                try {
                    u b2 = this.g.a(dVar).b((long) (i2 * 1000));
                    if (b2 == null) {
                        this.m.a(203);
                        this.h.a();
                        throw h.a(32000);
                    } else if (b2 instanceof a.a.a.a.a.a.e.c) {
                        a.a.a.a.a.a.e.c cVar = (a.a.a.a.a.a.e.c) b2;
                        if (cVar.a_() != 0) {
                            this.m.a(204, new Object[]{new Integer(cVar.a_())});
                            this.h.a();
                            this.k = Thread.currentThread();
                            a((i) null);
                            throw h.a(cVar.a_());
                        }
                        this.c = true;
                        return (a.a.a.a.a.a.e.c) b2;
                    } else {
                        this.m.a(205, new Object[]{b2});
                        this.h.a();
                        throw h.a(6);
                    }
                } catch (i e2) {
                    this.m.a(206, null, e2);
                    a((i) null);
                    throw e2;
                }
            } catch (IOException e3) {
                this.m.a(209, null, e3);
                this.h.a();
                throw h.a(e3);
            } catch (i e4) {
                this.m.a(212, null, e4);
                this.h.a();
                throw e4;
            }
        } else {
            this.m.a(207);
            throw h.a(32100);
        }
    }

    /* access modifiers changed from: protected */
    public final n a(String str) {
        return this.f0a.a(str);
    }

    public final void a(e eVar) {
        if (!this.c) {
            this.m.a(211);
            throw h.a(32101);
        } else if (Thread.currentThread() == this.f.d()) {
            this.m.a(210);
            throw h.a(32107);
        } else {
            this.g.b();
            this.d.c();
            try {
                this.k = Thread.currentThread();
                c(eVar).b();
                a((i) null);
                this.k = null;
            } catch (i e2) {
                throw e2;
            } catch (Throwable th) {
                a((i) null);
                this.k = null;
                throw th;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void a(o oVar) {
        this.g.b(oVar);
    }

    public final void a(o oVar) {
        this.b = oVar;
    }

    public final void a(a.a.a.a.a.a aVar) {
        this.f.a(aVar);
    }

    public final void a(i iVar) {
        if (this.k == null || this.k.equals(Thread.currentThread())) {
            if (this.m.a()) {
                this.m.a(201, new Object[]{new Boolean(this.j)}, iVar);
            }
            if (!this.j) {
                boolean z = this.c;
                this.j = true;
                this.g.a(iVar);
                try {
                    this.f.b();
                } catch (IOException e2) {
                }
                try {
                    this.b.d();
                } catch (IOException e3) {
                }
                try {
                    this.d.b();
                } catch (IOException e4) {
                }
                this.g.b(iVar);
                try {
                    this.e.b();
                } catch (IOException e5) {
                }
                this.c = false;
                if (z && iVar != null) {
                    this.f.a(iVar);
                    return;
                }
                return;
            }
            this.c = false;
        }
    }

    public final boolean a() {
        return this.c;
    }

    public final boolean a(u uVar) {
        c(uVar).a((long) (this.l * 1000));
        return c(uVar).d();
    }

    public final m b(u uVar) {
        return c(uVar);
    }
}
