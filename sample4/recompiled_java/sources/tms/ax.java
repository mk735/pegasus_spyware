package tms;

import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

/* access modifiers changed from: package-private */
public final class ax {
    private Object a = new Object();
    private int[] b;
    private a[] c;

    /* access modifiers changed from: package-private */
    public static abstract class a {
        private TelephonyEntity a;
        private int b;
        private FilterResult c;
        private Object[] d;
        private int e;
        private Object f;

        a() {
        }

        public final TelephonyEntity a() {
            return this.a;
        }

        public final void a(FilterResult filterResult) {
            this.c = filterResult;
        }

        public final void a(Object obj) {
            this.f = obj;
        }

        public final int b() {
            return this.b;
        }

        public final Object[] c() {
            return this.d;
        }

        public final int d() {
            return this.e;
        }

        public final Object e() {
            return this.f;
        }

        /* access modifiers changed from: package-private */
        public abstract boolean f();

        /* access modifiers changed from: package-private */
        public abstract void g();
    }

    ax() {
    }

    private FilterResult a(int i, int i2, TelephonyEntity telephonyEntity, Object... objArr) {
        FilterResult filterResult = null;
        a aVar = this.c[i];
        if (aVar != null) {
            synchronized (this.c) {
                aVar.a = telephonyEntity;
                aVar.b = i2;
                aVar.d = objArr;
                aVar.e = this.b[i];
                if (aVar.f()) {
                    aVar.g();
                }
                filterResult = aVar.c;
                aVar.f = null;
                aVar.a = null;
                aVar.a((FilterResult) null);
                aVar.d = null;
            }
        }
        return filterResult;
    }

    public final FilterResult a(TelephonyEntity telephonyEntity, FilterConfig filterConfig, Object... objArr) {
        FilterResult filterResult = null;
        if (!(this.b == null || this.c == null || filterConfig == null)) {
            synchronized (this.a) {
                for (int i = 0; i < this.b.length; i++) {
                    int i2 = filterConfig.get(this.b[i]);
                    if (!(i2 == 4 || i2 == 3)) {
                        filterResult = a(i, i2, telephonyEntity, objArr);
                    }
                    if (filterResult != null) {
                        break;
                    }
                }
            }
        }
        return filterResult;
    }

    public final void a(int i, a aVar) {
        int i2 = 0;
        while (true) {
            if (i2 >= this.b.length) {
                i2 = -1;
                break;
            } else if (this.b[i2] == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            this.c[i2] = aVar;
            return;
        }
        throw new IndexOutOfBoundsException("the filed " + i + "is not define from setOrderedFileds method.");
    }

    public final void a(int... iArr) {
        this.b = iArr;
        this.c = new a[this.b.length];
    }
}
