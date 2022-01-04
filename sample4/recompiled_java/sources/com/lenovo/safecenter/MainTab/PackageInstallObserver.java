package com.lenovo.safecenter.MainTab;

import android.content.Context;
import android.content.pm.IPackageInstallObserver;
import android.os.Looper;
import android.widget.Toast;
import com.lenovo.safecenter.R;

public class PackageInstallObserver extends IPackageInstallObserver.Stub {
    private Context a;

    public PackageInstallObserver(Context c) {
        this.a = c;
    }

    public void packageInstalled(String packageName, int returnCode) {
        Looper.prepare();
        if (returnCode == 1) {
            Toast.makeText(this.a, (int) R.string.install_succeeded, 1).show();
        } else {
            Toast.makeText(this.a, (int) R.string.install_failed, 1).show();
        }
        Looper.loop();
    }
}
