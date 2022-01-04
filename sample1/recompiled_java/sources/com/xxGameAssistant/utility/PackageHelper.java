package com.xxGameAssistant.utility;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.tendcloud.tenddata.e;

public class PackageHelper {
    Activity mActivity;

    public enum PH_FLAG {
        just_invalid,
        act_is_null,
        app_open_succeed,
        app_not_exist
    }

    public PackageHelper(Activity activity) {
        this.mActivity = activity;
    }

    public PH_FLAG openApp(String packageName) {
        PH_FLAG ph_flag = PH_FLAG.just_invalid;
        if (this.mActivity == null) {
            return PH_FLAG.act_is_null;
        }
        PackageManager packageManager = this.mActivity.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            Intent resolveIntent = new Intent("android.intent.action.MAIN", (Uri) null);
            resolveIntent.addCategory("android.intent.category.LAUNCHER");
            resolveIntent.setPackage(packageInfo.packageName);
            ResolveInfo reolveInfo = packageManager.queryIntentActivities(resolveIntent, 0).iterator().next();
            if (reolveInfo == null) {
                return PH_FLAG.app_not_exist;
            }
            String newPackageName = reolveInfo.activityInfo.packageName;
            String className = reolveInfo.activityInfo.name;
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(new ComponentName(newPackageName, className));
            intent.setFlags(268435456);
            this.mActivity.startActivity(intent);
            return PH_FLAG.app_open_succeed;
        } catch (PackageManager.NameNotFoundException e) {
            PH_FLAG flag = PH_FLAG.app_not_exist;
            e.printStackTrace();
            return flag;
        }
    }

    public Boolean isAppRunning(String packageName) throws Exception {
        if (this.mActivity == null) {
            throw new Exception("Activity not set, do init first");
        }
        for (ActivityManager.RunningAppProcessInfo info : ((ActivityManager) this.mActivity.getSystemService(e.g)).getRunningAppProcesses()) {
            String[] strArr = info.pkgList;
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    if (strArr[i].equals(packageName)) {
                        return true;
                    }
                    i++;
                }
            }
        }
        return false;
    }
}
