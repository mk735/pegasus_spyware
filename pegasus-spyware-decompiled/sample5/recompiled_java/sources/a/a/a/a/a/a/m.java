package a.a.a.a.a.a;

import a.a.a.a.a.a.d.a;
import a.a.a.a.a.a.e.b;
import a.a.a.a.a.a.e.o;
import a.a.a.a.a.a.e.u;
import a.a.a.a.a.h;
import a.a.a.a.a.i;
import a.a.a.a.a.j;

public final class m implements h {

    /* renamed from: a  reason: collision with root package name */
    private Object f23a;
    private Object b;
    private j c;
    private u d;
    private i e;
    private boolean f;
    private boolean g;
    private int h;
    private a i;

    m(a aVar) {
        this.f23a = new Object();
        this.b = new Object();
        this.d = null;
        this.e = null;
        this.f = false;
        this.g = false;
        this.h = 0;
        this.c = null;
        this.i = aVar;
    }

    m(a aVar, o oVar) {
        this.f23a = new Object();
        this.b = new Object();
        this.d = null;
        this.e = null;
        this.f = false;
        this.g = false;
        this.h = 0;
        this.i = aVar;
        this.c = oVar.h();
        this.h = oVar.i();
    }

    @Override // a.a.a.a.a.h
    public final j a() {
        return this.c;
    }

    public final void a(long j) {
        if (b(j) == null && !this.g) {
            if (this.i.a()) {
                this.i.a(406, new Object[]{new Long(j)});
            }
            throw new i(32000);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(u uVar) {
        this.i.a(404, new Object[]{this, uVar});
        synchronized (this.f23a) {
            if (uVar instanceof b) {
                this.c = null;
            }
            this.d = uVar;
            this.g = true;
            this.f23a.notifyAll();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(i iVar) {
        this.i.a(405, new Object[]{this}, iVar);
        synchronized (this.f23a) {
            this.e = iVar;
            this.f23a.notifyAll();
        }
        synchronized (this.b) {
            this.b.notifyAll();
        }
    }

    /* access modifiers changed from: protected */
    public final u b(long j) {
        synchronized (this.f23a) {
            if (this.i.a()) {
                a aVar = this.i;
                Object[] objArr = new Object[6];
                objArr[0] = this;
                objArr[1] = new Long(j);
                objArr[2] = new Boolean(this.f);
                objArr[3] = new Boolean(this.g);
                objArr[4] = this.e == null ? "false" : "true";
                objArr[5] = this.d;
                aVar.a(400, objArr, this.e);
            }
            if (this.g) {
                return this.d;
            }
            if (this.e == null) {
                if (j == -1) {
                    try {
                        this.f23a.wait();
                    } catch (InterruptedException e2) {
                    }
                } else {
                    this.f23a.wait(j);
                }
            }
            if (this.g || this.e == null) {
                this.i.a(402, new Object[]{this.d});
                return this.d;
            }
            i iVar = this.e;
            this.e = null;
            this.i.a(401, null, this.e);
            throw iVar;
        }
    }

    /* access modifiers changed from: protected */
    public final void b() {
        synchronized (this.b) {
            synchronized (this.f23a) {
                if (this.e != null) {
                    throw this.e;
                }
            }
            if (!this.f) {
                try {
                    this.b.wait();
                } catch (InterruptedException e2) {
                }
            }
            if (!this.f) {
                if (this.e == null) {
                    throw h.a(6);
                }
                throw this.e;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void c() {
        this.i.a(403, new Object[]{this});
        synchronized (this.f23a) {
            this.d = null;
            this.g = false;
        }
        synchronized (this.b) {
            this.f = true;
            this.b.notifyAll();
        }
    }

    public final boolean d() {
        return this.g;
    }
}
