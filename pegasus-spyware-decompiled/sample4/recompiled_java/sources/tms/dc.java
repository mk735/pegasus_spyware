package tms;

import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateInfo;

/* access modifiers changed from: package-private */
public final class dc implements IUpdateObserver {
    final /* synthetic */ dt a;

    dc(dt dtVar) {
        this.a = dtVar;
    }

    @Override // com.tencent.tmsecure.module.update.IUpdateObserver
    public final void onChanged(UpdateInfo updateInfo) {
        int unused = this.a.i();
    }
}
