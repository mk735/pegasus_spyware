package a.a.a.a.a;

import a.a.a.a.a.a.a;
import a.a.a.a.a.a.e.d;
import a.a.a.a.a.a.e.e;
import a.a.a.a.a.a.e.t;
import a.a.a.a.a.a.g;
import a.a.a.a.a.a.h;
import a.a.a.a.a.a.j;
import a.a.a.a.a.a.k;
import a.a.a.a.a.a.o;
import a.a.a.a.a.a.q;
import a.a.a.a.a.a.r;
import java.util.Hashtable;
import java.util.Properties;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;

public final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    private String f27a;
    private String b;
    private int c;
    private a d;
    private Hashtable e;
    private c f;
    private a.a.a.a.a.a.d.a g;

    public b(String str, String str2, c cVar) {
        int i;
        if (str2 == null || str2.length() == 0 || str2.length() > 23) {
            throw new IllegalArgumentException();
        }
        this.g = a.a.a.a.a.a.d.a.a(str2);
        this.b = str;
        if (str.startsWith("tcp://")) {
            i = 0;
        } else if (str.startsWith("ssl://")) {
            i = 1;
        } else if (str.startsWith("local://")) {
            i = 2;
        } else {
            throw new IllegalArgumentException();
        }
        this.c = i;
        this.f27a = str2;
        this.f = cVar;
        if (this.f == null) {
            this.f = new k();
        }
        this.g.a(101, new Object[]{str2, str, cVar});
        this.f.a(str2, str);
        this.d = new a(this, this.f, this.g);
        this.f.a();
        this.e = new Hashtable();
    }

    private o a(String str, d dVar) {
        a.a.a.a.a.a.c.a aVar;
        String[] a2;
        SocketFactory e2 = dVar.e();
        switch (this.c) {
            case 0:
                String substring = str.substring(6);
                String c2 = c(substring);
                int b2 = b(substring, 1883);
                if (e2 == null) {
                    e2 = SocketFactory.getDefault();
                    dVar.a(e2);
                } else if (e2 instanceof SSLSocketFactory) {
                    throw h.a(32105);
                }
                return new r(this.g, e2, c2, b2);
            case 1:
                String substring2 = str.substring(6);
                String c3 = c(substring2);
                int b3 = b(substring2, 8883);
                if (e2 == null) {
                    try {
                        a.a.a.a.a.a.c.a aVar2 = new a.a.a.a.a.a.c.a();
                        Properties h = dVar.h();
                        if (h != null) {
                            aVar2.a(h);
                        }
                        aVar = aVar2;
                        e2 = aVar2.b();
                    } catch (a.a.a.a.a.a.a.a e3) {
                        throw h.a(e3.getCause());
                    }
                } else if (!(e2 instanceof SSLSocketFactory)) {
                    throw h.a(32105);
                } else {
                    aVar = null;
                }
                q qVar = new q(this.g, (SSLSocketFactory) e2, c3, b3);
                qVar.a(dVar.d());
                if (aVar == null || (a2 = aVar.a()) == null) {
                    return qVar;
                }
                qVar.a(a2);
                return qVar;
            case 2:
                return new j(str.substring(8));
            default:
                return null;
        }
    }

    private static int b(String str, int i) {
        int lastIndexOf = str.lastIndexOf(58);
        return lastIndexOf == -1 ? i : Integer.valueOf(str.substring(lastIndexOf + 1)).intValue();
    }

    private static String c(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        int lastIndexOf2 = str.lastIndexOf(58);
        if (lastIndexOf2 == -1) {
            lastIndexOf2 = str.length();
        }
        return str.substring(lastIndexOf + 1, lastIndexOf2);
    }

    @Override // a.a.a.a.a.a.g
    public final n a(String str) {
        if (str.indexOf(35) == -1 && str.indexOf(43) == -1) {
            n nVar = (n) this.e.get(str);
            if (nVar != null) {
                return nVar;
            }
            n nVar2 = new n(str, this.d);
            this.e.put(str, nVar2);
            return nVar2;
        }
        throw new IllegalArgumentException();
    }

    public final void a() {
        this.g.a(104, new Object[]{new Long(30000)});
        try {
            this.d.a(new e());
        } catch (i e2) {
            this.g.a(105, null, e2);
            throw e2;
        }
    }

    public final void a(a aVar) {
        this.d.a(aVar);
    }

    public final void a(d dVar) {
        if (this.d.a()) {
            throw h.a(32100);
        }
        if (this.g.a()) {
            a.a.a.a.a.a.d.a aVar = this.g;
            Object[] objArr = new Object[6];
            objArr[0] = new Boolean(dVar.i());
            objArr[1] = new Integer(dVar.d());
            objArr[2] = new Integer(dVar.c());
            objArr[3] = dVar.b();
            objArr[4] = dVar.a() == null ? "[null]" : "[notnull]";
            objArr[5] = dVar.g() == null ? "[null]" : "[notnull]";
            aVar.a(103, objArr);
        }
        this.d.a(a(this.b, dVar));
        this.f.a(this.f27a, this.b);
        if (dVar.i()) {
            this.f.c();
        }
        this.d.a(new d(this.f27a, dVar.i(), dVar.c(), dVar.b(), dVar.a(), dVar.g(), dVar.f()), dVar.d(), (long) dVar.c(), dVar.i());
    }

    public final void a(String str, int i) {
        String[] strArr = {str};
        int[] iArr = {i};
        if (strArr.length != iArr.length) {
            throw new IllegalArgumentException();
        }
        if (this.g.a()) {
            String str2 = "";
            int i2 = 0;
            while (i2 < strArr.length) {
                if (i2 > 0) {
                    str2 = String.valueOf(str2) + ", ";
                }
                String str3 = String.valueOf(str2) + strArr[i2] + ":" + iArr[i2];
                i2++;
                str2 = str3;
            }
            this.g.a(106, new Object[]{str2});
        }
        this.d.a(new a.a.a.a.a.a.e.r(strArr, iArr));
    }

    public final void b(String str) {
        String[] strArr = {str};
        if (this.g.a()) {
            String str2 = "";
            int i = 0;
            while (i < strArr.length) {
                if (i > 0) {
                    str2 = String.valueOf(str2) + ", ";
                }
                String str3 = String.valueOf(str2) + strArr[i];
                i++;
                str2 = str3;
            }
            this.g.a(107, new Object[]{str2});
        }
        this.d.a(new t(strArr));
    }

    public final boolean b() {
        return this.d.a();
    }
}
