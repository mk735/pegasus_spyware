package tms;

import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import tms.ax;
import tms.cs;

/* access modifiers changed from: package-private */
public final class cp extends ax.a {
    final /* synthetic */ cs.b a;

    cp(cs.b bVar) {
        this.a = bVar;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final boolean f() {
        boolean z = true;
        CallLogEntity callLogEntity = (CallLogEntity) a();
        String str = callLogEntity.phonenum;
        if (str == null || str.length() <= 2) {
            return false;
        }
        boolean z2 = this.a.m ? callLogEntity.type != 2 : callLogEntity.type == 1;
        if (callLogEntity.duration > 5) {
            z = false;
        }
        return z2 & z;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final void g() {
        cs.b.a(this.a, this, null, false, false);
    }
}
