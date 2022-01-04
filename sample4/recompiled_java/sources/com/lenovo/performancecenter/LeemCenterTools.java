package com.lenovo.performancecenter;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.SystemClock;
import android.util.Log;
import com.lenovo.performancecenter.framework.DataLayerManager;
import java.util.ArrayList;
import java.util.List;

public class LeemCenterTools {
    public static final String CURRENT_TIME = "currentTime";
    public static final int IMPORTANCE_BACKGROUND = 400;
    public static final int IMPORTANCE_CANNOT_STAR = 600;
    public static final int IMPORTANCE_CANT_SAVE_STATE = 170;
    public static final int IMPORTANCE_EMPTY = 500;
    public static final int IMPORTANCE_FOREGROUND = 100;
    public static final int IMPORTANCE_PERCEPTIBLE = 130;
    public static final int IMPORTANCE_SERVICE = 300;
    public static final int IMPORTANCE_VISIBLE = 200;
    public static final String LAST_BOOT_TIME = "lastTime";
    public static final String LAST_CHECKUP_AUTOOPTIMEZE_SHAREDPREFERENCE = "autooptimize";
    public static final String LAST_CHECKUP_SCORE_SHAREDPREFERENCE = "lastscore";
    public static final String LAST_CHECKUP_SHAREDPREFERENCE = "check";
    public static final String LAST_CHECKUP_TIME_SHAREDPREFERENCE = "lasttime";
    public static final String LAST_CHECK_TIME = "last_check_time";
    public static final String LAST_UPDATE_MODEL_CHECK_TIME = "last_update_model_check_time";
    public static final int NOT_OFTEN_USED = 7;
    public static final String UPTIME_FILE = "uptime";

    public static float getBootStartTime(Context mContext) {
        return mContext.getSharedPreferences(UPTIME_FILE, 0).getFloat(CURRENT_TIME, 0.0f);
    }

    public static float getLastBootStartTime(Context mContext) {
        return mContext.getSharedPreferences(UPTIME_FILE, 0).getFloat(LAST_BOOT_TIME, 0.0f);
    }

    public static void writeBootStartTime(Context mContext) {
        float lastBootCost = getBootStartTime(mContext);
        float f = ((float) SystemClock.elapsedRealtime()) / 1000.0f;
        Log.i("LeemCenterTools", "writeBootStartTime()...lastBootCost=" + lastBootCost + "---currentCost=" + f);
        SharedPreferences.Editor editor = mContext.getSharedPreferences(UPTIME_FILE, 0).edit();
        editor.putFloat(LAST_BOOT_TIME, lastBootCost);
        if (f > 90.0f) {
            editor.putFloat(LAST_BOOT_TIME, f);
        } else {
            editor.putFloat(CURRENT_TIME, f);
        }
        editor.commit();
    }

    public static int getBootCount(Context context) {
        int count = 0;
        if (context == null) {
            return 0;
        }
        PackageManager mPm = context.getPackageManager();
        List<ResolveInfo> resolves = context.getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 600);
        if (resolves != null) {
            ArrayList<String> maps = new ArrayList<>();
            for (ResolveInfo resolve : resolves) {
                ApplicationInfo app = resolve.activityInfo.applicationInfo;
                Log.i("LeemCenterTools", "getBootCount()...app.pkgName=" + app.packageName + "---label=" + app.name);
                if (!DataLayerManager.isInSysWhiteList(app.packageName, context) && (app.flags & 1) == 0 && !maps.contains(app.packageName) && !app.packageName.equals(context.getPackageName()) && mPm.getComponentEnabledSetting(new ComponentName(app.packageName, resolve.activityInfo.name)) != 2) {
                    Log.i("LeemCenterTools", "|||||||||||...app.pkgName=" + app.packageName + "---label=" + app.name);
                    maps.add(app.packageName);
                    count++;
                }
            }
        }
        return count;
    }
}
