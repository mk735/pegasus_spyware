package tms;

import QQPIM.SoftListType;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateInfo;

/* access modifiers changed from: package-private */
public final class j implements IUpdateObserver {
    final /* synthetic */ as a;

    j(as asVar) {
        this.a = asVar;
    }

    @Override // com.tencent.tmsecure.module.update.IUpdateObserver
    public final void onChanged(UpdateInfo updateInfo) {
        as.a(this.a, SoftListType.WHITELIST_COMMON);
    }
}
