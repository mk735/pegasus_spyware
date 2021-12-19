package a.a.a.a.a.a.d;

import a.a.a.a.a.a.h;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static b f7a;
    private static short b = 0;
    private short c;
    private String d;
    private boolean e;

    private a(short s, String str) {
        this.c = s;
        this.d = str;
        this.e = f7a != null && f7a.a(this.d);
    }

    public static synchronized a a(String str) {
        a aVar;
        synchronized (a.class) {
            if (f7a == null && h.a("java.io.File")) {
                try {
                    f7a = (b) Class.forName("a.a.a.a.a.a.d.c").newInstance();
                } catch (Exception e2) {
                }
            }
            aVar = new a(b, str);
            b = (short) (b + 1);
        }
        return aVar;
    }

    public final void a(int i) {
        if (this.e) {
            f7a.a(new d(this.c, i, null, null));
        }
    }

    public final void a(int i, Object[] objArr) {
        if (this.e) {
            f7a.a(new d(this.c, i, null, objArr));
        }
    }

    public final void a(int i, Object[] objArr, Throwable th) {
        if (this.e) {
            f7a.a(new d(this.c, i, th, objArr));
        }
    }

    public final boolean a() {
        return this.e;
    }
}
