package a.a.a.a.a.a.e;

import a.a.a.a.a.i;
import a.a.a.a.a.k;
import a.a.a.a.a.l;

public abstract class h extends u implements k {
    public h(byte b) {
        super(b);
    }

    @Override // a.a.a.a.a.k
    public final byte[] a() {
        try {
            return j();
        } catch (i e) {
            throw new l(e.getCause());
        }
    }

    @Override // a.a.a.a.a.k
    public final int b() {
        return a().length;
    }

    @Override // a.a.a.a.a.k
    public final int c() {
        return 0;
    }

    @Override // a.a.a.a.a.k
    public final byte[] d() {
        try {
            return c_();
        } catch (i e) {
            throw new l(e.getCause());
        }
    }

    @Override // a.a.a.a.a.k
    public int e() {
        return 0;
    }

    @Override // a.a.a.a.a.k
    public final int f() {
        return 0;
    }
}
