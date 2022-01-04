package com.lenovo.lps.sus.control;

import android.content.pm.IPackageInstallObserver;
import com.lenovo.lps.sus.c.c;

/* access modifiers changed from: package-private */
public final class i extends IPackageInstallObserver.Stub {
    final /* synthetic */ x a;

    i(x xVar) {
        this.a = xVar;
    }

    public final void packageInstalled(String str, int i) {
        this.a.c = false;
        this.a.d = true;
        this.a.i = Integer.valueOf(i);
        com.lenovo.lps.sus.c.i.a(c.b, "InstallThread 2 packageInstalled,mySilenceInstallResultCode=" + this.a.i);
    }
}
