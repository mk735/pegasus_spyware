package tms;

import com.tencent.tmsecure.module.aresengine.SmsEntity;
import tms.ax;
import tms.bs;

/* access modifiers changed from: package-private */
public final class bk extends ax.a {
    final /* synthetic */ bs.b a;

    bk(bs.b bVar) {
        this.a = bVar;
    }

    @Override // tms.ax.a
    public final boolean f() {
        return b() != 2 && this.a.e.contains(((SmsEntity) a()).phonenum, 1);
    }

    @Override // tms.ax.a
    public final void g() {
        bs.b.a(this.a, this);
    }
}
