package tms;

import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import tms.ax;
import tms.cs;

/* access modifiers changed from: package-private */
public final class cr extends ax.a {
    final /* synthetic */ cs.b a;

    cr(cs.b bVar) {
        this.a = bVar;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final boolean f() {
        return ((CallLogEntity) a()).type != 2 && b() == 2;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final void g() {
        cs.b.a(this.a, this, this.a.d, false, true);
    }
}
