package a.a.a.a.a.a;

import a.a.a.a.a.a.d.a;
import a.a.a.a.a.a.e.b;
import a.a.a.a.a.a.e.c;
import a.a.a.a.a.a.e.d;
import a.a.a.a.a.a.e.e;
import a.a.a.a.a.a.e.j;
import a.a.a.a.a.a.e.o;
import a.a.a.a.a.a.e.u;
import a.a.a.a.a.i;
import java.util.Enumeration;
import java.util.Hashtable;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private Hashtable f18a = new Hashtable();
    private m b;
    private m c;
    private m d;
    private i e = null;
    private boolean f = false;
    private a g;

    public f(a aVar) {
        this.g = aVar;
        this.b = new m(aVar);
        this.c = new m(aVar);
        this.d = new m(aVar);
    }

    private m d(u uVar) {
        return uVar instanceof j ? this.b : uVar instanceof c ? this.c : (m) this.f18a.get(new Integer(uVar.i()));
    }

    /* access modifiers changed from: protected */
    public final m a(o oVar) {
        m mVar;
        Integer num = new Integer(oVar.i());
        if (this.f18a.containsKey(num)) {
            mVar = (m) this.f18a.get(num);
            if (this.g.a()) {
                this.g.a(302, new Object[]{oVar, num, mVar});
            }
        } else {
            mVar = new m(this.g, oVar);
            this.f18a.put(num, mVar);
            if (this.g.a()) {
                this.g.a(303, new Object[]{oVar, num, mVar});
            }
        }
        return mVar;
    }

    public final m a(u uVar) {
        if (uVar instanceof b) {
            return d((b) uVar);
        }
        return (m) this.f18a.get(uVar instanceof a.a.a.a.a.a.e.i ? this.b : uVar instanceof d ? this.c : uVar instanceof e ? this.d : new Integer(uVar.i()));
    }

    public final void a() {
        this.g.a(305);
        this.f18a.clear();
    }

    /* access modifiers changed from: protected */
    public final void a(b bVar) {
        m d2 = d(bVar);
        b(bVar);
        if (d2 != null) {
            d2.a(bVar);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(i iVar) {
        this.f = true;
        this.e = iVar;
        Enumeration elements = this.f18a.elements();
        this.g.a(304, null, iVar);
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement != null) {
                synchronized (nextElement) {
                    ((m) nextElement).a(iVar);
                }
            }
        }
    }

    public final m b(u uVar) {
        Object num = uVar instanceof c ? this.c : uVar instanceof e ? this.d : new Integer(uVar.i());
        if (this.g.a()) {
            this.g.a(301, new Object[]{uVar, num});
        }
        return (m) this.f18a.remove(num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Integer] */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final a.a.a.a.a.a.m c(a.a.a.a.a.a.e.u r8) {
        /*
        // Method dump skipped, instructions count: 154
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a.a.a.a.f.c(a.a.a.a.a.a.e.u):a.a.a.a.a.a.m");
    }
}
