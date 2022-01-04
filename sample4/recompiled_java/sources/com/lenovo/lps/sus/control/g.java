package com.lenovo.lps.sus.control;

import android.content.pm.IPackageInstallObserver;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

/* access modifiers changed from: package-private */
public final class g extends IPackageInstallObserver.Stub {
    final /* synthetic */ x a;

    g(x xVar) {
        this.a = xVar;
    }

    public final void packageInstalled(String str, int i) {
        this.a.d = true;
        this.a.i = Integer.valueOf(i);
        i.a(c.b, "InstallThread 1 packageInstalled,mySilenceInstallResultCode=" + this.a.i);
    }
}
