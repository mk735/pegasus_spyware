package com.lenovo.safecenter.utils;

import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.CallLog;
import android.provider.MultiSIMUtils;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.AppsManager.SmsSettingsActivity;
import com.lenovo.safecenter.MainTab.AppDownloadActivity;
import com.lenovo.safecenter.MainTab.FirstUsePasswordSettingActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.support.ProcessInfo;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

public class WflUtils {
    public static boolean isRoot() {
        return TrafficStatsService.nacServerIsExist() || Const.isObtainRoot();
    }

    public static void Log(String level, String tag, String msg) {
        if ("d".equalsIgnoreCase(level)) {
            Log.d(tag, msg);
        } else if ("e".equalsIgnoreCase(level)) {
            Log.e(tag, msg);
        }
        if ("i".equalsIgnoreCase(level)) {
            Log.i(tag, msg);
        }
        if (PushReceiver.V.equalsIgnoreCase(level)) {
            Log.v(tag, msg);
        }
        if ("w".equalsIgnoreCase(level)) {
            Log.w(tag, msg);
        }
    }

    public static boolean isTopActivity(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTaskInfos = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        String topActivity = null;
        if (runningTaskInfos != null) {
            topActivity = runningTaskInfos.get(0).topActivity.getClassName();
            Log.i("wu0wu", "topActivity:" + topActivity);
        }
        if (topActivity == null) {
            return false;
        }
        return topActivity.equals(context.getClass().getCanonicalName());
    }

    public static void installWigdet4x1AtBackgroud(Context context) {
        if (isRoot() && !AppUtil.isAppExistence(context, Const.PACKAGENAME_LE_WIDGET4X1)) {
            AppDownloadActivity.copyAssetsFilesInstallAtBackgroud(AppDownloadActivity.WIDGET4X1_FILE_NAME, context, Const.PACKAGENAME_LE_WIDGET4X1);
        }
    }

    public static void startWirelessSettingsActivity(Context context) {
        try {
            if (Const.SDK_VERSION < 14) {
                Intent intent = new Intent();
                intent.setAction("android.settings.WIRELESS_SETTINGS");
                context.startActivity(intent);
                return;
            }
            Intent intent2 = new Intent();
            intent2.setAction("android.settings.SETTINGS");
            context.startActivity(intent2);
        } catch (Exception e) {
            Log("i", "wu0wu", "start activity Settings.ACTION_WIRELESS_SETTINGS error");
        }
    }

    public static void sendMessageToHandler(int what, Object obj, Handler handler) {
        Message msg = new Message();
        msg.what = what;
        msg.obj = obj;
        handler.sendMessage(msg);
    }

    public static String getActiveSubscriberId(Context context) {
        TelephonyManager telephony = (TelephonyManager) context.getSystemService("phone");
        if (!MyMultiSIMUtils.isMultiSim(context)) {
            return telephony.getSubscriberId();
        }
        Log.i("4.0", "SubscriberId=" + telephony.getSubscriberId());
        Log.i("4.0", "imsi1 = " + MultiSIMUtils.getDefault(context).getSubscriberId(0) + "imsi2 = " + MultiSIMUtils.getDefault(context).getSubscriberId(1));
        String imsi = telephony.getSubscriberId();
        if (imsi == null || "".equals(imsi)) {
            return MultiSIMUtils.getDefault(context).getSubscriberId(1);
        }
        return imsi;
    }

    public static boolean isNetworkAvailable(Context context) {
        ConnectivityManager connManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo wifiNetInfo = connManager.getNetworkInfo(1);
        NetworkInfo mobileNetInfo = connManager.getNetworkInfo(0);
        if (wifiNetInfo == null || !wifiNetInfo.isConnected()) {
            return mobileNetInfo != null && mobileNetInfo.isConnected();
        }
        return true;
    }

    public static boolean isMobileNetwork(Context context) {
        NetworkInfo mobileNetInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(0);
        if (mobileNetInfo != null && mobileNetInfo.isConnected()) {
            return true;
        }
        return false;
    }

    public static boolean isMobile2GNetwork(Context context) {
        NetworkInfo[] info;
        ConnectivityManager connectivity = (ConnectivityManager) context.getSystemService("connectivity");
        if (!(connectivity == null || (info = connectivity.getAllNetworkInfo()) == null)) {
            int length = info.length;
            for (int i = 0; i < length; i++) {
                if (info[i].getState() == NetworkInfo.State.CONNECTED && info[i].getType() == 0 && (info[i].getSubtype() == 1 || info[i].getSubtype() == 4 || info[i].getSubtype() == 2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isWifiNetwork(Context context) {
        NetworkInfo wifiNetInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1);
        return wifiNetInfo != null && wifiNetInfo.isConnected();
    }

    public static void setSpannableString(TextView tv, String source, int start, int end, int color) {
        SpannableString spannable = new SpannableString(source);
        spannable.setSpan(new ForegroundColorSpan(color), start, end, 0);
        tv.setText(spannable);
    }

    public static void jumpPrivatezoneOrDownloadpage(Context context) {
        if (!AppUtil.isAppExistence(context, Const.PACKAGENAME_APP_LOCK) || AppDownloadActivity.mustUpdateAppLock(context)) {
            AppDownloadActivity.startAppDownloadActivity(context, 3, true);
        } else {
            startPrivatezone(context);
        }
    }

    public static void jumpKidModeOrDownloadpage(Context context) {
        if (AppUtil.isAppExistence(context, Const.PACKAGENAME_KID_MODE)) {
            startKidMode(context);
        } else {
            AppDownloadActivity.startAppDownloadActivity(context, 4, true);
        }
    }

    public static void startKidMode(Context context) {
        try {
            Intent i = new Intent();
            i.setAction(Const.ACTION_JUMP_KID_MODE);
            i.putExtra("entryFromLeSafe", true);
            context.startActivity(i);
        } catch (Exception e) {
            Toast.makeText(context, context.getString(R.string.kidmode_disable), 0).show();
        }
    }

    public static void jumpAppLockOrDownloadpage(Context context) {
        if (!AppUtil.isAppExistence(context, Const.PACKAGENAME_APP_LOCK) || AppDownloadActivity.mustUpdateAppLock(context)) {
            AppDownloadActivity.startAppDownloadActivity(context, 3, true);
        } else {
            startAppLock(context);
        }
    }

    public static void startPrivatezone(Context context) {
        Intent intent11 = new Intent(Const.ACTION_JUMP_RPIVACY_SAFE);
        intent11.setFlags(268435456);
        intent11.putExtra("pwd", PwdUtil.getPassword(context));
        context.startActivity(intent11);
    }

    public static void startAppLock(Context context) {
        Intent intent11 = new Intent(Const.ACTION_JUMP_APP_LOCK);
        intent11.setFlags(268435456);
        intent11.putExtra("pwd", PwdUtil.getPassword(context));
        context.startActivity(intent11);
    }

    public static void startLeBattery(Context context) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName(Const.PACKAGENAME_LE_BATTERY, "com.lenovo.safe.powercenter.ui.SplashActivity"));
            context.startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(context, context.getString(R.string.le_battery_disable), 0).show();
        }
    }

    public static void startLeCloudSyn(Context context) {
        try {
            Intent intent11 = new Intent("com.lenovo.leos.cloud.sync.intent.action.MAIN");
            intent11.putExtra("isShowFinishDlg", false);
            context.startActivity(intent11);
        } catch (Exception e) {
            Toast.makeText(context, context.getString(R.string.lecloud_disable), 0).show();
        }
    }

    public static void startGuestMode(Context context) {
        Intent intent = new Intent();
        intent.setAction(Const.ACTION_JUMP_GUEST_MODE);
        intent.putExtra("entryFromLeSafe", true);
        context.startActivity(intent);
    }

    public static Bitmap readBitmap(Context context, int id) {
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inTargetDensity = context.getResources().getDisplayMetrics().densityDpi;
        opt.inPreferredConfig = Bitmap.Config.ARGB_8888;
        opt.inInputShareable = true;
        opt.inPurgeable = true;
        return BitmapFactory.decodeStream(context.getResources().openRawResource(id), null, opt);
    }

    public static boolean isInTheSameDay(long time1, long time2) {
        if (getDayOfYearfromLongTime(time1) == getDayOfYearfromLongTime(time2)) {
            return true;
        }
        return false;
    }

    public static boolean isInTheSameMonth(long time1, long time2) {
        if (getMonthfromLongTime(time1) == getMonthfromLongTime(time2)) {
            return true;
        }
        return false;
    }

    public static void showTariffOutLimitNotification(Context context, String title, String content, int id) {
        NotificationManager manager = (NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION);
        Notification notification = new Notification();
        notification.flags = 16;
        notification.when = System.currentTimeMillis();
        notification.icon = R.drawable.tariff_log;
        notification.defaults = 1;
        Intent intent = null;
        ComponentName component = new ComponentName("com.android.settings", "com.android.settings.Settings$DataUsageSummaryActivity");
        switch (id) {
            case 273:
                if (!"-1".equals(Const.getMonthLimitTraffic())) {
                    intent = new Intent();
                    if (Const.SDK_VERSION < 14) {
                        intent.setAction("android.settings.WIRELESS_SETTINGS");
                        break;
                    } else {
                        intent.setComponent(component);
                        intent.setFlags(536870912);
                        break;
                    }
                } else {
                    return;
                }
            case 4096:
                intent = new Intent(context, SmsSettingsActivity.class);
                intent.setFlags(536870912);
                break;
        }
        notification.setLatestEventInfo(context, title, content, PendingIntent.getActivity(context, 0, intent, 0));
        manager.notify(id, notification);
    }

    public static void startSettingPasswordActivity(Context context, String action) {
        Intent intent = new Intent(context, FirstUsePasswordSettingActivity.class);
        intent.setAction(action);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static int getCharIndexInString(String source) {
        for (int i = 0; i < source.length(); i++) {
            char c = source.charAt(i);
            if (c > 'a' && c < 'z') {
                return i;
            }
            if (c > 'A' && c < 'Z') {
                return i;
            }
        }
        return source.length();
    }

    public static String getTotalTrafficString(Long total) {
        if (total.longValue() > 104857600) {
            return String.valueOf(String.valueOf((total.longValue() / 1024) / 1024)) + "MB";
        }
        if (total.longValue() > 1048576) {
            return String.valueOf(String.format("%.1f", Float.valueOf((((float) total.longValue()) / 1024.0f) / 1024.0f))) + "MB";
        } else if (total.longValue() > 1024) {
            return String.valueOf(String.valueOf(total.longValue() / 1024)) + "KB";
        } else {
            return String.valueOf(String.valueOf(total)) + "B";
        }
    }

    public static long getNextMonthStartTime() {
        Date date = new Date();
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(date);
        cal.add(2, 1);
        return parseMonthStartTime(Long.valueOf(cal.getTimeInMillis())).longValue();
    }

    public static Long parseDayStartTime(Long longTime) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            return parseLongTime(convertLongTime2DateFormat(longTime, sdf), sdf);
        } catch (ParseException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public static Long parseMonthStartTime(Long longTime) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
        try {
            return parseLongTime(convertLongTime2DateFormat(longTime, sdf), sdf);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String convertLongTime2DateFormat(Long longTime, SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat.format(longTime);
    }

    public static Long parseLongTime(String dateTime, SimpleDateFormat simpleDateFormat) throws ParseException {
        return Long.valueOf(simpleDateFormat.parse(dateTime).getTime());
    }

    public static int getDayOfYearfromLongTime(long longTime) {
        Calendar c = Calendar.getInstance();
        c.setTimeInMillis(longTime);
        return c.get(6);
    }

    public static int getMonthfromLongTime(long longTime) {
        Calendar c = Calendar.getInstance();
        c.setTimeInMillis(longTime);
        int month = c.get(2) + 1;
        Log.i("wu0wu", "getMonthfromLongTime=" + month);
        return month;
    }

    public static int getDayOfMonthfromLongTime(long longTime) {
        Calendar c = Calendar.getInstance();
        c.setTimeInMillis(longTime);
        return c.get(5);
    }

    public static long getTriggerTime(int hour, int minute, int second) {
        Date date = new Date();
        date.setHours(hour);
        date.setMinutes(minute);
        date.setSeconds(second);
        return date.getTime();
    }

    public static int getCurrentMonth() {
        return Calendar.getInstance().get(2) + 1;
    }

    public static int getCurrentYear() {
        return Calendar.getInstance().get(1);
    }

    public static int getCurrentDayOfmMonth() {
        return Calendar.getInstance().get(5);
    }

    public static void registerContentObserver(Context context) {
        context.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, new SmsObserver(context, new Handler()));
        context.getContentResolver().registerContentObserver(CallLog.Calls.CONTENT_URI, true, new CallLogObserver(context, new Handler()));
    }

    public static String convertTimeFormat(Context context, int minute) {
        int hour = minute / 60;
        StringBuffer format = new StringBuffer();
        if (hour > 0) {
            int minute2 = minute % 60;
            if (minute2 > 0) {
                format.append(hour).append(context.getString(R.string.hour_text)).append(minute2).append(context.getString(R.string.minute));
            } else {
                format.append(hour).append(context.getString(R.string.hour_text));
            }
        } else {
            format.append(minute).append(context.getString(R.string.minute));
        }
        return format.toString();
    }

    public static int convertSecondsToMinute(int seconds) {
        int minute = seconds / 60;
        if (seconds % 60 > 0) {
            return minute + 1;
        }
        return minute;
    }

    public static int getDaysNumFromToday(long time) {
        long dayStartTime = parseDayStartTime(Long.valueOf(time)).longValue();
        if (dayStartTime == -1) {
            dayStartTime = System.currentTimeMillis();
        }
        return (int) ((System.currentTimeMillis() - dayStartTime) / 86400000);
    }

    public static List<ProcessInfo> getFilteredApps(Context context) {
        String appSize;
        List<ProcessInfo> processList = new ArrayList<>();
        List<ApplicationInfo> pAppList = context.getPackageManager().getInstalledApplications(8192);
        List<ActivityManager.RunningAppProcessInfo> procList = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (procList == null || procList.size() == 0) {
            return null;
        }
        HashMap<String, ActivityManager.RunningAppProcessInfo> runningMap = new HashMap<>();
        for (ActivityManager.RunningAppProcessInfo appProcInfo : procList) {
            if (!(appProcInfo == null || appProcInfo.pkgList == null)) {
                int size = appProcInfo.pkgList.length;
                for (int i = 0; i < size; i++) {
                    runningMap.put(appProcInfo.pkgList[i], appProcInfo);
                }
            }
        }
        for (ApplicationInfo appInfo : pAppList) {
            if (runningMap.get(appInfo.packageName) != null && AppUtil.isThirdpartApp(appInfo)) {
                ProcessInfo info = new ProcessInfo();
                info.setAppInfo(appInfo);
                try {
                    int[] pids = {runningMap.get(appInfo.packageName).pid};
                    if (pids[0] > 0) {
                        appSize = String.valueOf(ActivityManagerNative.getDefault().getProcessMemoryInfo(pids)[0].getTotalPss() * 1024);
                    } else {
                        appSize = "0";
                    }
                    info.setSize(appSize);
                    info.setState(runningMap.get(appInfo.packageName).importance);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (!appInfo.packageName.equals(TrafficStatsService.PACKAGE_NAME)) {
                    processList.add(info);
                }
            }
        }
        return processList;
    }

    public static void RunApp(String packageName, Context context) {
        try {
            PackageInfo pi = context.getPackageManager().getPackageInfo(packageName, 0);
            Intent resolveIntent = new Intent("android.intent.action.MAIN", (Uri) null);
            resolveIntent.setPackage(pi.packageName);
            ResolveInfo ri = context.getPackageManager().queryIntentActivities(resolveIntent, 0).iterator().next();
            if (ri != null) {
                String packageName2 = ri.activityInfo.packageName;
                String className = ri.activityInfo.name;
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setComponent(new ComponentName(packageName2, className));
                context.startActivity(intent);
            }
        } catch (Exception e) {
            Toast.makeText(context, (int) R.string.run_error, 1).show();
        }
    }
}
