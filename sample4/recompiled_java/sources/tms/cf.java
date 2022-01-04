package tms;

import android.util.Log;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import tms.ax;
import tms.cs;

/* access modifiers changed from: package-private */
public final class cf extends ax.a {
    final /* synthetic */ cs.b a;

    cf(cs.b bVar) {
        this.a = bVar;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final boolean f() {
        Log.i("MMM", "私密来电判断");
        return b() == 2 && this.a.c.contains(((CallLogEntity) a()).phonenum, 0);
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final void g() {
        cs.b.a(this.a, this, this.a.e, true, true);
    }
}
