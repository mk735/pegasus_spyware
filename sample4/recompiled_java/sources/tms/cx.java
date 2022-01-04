package tms;

import com.tencent.tmsecure.module.tools.IPackageChangedListener;

final class cx implements IPackageChangedListener {
    final /* synthetic */ cw a;

    cx(cw cwVar) {
        this.a = cwVar;
    }

    @Override // com.tencent.tmsecure.module.tools.IPackageChangedListener
    public final void onPackageAdded(String str) {
        this.a.a(new String[]{str});
    }

    @Override // com.tencent.tmsecure.module.tools.IPackageChangedListener
    public final void onPackageReinstall(String str) {
    }

    @Override // com.tencent.tmsecure.module.tools.IPackageChangedListener
    public final void onPackageRemoved(String str) {
    }
}
