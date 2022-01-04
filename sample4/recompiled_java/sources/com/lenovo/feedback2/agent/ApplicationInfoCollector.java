package com.lenovo.feedback2.agent;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

public class ApplicationInfoCollector {
    private static String a = "feedback";

    public static ApplicationInfo collectAppInfo(Context context) {
        Exception e;
        ApplicationInfo info = null;
        try {
            ApplicationInfo info2 = new ApplicationInfo();
            try {
                info2.setPackageName(context.getApplicationInfo().packageName);
                PackageManager pm = context.getPackageManager();
                PackageInfo pkgInfo = pm.getPackageInfo(context.getPackageName(), 0);
                info2.setVersionCode(pkgInfo.versionCode);
                info2.setVersionName(pkgInfo.versionName);
                info2.setAppName(pkgInfo.applicationInfo.loadLabel(pm).toString());
                return info2;
            } catch (Exception e2) {
                e = e2;
                info = info2;
                Log.e(a, "ApplicationInfoCollector  collect fail. ", e);
                return info;
            }
        } catch (Exception e3) {
            e = e3;
            Log.e(a, "ApplicationInfoCollector  collect fail. ", e);
            return info;
        }
    }
}
