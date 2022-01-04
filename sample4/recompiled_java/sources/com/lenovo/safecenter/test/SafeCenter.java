package com.lenovo.safecenter.test;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.Log;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.lenovo.safecenter.Laboratory.SafeHomePageBroadcast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.support.WhiteAppsList;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class SafeCenter {
    public static String ACTION_CHILD_MODE_ON = "com.safecenter.broadcast.openChildMode";
    public static String ACTION_GUEST_MODE_ON = "com.safecenter.broadcast.openGuestMode";
    public static String LeTaskMenu = "com.android.letaskmenu";
    public static String browserApp = SafeHomePageBroadcast.BROWSER_PKG;
    public static String contactsApp = "com.android.contacts";
    public static String safeCenter = TrafficStatsService.PACKAGE_NAME;
    public static List<String> whiteList = null;

    public static boolean openChildMode(Context context, AppDatabase database) {
        ContentResolver resolver = context.getContentResolver();
        TrackEvent.reportChildModeSwitchChange(true);
        List<AppInfo> hideApp = database.queryAllHideApps(0);
        if (hideApp.size() <= 0) {
            Settings.System.putInt(resolver, "child_mode_on", 1);
            sendBoradcast(context, ACTION_CHILD_MODE_ON, true);
            return true;
        } else if (!CMDHelper.disableApps(context, hideApp)) {
            return false;
        } else {
            Settings.System.putInt(resolver, "child_mode_on", 1);
            sendBoradcast(context, ACTION_CHILD_MODE_ON, true);
            return true;
        }
    }

    public static boolean closeChildMode(Context context, AppDatabase database) {
        ContentResolver resolver = context.getContentResolver();
        TrackEvent.reportChildModeSwitchChange(false);
        List<AppInfo> hideApp = database.queryAllHideApps(0);
        if (hideApp.size() <= 0) {
            Settings.System.putInt(resolver, "child_mode_on", 0);
            sendBoradcast(context, ACTION_CHILD_MODE_ON, false);
            return true;
        } else if (!CMDHelper.enableApps(context, hideApp)) {
            return false;
        } else {
            Settings.System.putInt(resolver, "child_mode_on", 0);
            sendBoradcast(context, ACTION_CHILD_MODE_ON, false);
            return true;
        }
    }

    public static void setFlyModeEnable(Context context, boolean enabled) {
    }

    public static boolean openGuestMode(Context context, boolean childModeOn, AppDatabase database) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(context);
        ContentResolver resolver = context.getContentResolver();
        TrackEvent.reportGuestModeSwitchChange(true);
        if (prefs.getBoolean("cleanHistory", true)) {
            MyUtils.deleteBrowserRecord(context);
        }
        if (childModeOn) {
            Settings.System.putInt(resolver, "child_mode_on", 0);
            sendBoradcast(context, ACTION_CHILD_MODE_ON, false);
        }
        Settings.System.putInt(resolver, "guest_mode_on", 1);
        if (!CMDHelper.changeToGuestContactsAndMmsDB(context, childModeOn, database)) {
            return false;
        }
        sendBoradcast(context, ACTION_GUEST_MODE_ON, true);
        return true;
    }

    public static boolean closeGuestMode(Context context, boolean childModeOn, AppDatabase database) {
        ContentResolver resolver = context.getContentResolver();
        if (!childModeOn) {
            TrackEvent.reportGuestModeSwitchChange(false);
        }
        if (childModeOn) {
            Settings.System.putInt(resolver, "child_mode_on", 1);
            sendBoradcast(context, ACTION_CHILD_MODE_ON, true);
            TrackEvent.reportChildModeSwitchChange(true);
        }
        Settings.System.putInt(resolver, "guest_mode_on", 0);
        if (!CMDHelper.changeToNormalContactsAndMmsDB(context, childModeOn, database)) {
            return false;
        }
        sendBoradcast(context, ACTION_GUEST_MODE_ON, false);
        return true;
    }

    public static void sendBoradcast(Context context, String action, boolean state) {
        Intent it = new Intent(action);
        it.putExtra("state", state);
        context.sendBroadcast(it);
        Log.d("test", action + " | " + state);
    }

    public static void sendBoradcast(Context context, String action, String key, String str) {
        Intent it = new Intent(action);
        it.putExtra(key, str);
        context.sendBroadcast(it);
        Log.d("test", action + " | " + key + ": " + str);
    }

    private static boolean a(List<AppInfo> list, String name) {
        if (list != null) {
            for (AppInfo app : list) {
                if (app.packageName.equals(name)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static List<AppInfo> getLauncherApp(Context context, List<AppInfo> list) {
        PackageManager pm = context.getPackageManager();
        if (whiteList == null) {
            getWhitelist(context);
        }
        List<String> themeList = new ArrayList<>();
        themeList.add("com.lenovo.launcher.theme");
        Intent it = new Intent("android.intent.action.MAIN");
        it.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> resolveList = pm.queryIntentActivities(it, 0);
        List<AppInfo> appInfoList = new ArrayList<>(resolveList.size());
        for (ResolveInfo resolveInfo : resolveList) {
            boolean flag = false;
            AppInfo app = new AppInfo();
            app.packageName = resolveInfo.activityInfo.packageName;
            try {
                app.applicationInfo = pm.getApplicationInfo(app.packageName, 0);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            if (!whiteList.contains(app.packageName) && !a(list, app.packageName) && !WhiteAppsList.contains(themeList, app.packageName)) {
                for (AppInfo tmp : appInfoList) {
                    if (tmp.packageName.equals(app.packageName)) {
                        flag = true;
                        tmp.name += ", " + resolveInfo.loadLabel(pm).toString();
                    }
                }
                if (!flag) {
                    app.name = resolveInfo.loadLabel(pm).toString();
                    app.icon = resolveInfo.loadIcon(pm);
                    app.uid = app.applicationInfo.uid;
                    app.selected = 0;
                    appInfoList.add(app);
                }
            }
        }
        return appInfoList;
    }

    public static List<AppInfo> getWidgetApp(Context context, List<AppInfo> hideList, List<AppInfo> launcherList) {
        PackageManager pm = context.getPackageManager();
        List<AppWidgetProviderInfo> widgetList = AppWidgetManager.getInstance(context).getInstalledProviders();
        List<AppInfo> appInfoList = new ArrayList<>(widgetList.size());
        String smallTools = context.getString(R.string.smallTools);
        for (AppWidgetProviderInfo provider : widgetList) {
            AppInfo app = new AppInfo();
            app.packageName = provider.provider.getPackageName();
            if (!whiteList.contains(app.packageName) && !a(hideList, app.packageName) && !a(launcherList, app.packageName)) {
                try {
                    app.applicationInfo = pm.getApplicationInfo(app.packageName, 0);
                    app.uid = app.applicationInfo.uid;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
                app.className = provider.provider.getClassName();
                app.selected = 0;
                app.name = provider.label;
                if (!app.name.endsWith(smallTools) || !app.name.endsWith("Widget")) {
                    app.name += smallTools;
                }
                app.icon = pm.getDrawable(provider.provider.getPackageName(), provider.icon, null);
                appInfoList.add(app);
            }
        }
        return appInfoList;
    }

    public static void getWhitelist(Context context) {
        whiteList = new ArrayList();
        whiteList.add(TrafficStatsService.PACKAGE_NAME);
        whiteList.add("com.android.stk");
        whiteList.add("com.android.stk2");
        whiteList.add("com.android.camera");
        whiteList.add("com.android.clock");
        whiteList.add("com.android.providers.downloads.ui");
        whiteList.add("com.android.settings");
        whiteList.add("com.lenovomobile.deskclock");
        whiteList.add("com.android.deskclock");
        whiteList.add("com.android.mms");
        whiteList.add(Const.PACKAGENAME_LE_BATTERY);
        PackageManager pm = context.getPackageManager();
        Intent it = new Intent("android.intent.action.MAIN");
        it.addCategory("android.intent.category.HOME");
        List<ResolveInfo> resolveList = pm.queryIntentActivities(it, 0);
        for (int i = 0; i < resolveList.size(); i++) {
            whiteList.add(resolveList.get(i).activityInfo.packageName);
        }
        List<ApplicationInfo> installedAppList = pm.getInstalledApplications(0);
        for (int i2 = 0; i2 < installedAppList.size(); i2++) {
            String pkgName = installedAppList.get(i2).packageName;
            if (a(pm, pkgName)) {
                whiteList.add(pkgName);
            }
        }
        List<String> inputPkgs = a(context);
        for (int i3 = 0; i3 < inputPkgs.size(); i3++) {
            whiteList.add(inputPkgs.get(i3));
        }
    }

    private static boolean a(PackageManager pm, String pkgname) {
        if (pm.checkPermission("android.permission.BIND_WALLPAPER", pkgname) == 0) {
            return true;
        }
        try {
            PackageInfo pi = pm.getPackageInfo(pkgname, 4);
            if ((pi.applicationInfo.flags & 129) == 0) {
                if (pi.services == null) {
                    return false;
                }
                ServiceInfo[] arr$ = pi.services;
                for (ServiceInfo si : arr$) {
                    if (si.permission != null && si.permission.equals("android.permission.BIND_WALLPAPER")) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    private static List<String> a(Context context) {
        List<String> inputPkgs = new ArrayList<>();
        for (InputMethodInfo info : ((InputMethodManager) context.getSystemService("input_method")).getInputMethodList()) {
            inputPkgs.add(info.getPackageName());
        }
        return inputPkgs;
    }
}
