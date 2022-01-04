package tms;

import android.database.ContentObserver;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import tms.cs;

final class ce implements Runnable {
    final /* synthetic */ CallLogEntity a;
    final /* synthetic */ cd b;

    ce(cd cdVar, CallLogEntity callLogEntity) {
        this.b = cdVar;
        this.a = callLogEntity;
    }

    public final void run() {
        if (this.a.type == 2) {
            cs.a aVar = this.b.b;
            ContentObserver unused = this.b.b.b;
            cs.a.a(aVar, this.a, this.b.b.e);
            return;
        }
        cs.a aVar2 = this.b.b;
        ContentObserver unused2 = this.b.b.b;
        cs.a.a(aVar2, this.a, this.b.b.d);
    }
}
