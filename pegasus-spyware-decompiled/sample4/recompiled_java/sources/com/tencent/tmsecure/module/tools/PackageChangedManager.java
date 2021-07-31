package com.tencent.tmsecure.module.tools;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.gn;

public final class PackageChangedManager extends BaseManager {
    private gn a;

    public final IPackageChangedListener addListener(IPackageChangedListener iPackageChangedListener) {
        if (isExpired()) {
            return null;
        }
        return this.a.a(iPackageChangedListener);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new gn();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final IPackageChangedListener removeListener(IPackageChangedListener iPackageChangedListener) {
        if (isExpired()) {
            return null;
        }
        return this.a.b(iPackageChangedListener);
    }
}
