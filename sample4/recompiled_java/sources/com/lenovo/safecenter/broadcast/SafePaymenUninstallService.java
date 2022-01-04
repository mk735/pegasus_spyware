package com.lenovo.safecenter.broadcast;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.IBinder;
import android.util.Log;

public class SafePaymenUninstallService extends Service {
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        String pkgName = intent.getStringExtra("pkgName");
        if (!a(pkgName)) {
            Log.i("safepayment", "pkgname null uninstall error!!!!!");
            stopSelf();
            return;
        }
        Intent uninstallIntent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + pkgName));
        uninstallIntent.setFlags(268435456);
        startActivity(uninstallIntent);
        stopSelf();
    }

    private boolean a(String pkgName) {
        PackageInfo packageInfo;
        try {
            packageInfo = getPackageManager().getPackageInfo(pkgName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
            e.printStackTrace();
        }
        if (packageInfo != null) {
            return true;
        }
        return false;
    }
}
