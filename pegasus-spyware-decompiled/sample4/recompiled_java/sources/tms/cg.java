package tms;

import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import tms.ax;
import tms.cs;

/* access modifiers changed from: package-private */
public final class cg extends ax.a {
    final /* synthetic */ cs.b a;

    cg(cs.b bVar) {
        this.a = bVar;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final boolean f() {
        CallLogEntity callLogEntity = (CallLogEntity) a();
        return (b() == 2 || callLogEntity.type == 2 || !this.a.a.contains(callLogEntity.phonenum, 0)) ? false : true;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final void g() {
        cs.b.a(this.a, this, this.a.d, b() == 1, true);
    }
}
