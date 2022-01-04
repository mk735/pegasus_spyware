package a.a.a.a.a.a;

import a.a.a.a.a.c;
import java.util.Enumeration;
import java.util.Hashtable;

public final class k implements c {

    /* renamed from: a  reason: collision with root package name */
    private Hashtable f21a;

    @Override // a.a.a.a.a.c
    public final a.a.a.a.a.k a(String str) {
        return (a.a.a.a.a.k) this.f21a.get(str);
    }

    @Override // a.a.a.a.a.c
    public final void a() {
        this.f21a.clear();
    }

    @Override // a.a.a.a.a.c
    public final void a(String str, a.a.a.a.a.k kVar) {
        this.f21a.put(str, kVar);
    }

    @Override // a.a.a.a.a.c
    public final void a(String str, String str2) {
        this.f21a = new Hashtable();
    }

    @Override // a.a.a.a.a.c
    public final Enumeration b() {
        return this.f21a.keys();
    }

    @Override // a.a.a.a.a.c
    public final void b(String str) {
        this.f21a.remove(str);
    }

    @Override // a.a.a.a.a.c
    public final void c() {
        this.f21a.clear();
    }

    @Override // a.a.a.a.a.c
    public final boolean c(String str) {
        return this.f21a.containsKey(str);
    }
}
