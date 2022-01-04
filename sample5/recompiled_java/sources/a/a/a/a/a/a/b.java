package a.a.a.a.a.a;

import a.a.a.a.a.a.d.a;
import a.a.a.a.a.a.e.d;
import a.a.a.a.a.a.e.e;
import a.a.a.a.a.a.e.i;
import a.a.a.a.a.a.e.l;
import a.a.a.a.a.a.e.m;
import a.a.a.a.a.a.e.n;
import a.a.a.a.a.a.e.o;
import a.a.a.a.a.a.e.r;
import a.a.a.a.a.a.e.t;
import a.a.a.a.a.a.e.u;
import a.a.a.a.a.c;
import a.a.a.a.a.j;
import a.a.a.a.a.k;
import java.io.EOFException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public final class b {
    private int A = 0;
    private Object B = new Object();

    /* renamed from: a  reason: collision with root package name */
    private int f2a = 0;
    private Hashtable b;
    private Vector c;
    private Vector d;
    private f e;
    private long f;
    private boolean g;
    private int h = 10;
    private c i;
    private int j = 0;
    private int k = 0;
    private Object l = new Object();
    private Object m = new Object();
    private boolean n = false;
    private long o = 0;
    private long p = 0;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private c t = null;
    private Hashtable u = null;
    private Hashtable v = null;
    private Hashtable w = null;
    private u x;
    private boolean y = false;
    private a z;

    protected b(a aVar, c cVar, f fVar, c cVar2) {
        this.z = aVar;
        this.b = new Hashtable();
        this.c = new Vector(this.h);
        this.d = new Vector();
        this.u = new Hashtable();
        this.v = new Hashtable();
        this.w = new Hashtable();
        this.x = new i();
        this.k = 0;
        this.j = 0;
        this.i = cVar;
        this.t = cVar2;
        this.e = fVar;
        f();
    }

    private u a(String str, k kVar) {
        u uVar = null;
        try {
            uVar = u.a(kVar);
        } catch (a.a.a.a.a.i e2) {
            this.z.a(602, new Object[]{str}, e2);
            if (!(e2.getCause() instanceof EOFException)) {
                throw e2;
            } else if (str != null) {
                this.i.b(str);
            }
        }
        this.z.a(601, new Object[]{str, uVar});
        return uVar;
    }

    private static Vector a(Vector vector) {
        Vector vector2 = new Vector();
        if (vector.size() == 0) {
            return vector2;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < vector.size()) {
            int i6 = ((u) vector.elementAt(i2)).i();
            if (i6 - i5 > i4) {
                i4 = i6 - i5;
                i3 = i2;
            }
            i2++;
            i5 = i6;
        }
        if (((u) vector.elementAt(0)).i() + (65535 - i5) > i4) {
            i3 = 0;
        }
        for (int i7 = i3; i7 < vector.size(); i7++) {
            vector2.addElement(vector.elementAt(i7));
        }
        for (int i8 = 0; i8 < i3; i8++) {
            vector2.addElement(vector.elementAt(i8));
        }
        return vector2;
    }

    private synchronized void a(int i2) {
        this.b.remove(new Integer(i2));
    }

    private static void a(Vector vector, u uVar) {
        int i2 = uVar.i();
        for (int i3 = 0; i3 < vector.size(); i3++) {
            if (((u) vector.elementAt(i3)).i() > i2) {
                vector.insertElementAt(uVar, i3);
                return;
            }
        }
        vector.addElement(uVar);
    }

    private void b(Vector vector) {
        this.z.a(636);
        Enumeration elements = vector.elements();
        a.a.a.a.a.i a2 = h.a(32102);
        while (elements.hasMoreElements()) {
            u uVar = (u) elements.nextElement();
            m a3 = this.e.a(uVar);
            Integer num = new Integer(uVar.i());
            if (this.u.containsKey(num)) {
                this.u.remove(num);
            }
            if (a3 != null) {
                a3.a(a2);
                this.e.b(uVar);
            }
            vector.removeElement(uVar);
        }
    }

    private static String d(u uVar) {
        return "s-" + uVar.i();
    }

    private static String e(u uVar) {
        return "sc-" + uVar.i();
    }

    private void e() {
        this.z.a(603);
        this.i.c();
        this.b.clear();
        this.c.clear();
        this.d.clear();
        this.u.clear();
        this.v.clear();
        this.w.clear();
        this.e.a();
    }

    private static String f(u uVar) {
        return "r-" + uVar.i();
    }

    private void f() {
        Enumeration b2 = this.i.b();
        int i2 = this.f2a;
        Vector vector = new Vector();
        this.z.a(600);
        int i3 = i2;
        while (b2.hasMoreElements()) {
            String str = (String) b2.nextElement();
            u a2 = a(str, this.i.a(str));
            if (a2 != null) {
                if (str.startsWith("r-")) {
                    this.z.a(604, new Object[]{str, a2});
                    this.w.put(new Integer(a2.i()), a2);
                } else if (str.startsWith("s-")) {
                    o oVar = (o) a2;
                    int max = Math.max(oVar.i(), i3);
                    if (this.i.c(e(oVar))) {
                        n nVar = (n) a(str, this.i.a(e(oVar)));
                        if (nVar != null) {
                            this.z.a(605, new Object[]{str, a2});
                            this.u.put(new Integer(nVar.i()), nVar);
                        } else {
                            this.z.a(606, new Object[]{str, a2});
                        }
                    } else if (oVar.h().d() == 2) {
                        this.z.a(607, new Object[]{str, a2});
                        this.u.put(new Integer(oVar.i()), oVar);
                    } else {
                        this.z.a(608, new Object[]{str, a2});
                        this.v.put(new Integer(oVar.i()), oVar);
                    }
                    this.e.a(oVar);
                    this.b.put(new Integer(oVar.i()), new Integer(oVar.i()));
                    i3 = max;
                } else if (str.startsWith("sc-") && !this.i.c(d((n) a2))) {
                    vector.addElement(str);
                }
            }
        }
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            String str2 = (String) elements.nextElement();
            this.z.a(609, new Object[]{str2});
            this.i.b(str2);
        }
        this.f2a = i3;
    }

    private void g() {
        this.c = new Vector(this.h);
        this.d = new Vector();
        Enumeration keys = this.u.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            Object obj = this.u.get(nextElement);
            if (obj instanceof o) {
                this.z.a(610, new Object[]{nextElement});
                a(this.c, (o) obj);
            } else if (obj instanceof n) {
                this.z.a(611, new Object[]{nextElement});
                a(this.d, (n) obj);
            }
        }
        Enumeration keys2 = this.v.keys();
        while (keys2.hasMoreElements()) {
            Object nextElement2 = keys2.nextElement();
            this.z.a(612, new Object[]{nextElement2});
            a(this.c, (o) this.v.get(nextElement2));
        }
        this.d = a(this.d);
        this.c = a(this.c);
    }

    private u h() {
        if (System.currentTimeMillis() - this.o < this.f && System.currentTimeMillis() - this.p < this.f) {
            return null;
        }
        if (this.y) {
            if (this.z.a()) {
                this.z.a(619, new Object[]{new Long(this.f), new Long(this.o), new Long(this.p)});
            }
            throw h.a(32000);
        }
        if (this.z.a()) {
            this.z.a(620, new Object[]{new Long(this.f), new Long(this.o), new Long(this.p)});
        }
        this.y = true;
        u uVar = this.x;
        this.e.c(uVar);
        return uVar;
    }

    private void i() {
        synchronized (this.l) {
            this.j--;
            if (this.z.a()) {
                this.z.a(646, new Object[]{new Integer(this.j)});
            }
            if (!j()) {
                this.l.notifyAll();
            }
        }
    }

    private boolean j() {
        if (this.z.a()) {
            this.z.a(626, new Object[]{new Boolean(this.n), new Integer(this.j), new Integer(this.d.size()), new Integer(this.k)});
        }
        if (!this.n || this.j != 0 || this.d.size() != 0 || this.k != 0) {
            return false;
        }
        synchronized (this.m) {
            this.m.notifyAll();
        }
        return true;
    }

    private synchronized int k() {
        int i2 = this.f2a;
        int i3 = 0;
        do {
            this.f2a++;
            if (this.f2a > 65535) {
                this.f2a = 1;
            }
            if (this.f2a == i2 && (i3 = i3 + 1) == 2) {
                throw h.a(32001);
            }
        } while (this.b.containsKey(new Integer(this.f2a)));
        Integer num = new Integer(this.f2a);
        this.b.put(num, num);
        return this.f2a;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 177
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:72)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:46)
        */
    protected final a.a.a.a.a.a.e.u a() {
        /*
        // Method dump skipped, instructions count: 303
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a.a.a.a.b.a():a.a.a.a.a.a.e.u");
    }

    public final m a(u uVar) {
        m c2;
        if (uVar instanceof d) {
            this.r = false;
            this.s = false;
        }
        if (uVar.e_() && uVar.i() == 0) {
            uVar.a(k());
        }
        if (uVar instanceof o) {
            synchronized (this.l) {
                if (this.n) {
                    if (this.z.a()) {
                        this.z.a(613, new Object[]{uVar});
                    }
                    throw h.a(32102);
                }
                j h2 = ((o) uVar).h();
                if (this.z.a()) {
                    this.z.a(612, new Object[]{new Integer(uVar.i()), new Integer(h2.d()), uVar});
                }
                switch (h2.d()) {
                    case 1:
                        this.v.put(new Integer(uVar.i()), uVar);
                        this.i.a(d(uVar), (o) uVar);
                        break;
                    case 2:
                        this.u.put(new Integer(uVar.i()), uVar);
                        this.i.a(d(uVar), (o) uVar);
                        break;
                }
                this.c.addElement(uVar);
                c2 = this.e.c(uVar);
                this.l.notifyAll();
            }
        } else if (uVar instanceof d) {
            synchronized (this.l) {
                this.d.insertElementAt(uVar, 0);
                c2 = this.e.c(uVar);
                this.l.notifyAll();
            }
        } else if (!this.n || (!(uVar instanceof r) && !(uVar instanceof t))) {
            if (uVar instanceof i) {
                this.x = uVar;
            } else if (uVar instanceof n) {
                if (this.z.a()) {
                    this.z.a(615, new Object[]{new Integer(uVar.i())});
                }
                this.u.put(new Integer(uVar.i()), uVar);
                this.i.a(e(uVar), (n) uVar);
            } else if (uVar instanceof l) {
                if (this.z.a()) {
                    this.z.a(616, new Object[]{new Integer(uVar.i())});
                }
                this.i.b(f(uVar));
            }
            synchronized (this.l) {
                this.d.addElement(uVar);
                c2 = !(uVar instanceof a.a.a.a.a.a.e.b) ? this.e.c(uVar) : null;
                if (uVar instanceof n) {
                    this.k++;
                    if (this.z.a()) {
                        this.z.a(617, new Object[]{new Integer(this.k)});
                    }
                }
                this.l.notifyAll();
            }
        } else {
            if (this.z.a()) {
                this.z.a(614, new Object[]{uVar});
            }
            throw h.a(32102);
        }
        return c2;
    }

    /* access modifiers changed from: protected */
    public final void a(long j2) {
        this.f = 1000 * j2;
    }

    /* access modifiers changed from: protected */
    public final void a(o oVar) {
        synchronized (this.l) {
            if (this.z.a()) {
                this.z.a(618, new Object[]{new Integer(oVar.h().d()), new Integer(oVar.i())});
            }
            if (oVar.h().d() == 1) {
                this.v.remove(new Integer(oVar.i()));
            } else {
                this.u.remove(new Integer(oVar.i()));
            }
            this.c.removeElement(oVar);
            this.i.b(d(oVar));
            this.e.b(oVar);
        }
    }

    public final void a(a.a.a.a.a.i iVar) {
        this.z.a(632, null, iVar);
        synchronized (this.l) {
            this.l.notifyAll();
        }
        this.e.a(iVar);
    }

    /* access modifiers changed from: protected */
    public final void a(boolean z2) {
        this.g = z2;
    }

    public final void b() {
        this.z.a(637, new Object[]{new Long(30000)});
        if (30000 > 0) {
            synchronized (this.l) {
                this.n = true;
            }
            this.t.c();
            synchronized (this.l) {
                this.z.a(638);
                this.l.notifyAll();
            }
            synchronized (this.m) {
                try {
                    if (this.j > 0 || this.d.size() > 0 || this.k > 0) {
                        if (this.z.a()) {
                            this.z.a(639, new Object[]{new Integer(this.j), new Integer(this.d.size()), new Integer(this.k)});
                        }
                        this.m.wait(30000);
                        this.z.a(640);
                    }
                } catch (InterruptedException e2) {
                }
            }
            synchronized (this.l) {
                b(this.c);
                b(this.d);
                this.n = false;
                this.j = 0;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void b(o oVar) {
        if (this.z.a()) {
            this.z.a(641, new Object[]{new Integer(oVar.i())});
        }
        this.i.b(f(oVar));
        this.w.remove(new Integer(oVar.i()));
    }

    /* access modifiers changed from: protected */
    public final void b(u uVar) {
        this.o = System.currentTimeMillis();
        if (this.z.a()) {
            this.z.a(625, new Object[]{uVar});
        }
        m a2 = this.e.a(uVar);
        a2.c();
        if ((uVar instanceof o) && ((o) uVar).h().d() == 0) {
            a2.a((u) null);
            this.e.b(uVar);
            this.t.a(a2);
            i();
            a(uVar.i());
        }
        if (uVar instanceof e) {
            this.e.b(uVar);
        }
    }

    public final void b(a.a.a.a.a.i iVar) {
        this.z.a(633, null, iVar);
        this.q = false;
        synchronized (this.l) {
            this.l.notifyAll();
        }
        try {
            if (this.g) {
                e();
            }
            this.c.clear();
            this.d.clear();
            synchronized (this.B) {
                if (this.z.a()) {
                    this.z.a(634, new Object[]{new Integer(this.A)});
                }
                while (this.A > 0) {
                    try {
                        this.B.wait();
                    } catch (InterruptedException e2) {
                    }
                }
            }
            this.z.a(635);
            this.i.a();
        } catch (a.a.a.a.a.i e3) {
        }
    }

    /* access modifiers changed from: protected */
    public final void c() {
        synchronized (this.B) {
            this.A++;
            if (this.z.a()) {
                this.z.a(642, new Object[]{new Integer(this.A)});
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void c(u uVar) {
        this.p = System.currentTimeMillis();
        if (this.z.a()) {
            this.z.a(627, new Object[]{uVar, new Integer(uVar.i())});
        }
        if (uVar instanceof a.a.a.a.a.a.e.b) {
            a.a.a.a.a.a.e.b bVar = (a.a.a.a.a.a.e.b) uVar;
            m a2 = this.e.a(uVar);
            if (!(bVar instanceof m) || !this.u.containsKey(new Integer(bVar.i()))) {
                if (bVar instanceof a.a.a.a.a.a.e.k) {
                    if (this.z.a()) {
                        this.z.a(628, new Object[]{new Integer(bVar.i())});
                    }
                    this.i.b(d(uVar));
                    this.v.remove(new Integer(bVar.i()));
                } else if (bVar instanceof l) {
                    this.u.remove(new Integer(bVar.i()));
                    this.i.b(d(uVar));
                    this.i.b(e(uVar));
                    this.k--;
                    if (this.z.a()) {
                        this.z.a(645, new Object[]{new Integer(bVar.i()), new Integer(this.k)});
                    }
                }
                a(uVar.i());
                if ((bVar instanceof a.a.a.a.a.a.e.k) || (bVar instanceof m) || (bVar instanceof l)) {
                    i();
                }
                if (bVar instanceof a.a.a.a.a.a.e.j) {
                    this.z.a(629);
                    this.y = false;
                } else if (uVar instanceof a.a.a.a.a.a.e.c) {
                    if (((a.a.a.a.a.a.e.c) uVar).a_() == 0) {
                        if (this.g) {
                            e();
                        }
                        this.k = 0;
                        this.j = 0;
                        g();
                        this.z.a(631);
                        this.q = true;
                    } else {
                        this.s = true;
                    }
                    synchronized (this.l) {
                        this.l.notifyAll();
                    }
                }
                this.e.a((a.a.a.a.a.a.e.b) uVar);
                if ((bVar instanceof a.a.a.a.a.a.e.k) || (bVar instanceof l)) {
                    this.t.a(a2);
                }
                j();
                return;
            }
            a(new n((m) bVar));
        } else if (this.n) {
        } else {
            if (uVar instanceof o) {
                o oVar = (o) uVar;
                switch (oVar.h().d()) {
                    case 0:
                    case 1:
                        if (this.t != null) {
                            this.t.a(oVar);
                            return;
                        }
                        return;
                    case 2:
                        if (this.z.a()) {
                            this.z.a(630, new Object[]{new Integer(oVar.i())});
                        }
                        this.i.a(f(uVar), (o) uVar);
                        this.w.put(new Integer(oVar.i()), oVar);
                        a(new m(oVar));
                        return;
                    default:
                        return;
                }
            } else if (uVar instanceof n) {
                o oVar2 = (o) this.w.get(new Integer(uVar.i()));
                if (oVar2 == null) {
                    a(new l(uVar.i()));
                } else if (this.t != null) {
                    this.t.a(oVar2);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void d() {
        synchronized (this.B) {
            this.A--;
            if (this.z.a()) {
                this.z.a(643, new Object[]{new Integer(this.A)});
            }
            if (this.A == 0) {
                this.B.notifyAll();
            }
        }
    }
}
