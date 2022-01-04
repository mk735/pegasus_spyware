package tms;

import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import tms.ax;
import tms.cs;

/* access modifiers changed from: package-private */
public final class cq extends ax.a {
    final /* synthetic */ cs.b a;
    private final int b = 8000;

    cq(cs.b bVar) {
        this.a = bVar;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final boolean f() {
        long longValue = ((Long) c()[0]).longValue();
        CallLogEntity callLogEntity = (CallLogEntity) a();
        return this.a.g != null ? this.a.g.isShortCall(callLogEntity, longValue - callLogEntity.date) : !(this.a.m) && b() == 2 && callLogEntity.type == 3 && callLogEntity.duration <= 8000 && longValue - callLogEntity.date <= 8000;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final void g() {
        CallLogEntity callLogEntity = (CallLogEntity) a();
        callLogEntity.duration = ((Long) c()[0]).longValue() - callLogEntity.date;
        this.a.i.cancelMissCall();
        cs.b.a(this.a, this, this.a.d, true, false);
    }
}
