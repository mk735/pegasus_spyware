package com.lenovo.safecenter.Laboratory;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import com.lenovo.performancecenter.service.object.ApplicationDataInfo;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.support.CMDHelper;
import java.util.List;
import java.util.Map;
import org.apache.commons.httpclient.HttpState;

public class SafeHomePage {
    public static final String SAFE_HOME_PAGE = "http://hao.lenovo.com/?c=360";
    public static final String SAFE_HOME_PAGE_KEY = "safehomepage_on";
    private static SafeHomePage a;
    private static BroadcastReceiver c = null;
    private static String d = "SafeHomePage";
    private static Map<String, String[]> f;
    private static List g;
    private static List<String> h;
    public static boolean open = false;
    private Context b;
    private ActivityManager e;

    public static SafeHomePage getDefault(Context context) {
        if (a == null) {
            a = new SafeHomePage(context);
        }
        return a;
    }

    public void reLoad(String pkg) {
        g.clear();
        PackageManager pm = this.b.getPackageManager();
        Intent it = new Intent("android.intent.action.MAIN");
        it.addCategory("android.intent.category.HOME");
        for (ResolveInfo resolveInfo : pm.queryIntentActivities(it, 0)) {
            g.add(resolveInfo.activityInfo.packageName);
        }
        Log.i(d, "mDesktops size:" + g.size());
        Intent i = new Intent("android.intent.action.VIEW");
        i.setData(Uri.parse("http://m.idea123.cn"));
        i.setFlags(335544320);
        for (ResolveInfo resolveInfo2 : this.b.getPackageManager().queryIntentActivities(i, 65600)) {
            if (pkg.equals(resolveInfo2.activityInfo.packageName)) {
                f.put(resolveInfo2.activityInfo.packageName, new String[]{resolveInfo2.activityInfo.name, new ComponentName(resolveInfo2.activityInfo.applicationInfo.packageName, resolveInfo2.activityInfo.name).flattenToShortString(), HttpState.PREEMPTIVE_DEFAULT});
                Log.i(d, "add new browser:" + pkg);
            }
        }
    }

    private SafeHomePage() {
    }

    private SafeHomePage(Context context) {
        this.b = context;
    }

    public boolean register() {
        try {
            CMDHelper.editHomePage(this.b, true);
            ApplicationDataInfo.clearSeperateCache(this.b, SafeHomePageBroadcast.BROWSER_PKG);
            return true;
        } catch (Exception e2) {
            Log.e(d, "register error:" + e2);
            return false;
        }
    }

    public boolean unRegister() {
        try {
            CMDHelper.editHomePage(this.b, false);
            return true;
        } catch (Exception e2) {
            Log.e(d, "unregister error:" + e2);
            return false;
        }
    }

    public Map<String, String[]> getBrowsers() {
        return f;
    }

    public List getmDesktops() {
        return g;
    }

    public List<String> getOpenedBrowsers() {
        return h;
    }

    public void showIndex(String pkg) {
        Log.i(d, "showIndex---------------");
        open = true;
        try {
            Intent i = new Intent("android.intent.action.VIEW");
            i.setFlags(335609856);
            i.setClassName(pkg, f.get(pkg)[0]);
            i.setData(Uri.parse(SAFE_HOME_PAGE));
            Looper.prepare();
            this.b.startActivity(i);
            Toast.makeText(this.b, (int) R.string.safe_homepage, 0).show();
            Looper.loop();
        } catch (SecurityException e2) {
            if (CMDHelper.exeCmd(this.b, "am start -a android.intent.action.VIEW -d http://hao.lenovo.com/?c=360 -n " + f.get(pkg)[1] + " -f 0x14000000")) {
                Looper.prepare();
                Toast.makeText(this.b, (int) R.string.safe_homepage, 0).show();
                Looper.loop();
            }
        } catch (ActivityNotFoundException e3) {
        }
    }

    public void checkAppRunState(String pkg) {
        try {
            for (ActivityManager.RunningTaskInfo runningTaskInfo : this.e.getRunningTasks(20)) {
                if (pkg.equals(runningTaskInfo.topActivity.getPackageName())) {
                    return;
                }
            }
            open = false;
            Log.i(d, "checkAppRunState false---------------");
        } catch (SecurityException e2) {
            Log.i(d, "checkAppRunState SecurityException---------------");
        }
    }
}
