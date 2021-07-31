package com.lenovo.safecenter.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.lenovo.lps.sus.SUS;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.performance.ScanApplicationInfo;
import com.lenovo.safecenter.MainTab.AppDownloadActivity;
import com.lenovo.safecenter.broadcast.CheckPermissionService;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.support.MD5Util;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.support.WhiteAppsList;
import com.lenovo.safecenter.test.SafeCenter;
import com.lenovo.safecenter.utils.update.LeSafeDownLoadApk;
import com.lenovo.safecenter.utils.updateLab.AutoUpdateLabManager;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import ledroid.app.LedroidApplication;
import ledroid.root.LedroidServiceLauncher;
import ledroid.root.RootPermissionException;
import ledroid.services.LedroidPackageManager;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class Const extends LedroidApplication {
    public static final String ACTION_BROADCAST_NOTICE_UPDATE_LAB = "com.lenovo.safecenter.Broadcast.updateLab";
    public static final String ACTION_JUMP_ADMIN_GESTURE = "com.lenovo.safecenter.privacygesture.GestureAdminActivity";
    public static final String ACTION_JUMP_APP_LOCK = "com.lenovo.safecenter.LENOVO_APPLOCK";
    public static final String ACTION_JUMP_CHILD_MODE = "com.lenovo.safecenter.view.ForbiddenApplication";
    public static final String ACTION_JUMP_CHILD_MODE_SWITCH = "switch_child_mode";
    public static final String ACTION_JUMP_GUEST_MODE = "com.lenovo.safecenter.view.GuestModeSet";
    public static final String ACTION_JUMP_GUEST_MODE_SWITCH = "switch_guest_mode";
    public static final String ACTION_JUMP_KID_MODE = "com.lenovo.intent.action.kidmode";
    public static final String ACTION_JUMP_PROTECT_THIEF = "com.lenovo.safecenter.AgainstTheftSet";
    public static final String ACTION_JUMP_RPIVACY_SAFE = "com.lenovo.safecenter.privatezone";
    public static final String ACTION_JUMP_SETTING_PASSWORD = "com.lenovo.safecenter.safemode.SettingPassword";
    public static final String ACTION_JUMP_SET_GESTURE = "com.lenovo.safecenter.privacygesture.LePrivacyGestureTutorial";
    public static final String ACTION_JUMP_SWITCH_PROTECT_THIEF = "switch_protect_thief";
    public static final String ACTION_MODIFY_PASSWORD_USE_ANSWER = "action_modify_password_use_answer";
    public static final String ACTION_MODIFY_PASSWORD_USE_PRE_PASSWORD = "action_modify_password_use_pre_password";
    public static final String ACTION_NETWORK_STATS_UPDATED = "com.android.server.action.NETWORK_STATS_UPDATED";
    public static final String ACTION_NOTICE_QUERY_SYS_LAB = "com.lenovo.antispam.sysquery";
    public static final String ACTION_START_ACTIVITY_UPDATE_AND_PASSWORD = "com.lenovo.safecenter.updateAndPassword";
    public static final String ACTION_TRAFFIC_CHANGE = "com.lenovo.safecenter.updatetrafficbar.broadcast";
    public static final String BOOT_INIT = "com.lenovo.safecenter.boot.init";
    public static final String DELETE_ACTION_RTC = "com.lenovo.safecenter.deletetraffic.service.RTC";
    public static final String FILENAME_HOLIDAY_IMG = "holiday_img.jpg";
    public static final String GET_INIT_BAR_ACTION_RTC = "com.lenovo.safecenter.init.notification";
    public static final String INIT_BAR_ACTION_RTC = "com.lenovo.safecenter.init.trafficbar";
    public static final long INTERVALTIME = 86400000;
    public static final String KEY_FLOAT_WINDOW_SWITCH = "float_window_switch";
    public static final String KEY_HOLIDAY_IMG_ENDTIME = "holiday_img_endtime";
    public static final String KEY_HOLIDAY_IMG_ID = "holiday_img_id";
    public static final String KEY_HOLIDAY_IMG_STARTTIME = "holiday_img_starttime";
    public static final String KEY_HOLIDAY_IMG_URL = "holiday_img_imageurl";
    public static final String KEY_HOLIDAY_IMG_VERSION = "holiday_img_version";
    public static final String KEY_IS_OUT_MONTH_LIMIT_TRAFFIC_WARN = "is_Out_Month_Limit_Traffic_Warn";
    public static final String KEY_IS_PROTECT_HARASS_ON = "is_protect_harass_on_preference";
    public static final String KEY_IS_PROTECT_PEEP_ON_SAFE_PROTECT = "accessPInformation";
    public static final String KEY_IS_PROTECT_THIEF_ON = "theft_preference";
    public static final String KEY_IS_PROTECT_TRAFFIC_ON_SAFE_PROTECT = "tariff";
    public static final String KEY_IS_ROOT_THE_PHONE = "isRootThePhone";
    public static final String KEY_IS_SAFEINPUT_METHOD_STATE = "safeinput";
    public static final String KEY_IS_SAFEPAYMEN_ON = "safepaymen_on";
    public static final String KEY_MONTH_LIMIT_SMS = "Month_Limit_SMS";
    public static final String KEY_SAFE_MAIL = "safe_mail_preference";
    public static final String KEY_SAFE_MOBILE_NUMBER = "safe_number_preference";
    public static final String KEY_URL_BLACK_EXP_FLAG = "safe_url_black_exp_flag";
    public static final String KEY_URL_BLACK_LAST_FLAG = "safe_url_black_last_flag";
    public static final String KEY_URL_SAFEPAY_EXP_FLAG = "safe_url_safepay_exp_flag";
    public static final String KEY_URL_SAFEPAY_LAST_FLAG = "safe_url_safepay_last_flag";
    public static String LENOVO_APKS = "";
    public static final String PACKAGENAME_APP_LOCK = "com.lenovo.safebox";
    public static final String PACKAGENAME_KID_MODE = "com.lenovo.kidmode";
    public static final String PACKAGENAME_LE_BATTERY = "com.lenovo.safe.powercenter";
    public static final String PACKAGENAME_LE_CLOUD = "com.lenovo.leos.cloud.sync";
    public static final String PACKAGENAME_LE_WIDGET4X1 = "com.lenovo.safecenterwidget";
    public static final int PASSWORD_LENGTH = 6;
    public static final String PREF_NAME_HARASS_AND_VIRUS_STATE = "HarassAndVirusState";
    public static String SCREEN_HEIGHT = "screen_height";
    public static String SCREEN_WIDTH = "screen_width";
    public static int SDK_VERSION = 0;
    public static final String SERVICE_ACTION_RTC = "com.lenovo.safecenter.traffic.service.RTC";
    public static String SUS_CHANNEL = AppDownloadActivity.CHANNEL_KEY_SELF;
    public static final int SWIPE_MAX_OFF_PATH = 250;
    public static final int SWIPE_MIN_DISTANCE = 120;
    public static final int SWIPE_THRESHOLD_VELOCITY = 200;
    public static final String SWITCH_ANTI_TAPPING = "anti_tapping";
    public static final String SWITCH_BLOCK_NOTIFY = "block_notify";
    public static final String SWITCH_INJECT_SWITCH = "inject_switch";
    public static boolean THIRED_APP_SENDSMS = false;
    public static final String TRAFFIC_PREFERENCES_NAME = "safecenter_nac";
    public static final String UPDATE_BAR_ACTION_RTC = "com.lenovo.safecenter.updatetrafficbar.service.RTC";
    public static final String UPDATE_BAR_TO_SAFECENTER = "com.lenovo.safecenter.updatetrafficbar";
    public static String WHITE_LIST = "";
    private static Long a = 0L;
    private static SharedPreferences b = null;
    private static SharedPreferences c = null;
    private static boolean d = false;
    private static boolean e = false;
    public static final boolean isDebug = true;
    public static boolean isProvideMuti;
    public static boolean isTariff = true;
    public static final boolean isTrial = false;
    public static Map<String, SafeLog> lastSafeLogs = new HashMap();
    public static Context mContext;
    public static SharedPreferences mDefaultPreference;
    public static InputStream mInputStream;
    public static final ArrayList<Integer> mNetWhiteApps = new ArrayList<>();
    public static final ArrayList<Integer> mNetWhiteApps2 = new ArrayList<>();
    public static DataOutputStream mOutputStream;
    public static Process mProcess;
    public static Handler myHandler;
    public static Handler trafficHandler;
    public static boolean updateAPK = false;

    public static void setLenovoDevice(boolean flag) {
        mDefaultPreference.edit().putBoolean("lenovo_device", flag).commit();
    }

    public static boolean getLenovoDevice() {
        return mDefaultPreference.getBoolean("lenovo_device", false);
    }

    public static void setPreInstalledVersion(boolean version) {
        mDefaultPreference.edit().putBoolean("pre_installed_version", version).commit();
    }

    public static boolean getPreInstalledVersion() {
        return mDefaultPreference.getBoolean("pre_installed_version", false);
    }

    @Override // ledroid.app.LedroidApplication
    public void onCreate() {
        super.onCreate();
        Log.d("test", "const onCreate..........");
        mContext = getApplicationContext();
        TMSApplication.init(this, SecurityService.class, null, null);
        try {
            SUS_CHANNEL = getPackageManager().getApplicationInfo(getPackageName(), 128).metaData.getString(c.aw);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        AutoUpdateLabManager.initAutoUpdateData(getApplicationContext());
        startService(new Intent(this, LeSafeDownLoadApk.class));
        startService(new Intent(this, SecurityService.class));
        SUS.setSDKPromptDisableFlag(true);
        SUS.setCustomDefNotificationActivityFlag(true);
        TrackEvent.initialize(mContext);
        UpdateLabManager.initQueryLabStatus();
        UpdateLabManager.setUpdateLabStatus(0, -1);
        UpdateLabManager.setUpdateLabStatus(1, -1);
        UpdateLabManager.setUpdateLabStatus(2, -1);
        UpdateLabManager.setUpdateLabStatus(3, -1);
        UpdateLabManager.setIs_UpdateLabing(0, false);
        UpdateLabManager.setIs_UpdateLabing(1, false);
        UpdateLabManager.setIs_UpdateLabing(2, false);
        UpdateLabManager.setIs_UpdateLabing(3, false);
        UpdateLabManager.setIs_QueryLabing(0, false);
        UpdateLabManager.setIs_QueryLabing(1, false);
        UpdateLabManager.setIs_QueryLabing(2, false);
        UpdateLabManager.setIs_QueryLabing(3, false);
        mDefaultPreference = PreferenceManager.getDefaultSharedPreferences(mContext);
        b = getSharedPreferences(TRAFFIC_PREFERENCES_NAME, 0);
        c = getSharedPreferences(PREF_NAME_HARASS_AND_VIRUS_STATE, 1);
        SDK_VERSION = Build.VERSION.SDK_INT;
        Log.d("wu0wu", "SDK_VERSION: " + SDK_VERSION);
        getLogsCount(mContext);
        moveSave();
        setVersion();
        copyAssetsFiles("nb.jar", mContext);
        closeTimingKill(mContext);
        TrafficStatsService.setPluginPhoneNumberData(NetConstant.ERROR, mContext);
        TrafficStatsService.initFridayAlarm(mContext);
        try {
            getNetEverydayLimit();
        } catch (Exception e3) {
            Log.i("4.1", "touch throwable1");
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
            int i = PreferenceManager.getDefaultSharedPreferences(this).getInt("net_everyday_limit", -1);
            defaultSharedPreferences.edit().remove("net_everyday_limit").commit();
            defaultSharedPreferences.edit().putLong("net_everyday_limit", Long.valueOf((long) i).longValue()).commit();
            e3.printStackTrace();
        }
        insertTrafficData2DB(this);
        deleteTrafficData2DB(this);
        TrafficStatsService.initNetCache(this);
        TrafficStatsService.do4NewMonthBug(mContext);
        TrafficStatsService.openPhoneFirstRun(mContext);
        Intent it = new Intent(mContext, CheckPermissionService.class);
        it.putExtra("type", "init_app");
        mContext.startService(it);
        try {
            getPackageManager().getPackageInfo("com.lenovo.safewidget", 0);
            CMDHelper.delApp(this, "com.lenovo.safewidget", null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        DisplayMetrics displayMetrics = mContext.getResources().getDisplayMetrics();
        setScreenSize(displayMetrics.widthPixels, displayMetrics.heightPixels);
        PwdUtil.judgeUpdateAppLockPatchAtBackgroud(getApplicationContext());
        WflUtils.installWigdet4x1AtBackgroud(getApplicationContext());
        setDefaultInstall();
    }

    public void setDefaultInstall() {
        if (hasRootPermission()) {
            LedroidPackageManager ledroidPackageManager = getLedroidPackageManager();
            try {
                Uri uri = Uri.parse("file:///sdcard/abc.apk");
                Intent it1 = new Intent("android.intent.action.VIEW", uri);
                it1.setDataAndType(uri, "application/vnd.android.package-archive");
                Log.i("MyPackageManager", "-------> scheme: " + it1.getScheme());
                ledroidPackageManager.addPreferredActivity(it1, new ComponentName(TrafficStatsService.PACKAGE_NAME, "com.lenovo.install.InstallActivity"));
            } catch (RootPermissionException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void setIsRootThePhone() {
        if (!mDefaultPreference.contains(KEY_IS_ROOT_THE_PHONE)) {
            mDefaultPreference.edit().putBoolean(KEY_IS_ROOT_THE_PHONE, true).commit();
            WflUtils.Log("i", "wu0wu", "...setIsRootThePhone...");
        }
    }

    public static void initIsRootThePhone() {
        if (WflUtils.isRoot()) {
            setIsRootThePhone();
        }
    }

    public static boolean isRootThePhone() {
        if (!mDefaultPreference.contains(KEY_IS_ROOT_THE_PHONE)) {
            return false;
        }
        WflUtils.Log("i", "wu0wu", "...isRootThePhone...");
        return true;
    }

    public static String getHolidayImgId() {
        return mDefaultPreference.getString(KEY_HOLIDAY_IMG_ID, null);
    }

    public static String getHolidayImgVersion() {
        return mDefaultPreference.getString(KEY_HOLIDAY_IMG_VERSION, null);
    }

    public static String getHolidayImgUrl() {
        return mDefaultPreference.getString(KEY_HOLIDAY_IMG_URL, null);
    }

    public static boolean isReleased() {
        a = Long.valueOf(getFirstUsedTime() + 2592000000L);
        if (System.currentTimeMillis() > a.longValue()) {
            return true;
        }
        return false;
    }

    public static boolean isSafepaymen_on() {
        return mDefaultPreference.getBoolean(KEY_IS_SAFEPAYMEN_ON, true);
    }

    public static int getSafeInputMethod_state() {
        return mDefaultPreference.getInt(KEY_IS_SAFEINPUT_METHOD_STATE, -1);
    }

    public static boolean isFirstHealthCheckup() {
        return mDefaultPreference.getBoolean("is_first_health_checkup", true);
    }

    public static boolean setFirstHealthCheckup() {
        return mDefaultPreference.edit().putBoolean("is_first_health_checkup", false).commit();
    }

    public static boolean isFirstUsedLeSafeCenter() {
        return mDefaultPreference.getBoolean("is_first_used_lesafecenter", true);
    }

    public static boolean isFirstDecideShortCut() {
        return mDefaultPreference.getBoolean("is_first_decide_shortcut", true);
    }

    public static boolean setFirstDecideShortCut() {
        return mDefaultPreference.edit().putBoolean("is_first_decide_shortcut", false).commit();
    }

    public static boolean isFirstInstallFloatwindowShortCut() {
        return mDefaultPreference.getBoolean("is_first_install_floatwindow_shortcut", true);
    }

    public static boolean setFirstInstallFloatwindowShortCut() {
        return mDefaultPreference.edit().putBoolean("is_first_install_floatwindow_shortcut", false).commit();
    }

    public static boolean setFirstUsedLeSafeCenter() {
        return mDefaultPreference.edit().putBoolean("is_first_used_lesafecenter", false).commit();
    }

    public static long getFirstUsedTime() {
        return mDefaultPreference.getLong("first_used_lesafe_time", 0);
    }

    public static void setFirstUsedTime(long firstusedTime) {
        setFirstUsedLeSafeCenter();
        mDefaultPreference.edit().putLong("first_used_lesafe_time", firstusedTime).commit();
        WflUtils.Log("i", "wu0wu", "Const.getFirstUsedTime()=" + getFirstUsedTime());
    }

    public static long getDialogNoticeUpdateTime() {
        return mDefaultPreference.getLong("Dialog_Notice_Update_Time", 0);
    }

    public static void setDialogNoticeUpdateTime(long noticeTime) {
        mDefaultPreference.edit().putLong("Dialog_Notice_Update_Time", noticeTime).commit();
    }

    public static String getSafe_mail() {
        return mDefaultPreference.getString(KEY_SAFE_MAIL, "");
    }

    public static void setSafe_mail(String _safe_mail) {
        mDefaultPreference.edit().putString(KEY_SAFE_MAIL, _safe_mail).commit();
    }

    public static String getSafe_mobile_number() {
        return mDefaultPreference.getString(KEY_SAFE_MOBILE_NUMBER, "");
    }

    public static void setSafe_mobile_number(String safe_mobile_number) {
        mDefaultPreference.edit().putString(KEY_SAFE_MOBILE_NUMBER, safe_mobile_number).commit();
    }

    public static long getLastUpdateLabTime() {
        return mDefaultPreference.getLong("last_update_lab_time", 0);
    }

    public static void setLastUpdateLabTime(long lastUpdateLabTime) {
        mDefaultPreference.edit().putLong("last_update_lab_time", lastUpdateLabTime).commit();
    }

    public static long getTodayUsedTraffic() {
        return b.getLong("today_Used_Traffic", 0);
    }

    public static void setTodayUsedTraffic(long _todayUsedTraffic) {
        b.edit().putLong("today_Used_Traffic", _todayUsedTraffic).commit();
    }

    public static long getMonthUsedTraffic() {
        return b.getLong("month_used_traffic", 0);
    }

    public static void setMonthUsedTraffic(long _monthUsedTraffic) {
        b.edit().putLong("month_used_traffic", _monthUsedTraffic).commit();
    }

    public static long getMonthFreeTraffic() {
        return b.getLong("Month_Free_Traffic", 0);
    }

    public static void setMonthFreeTraffic(long _monthFreeTraffic) {
        b.edit().putLong("Month_Free_Traffic", _monthFreeTraffic).commit();
    }

    public static int getMonthLimitSMS() {
        return b.getInt(KEY_MONTH_LIMIT_SMS, 0);
    }

    public static void setMonthLimitSMS(int _monthLimitSMS) {
        b.edit().putInt(KEY_MONTH_LIMIT_SMS, _monthLimitSMS).commit();
    }

    public static int getProgressTrafficMonthUsed() {
        return b.getInt("progress_traffic_month_used", 0);
    }

    public static void setProgressTrafficMonthUsed(int _progressTrafficMonthUsed) {
        b.edit().putInt("progress_traffic_month_used", _progressTrafficMonthUsed).commit();
    }

    public static boolean isOutMonthLimitTrafficWarn() {
        return b.getBoolean(KEY_IS_OUT_MONTH_LIMIT_TRAFFIC_WARN, false);
    }

    public static void setOutMonthLimitTrafficWarn(boolean _isOutMonthLimitTrafficWarn) {
        b.edit().putBoolean(KEY_IS_OUT_MONTH_LIMIT_TRAFFIC_WARN, _isOutMonthLimitTrafficWarn).commit();
    }

    public static boolean isOutMonthLimitSMSWarn() {
        if (getMonthLimitSMS() == 0) {
            setOutMonthLimitSMSWarn(false);
        }
        return b.getBoolean("is_Out_Month_Limit_SMS_Warn", false);
    }

    public static void setOutMonthLimitSMSWarn(boolean _isOutMonthLimitSMSWarn) {
        b.edit().putBoolean("is_Out_Month_Limit_SMS_Warn", _isOutMonthLimitSMSWarn).commit();
    }

    public static long getSmsSendNumStatisticsTime() {
        return b.getLong("sms_send_num_statistics_time", 0);
    }

    public static void setSmsSendNumStatisticsTime(long _smsSendNumStatisticsTime) {
        b.edit().putLong("sms_send_num_statistics_time", _smsSendNumStatisticsTime).commit();
    }

    public static int getSmsSendNumCurrMonth() {
        return b.getInt("sms_send_num_Curr_month", 0);
    }

    public static void setSmsSendNumCurrMonth(int _smsSendNumCurrMonth) {
        b.edit().putInt("sms_send_num_Curr_month", _smsSendNumCurrMonth).commit();
    }

    public static int getCallIncommingDurationCurrMonth() {
        return b.getInt("call_incomming_duration_curr_month", 0);
    }

    public static void setCallIncommingDurationCurrMonth(int _callIncommingDurationCurrMonth) {
        b.edit().putInt("call_incomming_duration_curr_month", _callIncommingDurationCurrMonth).commit();
    }

    public static int getCallOutgoingDurationCurrMonth() {
        return b.getInt("call_outgoing_duration_curr_month", 0);
    }

    public static void setCallOutgoingDurationCurrMonth(int _callOutgoingDurationCurrMonth) {
        b.edit().putInt("call_outgoing_duration_curr_month", _callOutgoingDurationCurrMonth).commit();
    }

    public static long getCallDurationStatisticsTime() {
        return b.getLong("call_duration_satistics_time", 0);
    }

    public static void setCallDurationStatisticsTime(long _callDurationStatisticsTime) {
        b.edit().putLong("call_duration_satistics_time", _callDurationStatisticsTime).commit();
    }

    public static boolean getProtectTrafficSwitchState() {
        return mDefaultPreference.getBoolean("tariff", true);
    }

    public static void setProtectTrafficSwitchState(boolean isOn) {
        TrackEvent.reportProtectTrafficSwitchChange(Boolean.valueOf(isOn));
        mDefaultPreference.edit().putBoolean("tariff", isOn).commit();
    }

    public static boolean getProtectPeepSwitchState() {
        return mDefaultPreference.getBoolean(KEY_IS_PROTECT_PEEP_ON_SAFE_PROTECT, true);
    }

    public static void setProtectPeepSwitchState(boolean isOn) {
        TrackEvent.reportProtectPeepSwitchChange(Boolean.valueOf(isOn));
        mDefaultPreference.edit().putBoolean(KEY_IS_PROTECT_PEEP_ON_SAFE_PROTECT, isOn).commit();
    }

    public static boolean getProtectHarassSwitchState() {
        return c.getBoolean(KEY_IS_PROTECT_HARASS_ON, true);
    }

    public static void setProtectHarassSwitchState(boolean isOn) {
        TrackEvent.reportProtectHarassSwitchChange(Boolean.valueOf(isOn));
        c.edit().putBoolean(KEY_IS_PROTECT_HARASS_ON, isOn).commit();
    }

    public static boolean getProtectVirusSwitchState(Context context) {
        int isRealtimeProtectOpen = Settings.System.getInt(context.getContentResolver(), "isRealtimeProtectOpen", 1);
        if (isRealtimeProtectOpen == 1) {
            return true;
        }
        if (isRealtimeProtectOpen == 0) {
            return false;
        }
        return false;
    }

    public static void setProtectVirusSwitchState(boolean isOn, Context context) {
        TrackEvent.reportProtectVirusSwitchChange(Boolean.valueOf(isOn));
        if (isOn) {
            Settings.System.putInt(context.getContentResolver(), "isRealtimeProtectOpen", 1);
        } else {
            Settings.System.putInt(context.getContentResolver(), "isRealtimeProtectOpen", 0);
        }
    }

    public static boolean getProtectThiefSwitchState() {
        return mContext.getSharedPreferences("antitheft", 0).getBoolean(KEY_IS_PROTECT_THIEF_ON, false);
    }

    public static void setProtecThiefSwitchState(boolean isOn) {
        TrackEvent.reportProtectThiefSwitchChange(Boolean.valueOf(isOn));
        mContext.getSharedPreferences("antitheft", 0).edit().putBoolean(KEY_IS_PROTECT_THIEF_ON, isOn).commit();
    }

    public static void getLogsCount(Context context) {
        boolean child_mode_on;
        boolean guest_mode_on;
        AppDatabase database = new AppDatabase(context);
        ContentResolver resolver = context.getContentResolver();
        if (mDefaultPreference.getBoolean(SWITCH_BLOCK_NOTIFY, true)) {
            SafeCenterService.privacy_count = mDefaultPreference.getInt("privacy_logs", 0);
            SafeCenterService.charge_count = mDefaultPreference.getInt("tariff_logs", 0);
            if (SafeCenterService.privacy_count > 0) {
                lastSafeLogs.put(AppDatabase.PERM_TYPE_PRIVCY, database.getFirstLog(AppDatabase.DB_LOG_PRIVACY));
            }
            if (SafeCenterService.charge_count > 0) {
                lastSafeLogs.put("tariff", database.getFirstLog(AppDatabase.DB_LOG_TARIFF));
            }
        }
        SafeCenterService.harass_call_count = mDefaultPreference.getInt("harass_call_count", 0);
        SafeCenterService.harass_msg_count = mDefaultPreference.getInt("harass_sms_count", 0);
        if (SafeCenterService.harass_call_count > 0) {
            lastSafeLogs.put(AppDatabase.HARASS_CALL, database.getLastHarassLog(DatabaseTables.SYSTEM_MARK));
        }
        if (SafeCenterService.harass_msg_count > 0) {
            lastSafeLogs.put(AppDatabase.HARASS_SMS, database.getLastHarassLog("0"));
        }
        try {
            MyUtils.showLeSecNotification(context);
        } catch (RuntimeException e2) {
            e2.printStackTrace();
        }
        if (Settings.System.getInt(resolver, "child_mode_on", 0) == 1) {
            child_mode_on = true;
        } else {
            child_mode_on = false;
        }
        if (Settings.System.getInt(resolver, "guest_mode_on", 0) == 1) {
            guest_mode_on = true;
        } else {
            guest_mode_on = false;
        }
        if (child_mode_on) {
            SafeCenter.sendBoradcast(context, SafeCenter.ACTION_CHILD_MODE_ON, true);
        } else if (guest_mode_on) {
            SafeCenter.sendBoradcast(context, SafeCenter.ACTION_GUEST_MODE_ON, true);
        }
    }

    public static void savePrivacyLogsCount(Context context) {
        mDefaultPreference.edit().putInt("privacy_logs", SafeCenterService.privacy_count).commit();
        LeSafeObservable.get(context).noticeRefreshPrivacyLogs();
    }

    public static void saveChargeLogsCount(Context context) {
        SafeCenterService.charge_count = SafeCenterService.send_sms_count + SafeCenterService.call_count;
        mDefaultPreference.edit().putInt("tariff_logs", SafeCenterService.charge_count).commit();
        LeSafeObservable.get(context).noticeRefreshChargeLogs();
    }

    public static void saveHarassLogsCount(Context context) {
        mDefaultPreference.edit().putInt("harass_sms_count", SafeCenterService.harass_msg_count).putInt("harass_call_count", SafeCenterService.harass_call_count).commit();
        LeSafeObservable.get(context).noticeRefreshHarassLogs();
    }

    public static int addEntryPrivacySpaceCount() {
        int count = mDefaultPreference.getInt("Entry_privacy_space_count", 0) + 1;
        TrackEvent.reportEntryPrivacySpaceCount(count);
        mDefaultPreference.edit().putInt("Entry_privacy_space_count", count).commit();
        return count;
    }

    public static String getTrafficSmsQueryPhoneNumber() {
        return b.getString("traffic_sms_query_phone_number", "");
    }

    public static void setTrafficSmsQueryPhoneNumber(String phoneNumber) {
        b.edit().putString("traffic_sms_query_phone_number", phoneNumber).commit();
    }

    public static String getTrafficSmsQueryCode() {
        return b.getString("traffic_sms_query_code", "");
    }

    public static void setTrafficSmsQueryCode(String Code) {
        b.edit().putString("traffic_sms_query_code", Code).commit();
    }

    public static Date getTriggerTime2WithDate() {
        Date date = new Date();
        date.setHours(0);
        date.setMinutes(1);
        date.setSeconds(0);
        return date;
    }

    public static void insertTrafficData2DB(Context context) {
        Intent intent = new Intent();
        intent.setAction(SERVICE_ACTION_RTC);
        ((AlarmManager) context.getSystemService("alarm")).setRepeating(1, getTriggerTime(), 86400000, PendingIntent.getService(context, 0, intent, 0));
        Log.i("forzajuve", "we hava excute insertTrafficData2DB function");
        Log.i("forzajuve", "now time =" + new SimpleDateFormat("yyyy.M.dd.HH.mm").format(Long.valueOf(System.currentTimeMillis())));
    }

    public static long getTriggerTime() {
        Date date = new Date();
        date.setHours(23);
        date.setMinutes(59);
        date.setSeconds(0);
        return date.getTime();
    }

    public static void deleteTrafficData2DB(Context context) {
        Intent intent = new Intent();
        intent.setAction(DELETE_ACTION_RTC);
        ((AlarmManager) context.getSystemService("alarm")).setRepeating(1, getTriggerTime2(), 86400000, PendingIntent.getService(context, 0, intent, 0));
        Log.i("boot", "DELETE_ACTION_RTC");
        Log.i("boot", "now time =" + new SimpleDateFormat("yyyy.M.dd.HH.mm").format(Long.valueOf(System.currentTimeMillis())));
    }

    public static long getTriggerTime2() {
        Date date = new Date();
        date.setHours(0);
        date.setMinutes(1);
        date.setSeconds(0);
        return date.getTime();
    }

    public static boolean isAutoDenyNet() {
        return mDefaultPreference.getBoolean("auto_deny_net", false);
    }

    public static void setIsAutoDenyNet(boolean isAutoDenyNet) {
        mDefaultPreference.edit().putBoolean("auto_deny_net", isAutoDenyNet).commit();
    }

    public static boolean isNetAlarm() {
        return mDefaultPreference.getBoolean("net_alarm", true);
    }

    public static void setIsNetAlarm(boolean isAlarm) {
        mDefaultPreference.edit().putBoolean("net_alarm", isAlarm).commit();
    }

    public static boolean isNetAlarmedInMonth() {
        return mDefaultPreference.getBoolean("net_alarmed", false);
    }

    public static void setIsNetAlarmedInMonth(boolean isAlarm) {
        mDefaultPreference.edit().putBoolean("net_alarmed", isAlarm).commit();
    }

    public static long getNetEverydayLimit() {
        return mDefaultPreference.getLong("net_everyday_limit", 10);
    }

    public static void setNetEverydayLimit(long limit) {
        mDefaultPreference.edit().putLong("net_everyday_limit", limit).commit();
    }

    public static boolean getIsData2Top() {
        return mDefaultPreference.getBoolean("isData2Top", false);
    }

    public static void setIsData2Top(boolean isData2Top) {
        mDefaultPreference.edit().putBoolean("isData2Top", isData2Top).commit();
    }

    public static int getData2TopDay() {
        return mDefaultPreference.getInt("traffic_useup_date", -1);
    }

    public static void setData2TopDay(int date) {
        mDefaultPreference.edit().putInt("traffic_useup_date", date).commit();
    }

    public static String getMonthLimitTraffic() {
        Log.i("trafficui", "getMonthLimitTraffic() = " + NetCache.imsi);
        if (NetCache.traffic_mode == 13) {
            return b.getString("Month_Limit_Traffic", "-1");
        }
        String imsi = NetCache.imsi;
        if (TextUtils.isEmpty(NetCache.imsi)) {
            imsi = NetCache.getCached_imsi();
        }
        Log.i("trafficui", "getMonthLimitTraffic imsi = " + imsi);
        return b.getString("Month_Limit_Traffic" + imsi, "-1");
    }

    public static void setMonthLimitTraffic(String _monthLimitTraffic) {
        if (NetCache.traffic_mode == 13) {
            b.edit().putString("Month_Limit_Traffic", _monthLimitTraffic).commit();
        } else {
            b.edit().putString("Month_Limit_Traffic" + NetCache.imsi, _monthLimitTraffic).commit();
        }
    }

    public static boolean isNetLimitedInMonth() {
        return mDefaultPreference.getBoolean("net_limited_has_notice", false);
    }

    public static void setNetLimitedInMonth(boolean isNotice) {
        mDefaultPreference.edit().putBoolean("net_limited_has_notice", isNotice).commit();
    }

    public static boolean getIsTodayNoticed() {
        return mDefaultPreference.getBoolean("today_noticed", false);
    }

    public static void setIsTodayNoticed(boolean isNotice) {
        mDefaultPreference.edit().putBoolean("today_noticed", isNotice).commit();
    }

    public static boolean getHasNoticed2SetMonthLimit() {
        return mDefaultPreference.getBoolean("has_noticed_month_limit", false);
    }

    public static void setHasNoticed2MonthLimit(boolean isNotice) {
        mDefaultPreference.edit().putBoolean("has_noticed_month_limit", isNotice).commit();
    }

    public static String getMonthLimitTraffic2() {
        String imsi2 = NetCache.imsi2;
        if (TextUtils.isEmpty(NetCache.imsi2)) {
            imsi2 = NetCache.getCached_imsi2();
        }
        return b.getString("Month_Limit_Traffic" + imsi2, "-1");
    }

    public static void setMonthLimitTraffic2(String _monthLimitTraffic) {
        b.edit().putString("Month_Limit_Traffic" + NetCache.imsi2, _monthLimitTraffic).commit();
    }

    public static long getMonthFreeTraffic2() {
        return b.getLong("Month_Free_Traffic2", 0);
    }

    public static void setMonthFreeTraffic2(long _monthFreeTraffic) {
        b.edit().putLong("Month_Free_Traffic2", _monthFreeTraffic).commit();
    }

    public static boolean getIsCorrectCard1() {
        return b.getBoolean("net_month_has_correct", false);
    }

    public static void setIsCorrectCard1(boolean correct) {
        b.edit().putBoolean("net_month_has_correct", correct).commit();
    }

    public static boolean getIsCorrectCard2() {
        return b.getBoolean("net_month_has_correct2", false);
    }

    public static void setIsCorrectCard2(boolean correct) {
        b.edit().putBoolean("net_month_has_correct2", correct).commit();
    }

    public static int getProgressTrafficMonthUsed2() {
        return b.getInt("progress_traffic_month_used2", 0);
    }

    public static void setProgressTrafficMonthUsed2(int _progressTrafficMonthUsed) {
        b.edit().putInt("progress_traffic_month_used2", _progressTrafficMonthUsed).commit();
    }

    public static long getTodayUsedTraffic2() {
        return b.getLong("today_Used_Traffic2", 0);
    }

    public static void setTodayUsedTraffic2(long _todayUsedTraffic) {
        b.edit().putLong("today_Used_Traffic2", _todayUsedTraffic).commit();
    }

    public static long getMonthUsedTraffic2() {
        return b.getLong("month_used_traffic2", 0);
    }

    public static void setMonthUsedTraffic2(long _monthUsedTraffic) {
        b.edit().putLong("month_used_traffic2", _monthUsedTraffic).commit();
    }

    public static void setIsNetMonthFreeNoticeOn1(boolean on) {
        b.edit().putBoolean("net_month_free_notice1", on).commit();
    }

    public static boolean getIsNetMonthFreeNoticeOn1() {
        return b.getBoolean("net_month_free_notice1", true);
    }

    public static void setIsNetMonthFreeNoticeOn2(boolean on) {
        b.edit().putBoolean("net_month_free_notice2", on).commit();
    }

    public static boolean getIsNetMonthFreeNoticeOn2() {
        return b.getBoolean("net_month_free_notice2", true);
    }

    public static void setIsNetMonitorOn(boolean on) {
        b.edit().putBoolean("net_monitor", on).commit();
    }

    public static boolean getIsNetMonitorOn() {
        return b.getBoolean("net_monitor", true);
    }

    public static boolean getIsTodayNoticed2() {
        return mDefaultPreference.getBoolean("today_noticed2", false);
    }

    public static void setIsTodayNoticed2(boolean isNotice) {
        mDefaultPreference.edit().putBoolean("today_noticed2", isNotice).commit();
    }

    public static boolean isNetAlarmedInMonth2() {
        return mDefaultPreference.getBoolean("net_alarmed2", false);
    }

    public static void setIsNetAlarmedInMonth2(boolean isAlarm) {
        mDefaultPreference.edit().putBoolean("net_alarmed2", isAlarm).commit();
    }

    public static boolean isNetLimitedInMonth2() {
        return mDefaultPreference.getBoolean("net_limited_has_notice2", false);
    }

    public static void setNetLimitedInMonth2(boolean isNotice) {
        mDefaultPreference.edit().putBoolean("net_limited_has_notice2", isNotice).commit();
    }

    public static long getHealthCheckupTime() {
        return mDefaultPreference.getLong("health_check_up_time", 0);
    }

    public static void setHealthCheckupTime(long checkuptime) {
        mDefaultPreference.edit().putLong("health_check_up_time", checkuptime).commit();
    }

    public static Boolean getIsHealthCheckNoOptimiza() {
        return Boolean.valueOf(mDefaultPreference.getBoolean("is_health_check_no_optimiza", true));
    }

    public static void isHealthCheckNoOptimiza(Boolean optimizaState) {
        mDefaultPreference.edit().putBoolean("is_health_check_no_optimiza", optimizaState.booleanValue()).commit();
    }

    public static int getHealthCheckupScore() {
        return mDefaultPreference.getInt("health_check_up_score", 100);
    }

    public static void setHealthCheckupScore(int score) {
        mDefaultPreference.edit().putInt("health_check_up_score", score).commit();
    }

    public static void setScreenSize(int width, int height) {
        mDefaultPreference.edit().putInt(SCREEN_WIDTH, width).putInt(SCREEN_HEIGHT, height).commit();
    }

    public static int getScreenWidth() {
        return mDefaultPreference.getInt(SCREEN_WIDTH, 480);
    }

    public static int getScreenHeight() {
        return mDefaultPreference.getInt(SCREEN_HEIGHT, 800);
    }

    public static void saveHarassCount(Context context, int type) {
        SharedPreferences.Editor editor = mDefaultPreference.edit();
        if (type == 0) {
            editor.putInt("total_harass_sms", mDefaultPreference.getInt("total_harass_sms", 0) + 1).commit();
        } else if (type == 1) {
            editor.putInt("total_harass_call", mDefaultPreference.getInt("total_harass_call", 0) + 1).commit();
        }
    }

    public static int getHarassCount(Context context, int type) {
        if (type == 0) {
            return mDefaultPreference.getInt("total_harass_sms", 0);
        }
        if (type == 1) {
            return mDefaultPreference.getInt("total_harass_call", 0);
        }
        return 0;
    }

    public static int getNetCorrectCycle() {
        return mDefaultPreference.getInt("net_correct_cycle", 2);
    }

    public static void setNetCorrectCycle(int cycle) {
        mDefaultPreference.edit().putInt("net_correct_cycle", cycle).commit();
    }

    public static int getNetCorrectCycle2() {
        return mDefaultPreference.getInt("net_correct_cycle2", 2);
    }

    public static void setNetCorrectCycle2(int cycle) {
        mDefaultPreference.edit().putInt("net_correct_cycle2", cycle).commit();
    }

    public static int getClearTrafficDataTime(int month) {
        return mDefaultPreference.getInt("net_clear_traffic_data_month", -1);
    }

    public static void setClearTrafficDataTime(int month) {
        mDefaultPreference.edit().putInt("net_clear_traffic_data_month", month).commit();
    }

    public static void copyAssetsFiles(final String fileName, final Context context) {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.utils.Const.AnonymousClass1 */

            /* JADX WARNING: Removed duplicated region for block: B:16:0x005c A[SYNTHETIC, Splitter:B:16:0x005c] */
            /* JADX WARNING: Removed duplicated region for block: B:22:0x0068 A[SYNTHETIC, Splitter:B:22:0x0068] */
            /* JADX WARNING: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void run() {
                /*
                // Method dump skipped, instructions count: 124
                */
                throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.utils.Const.AnonymousClass1.run():void");
            }
        }).start();
    }

    public static void closeTimingKill(Context context) {
        SharedPreferences pref1 = context.getSharedPreferences(ScanApplicationInfo.POLICY_SETTINGS, 0);
        if (pref1.getBoolean(ScanApplicationInfo.POLICY_SWITCH, false)) {
            SharedPreferences.Editor editor = pref1.edit();
            editor.putBoolean(ScanApplicationInfo.POLICY_SWITCH, false);
            editor.commit();
        }
    }

    public static String getDataCacheImsi() {
        return b.getString("net_data_imsi_cache", NetCache.imsi);
    }

    public static void setDataCacheImsi(String imsi) {
        b.edit().putString("net_data_imsi_cache", imsi).commit();
    }

    public static boolean getIsRegistAutoCorrectSim1() {
        return b.getBoolean("net_traffic_auto_correct_regist_sim1", false);
    }

    public static void setIsRegistAutoCorrectSim1(boolean regist) {
        b.edit().putBoolean("net_traffic_auto_correct_regist_sim1", regist).commit();
    }

    public static boolean getIsRegistAutoCorrectSim2() {
        return b.getBoolean("net_traffic_auto_correct_regist_sim2", false);
    }

    public static void setIsRegistAutoCorrectSim2(boolean regist) {
        b.edit().putBoolean("net_traffic_auto_correct_regist_sim2", regist).commit();
    }

    public static void saveFileMd5(String fileName) {
        try {
            String md5 = MD5Util.getFileMD5String(new File("/data/data/com.lenovo.safecenter/files/" + fileName));
            Log.d("test", fileName + " md5: " + md5);
            mDefaultPreference.edit().putString("libsystemhook_md5", md5).commit();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static String getFileMd5(Context context) {
        String cpuinfo = WhiteAppsList.getCpuInfo(context);
        boolean intel = cpuinfo.equals("intel");
        boolean armv7 = cpuinfo.equals("armv7");
        if (intel) {
            WhiteAppsList.writeFile(context, "libsystemhook_x86.so", SafeCenterService.SYSTEM_LIB_NAME);
        } else if (armv7) {
            WhiteAppsList.writeFile(context, "libsystemhook_armv7.so", SafeCenterService.SYSTEM_LIB_NAME);
        } else {
            WhiteAppsList.writeFile(context, "libsystemhook_armv6.so", SafeCenterService.SYSTEM_LIB_NAME);
        }
        return MD5Util.getFileMD5(new File(context.getFilesDir() + CookieSpec.PATH_DELIM + SafeCenterService.SYSTEM_LIB_NAME));
    }

    public static String getSuMd5(Context context) {
        if (WhiteAppsList.getCpuInfo(context).equals("intel")) {
            WhiteAppsList.writeFile(context, "competing_x86", "competing_su");
        } else {
            WhiteAppsList.writeFile(context, "competing_su", "competing_su");
        }
        return MD5Util.getFileMD5(new File(context.getFilesDir() + "/competing_su"));
    }

    public static void obtainSu() {
        try {
            mProcess = Runtime.getRuntime().exec("su");
            mOutputStream = new DataOutputStream(mProcess.getOutputStream());
            e = true;
            mOutputStream.writeBytes("id\n");
            mOutputStream.flush();
            mInputStream = mProcess.getInputStream();
            String line = new BufferedReader(new InputStreamReader(mInputStream)).readLine();
            if (line != null) {
                d = true;
                Log.i("process", "su retrie permission" + (" denied " + line + "\n"));
            }
        } catch (Exception e2) {
            e = false;
            d = false;
            e2.printStackTrace();
            Log.i("process", e2.getMessage());
        }
    }

    public static void obtainRoot() {
        try {
            mProcess = Runtime.getRuntime().exec("/system/bin/cmcc_ps");
            mOutputStream = new DataOutputStream(mProcess.getOutputStream());
            e = true;
            mOutputStream.writeBytes("id\n");
            mOutputStream.flush();
            mInputStream = mProcess.getInputStream();
            String line = new BufferedReader(new InputStreamReader(mInputStream)).readLine();
            if (line != null) {
                d = true;
                Log.i("process", "cmcc_ps retrie permission" + (" denied " + line + "\n"));
            }
        } catch (Exception e2) {
            e = false;
            d = false;
            e2.printStackTrace();
            Log.i("process", e2.getMessage());
        }
    }

    public static void copyAssetsFilesRoot(final String fileName, final String target, final Context context) {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.utils.Const.AnonymousClass2 */

            /* JADX WARNING: Removed duplicated region for block: B:16:0x00aa A[SYNTHETIC, Splitter:B:16:0x00aa] */
            /* JADX WARNING: Removed duplicated region for block: B:22:0x00b6 A[SYNTHETIC, Splitter:B:22:0x00b6] */
            /* JADX WARNING: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void run() {
                /*
                // Method dump skipped, instructions count: 199
                */
                throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.utils.Const.AnonymousClass2.run():void");
            }
        }).start();
    }

    public static boolean isObtainRoot() {
        return d;
    }

    public static void setObtainRoot(boolean root) {
        d = root;
    }

    public static boolean isHaveRoot() {
        return e;
    }

    public static void setSafePhoneNumber(String number) {
        Settings.System.putInt(mContext.getContentResolver(), "number_jiami", 1);
        if ("".equals(number)) {
            Settings.System.putString(mContext.getContentResolver(), KEY_SAFE_MOBILE_NUMBER, "");
        } else {
            Settings.System.putString(mContext.getContentResolver(), KEY_SAFE_MOBILE_NUMBER, Untils.jiaMi(number, LedroidServiceLauncher.SERVICE_NAME));
        }
    }

    public static String getSafePhoneNumber() {
        String s = Settings.System.getString(mContext.getContentResolver(), KEY_SAFE_MOBILE_NUMBER);
        if (!TextUtils.isEmpty(s) && Settings.System.getInt(mContext.getContentResolver(), "number_jiami", -1) != 1) {
            setSafePhoneNumber(s);
            return s;
        } else if (!TextUtils.isEmpty(s)) {
            return Untils.jieMi(s, LedroidServiceLauncher.SERVICE_NAME);
        } else {
            return "";
        }
    }

    public static void setSafeMail(String mail) {
        Settings.System.putInt(mContext.getContentResolver(), "mail_jiami", 1);
        if ("".equals(mail)) {
            Settings.System.putString(mContext.getContentResolver(), KEY_SAFE_MAIL, "");
        } else {
            Settings.System.putString(mContext.getContentResolver(), KEY_SAFE_MAIL, Untils.jiaMi(mail, LedroidServiceLauncher.SERVICE_NAME));
        }
    }

    public static String getSafeMail() {
        String s = Settings.System.getString(mContext.getContentResolver(), KEY_SAFE_MAIL);
        if (!TextUtils.isEmpty(s) && Settings.System.getInt(mContext.getContentResolver(), "mail_jiami", -1) != 1) {
            setSafeMail(s);
            return s;
        } else if (!TextUtils.isEmpty(s)) {
            return Untils.jieMi(s, LedroidServiceLauncher.SERVICE_NAME);
        } else {
            return "";
        }
    }

    public static void moveSave() {
        boolean numberjiami = mDefaultPreference.getBoolean("number_jiami", false);
        boolean mailjiami = mDefaultPreference.getBoolean("mail_jiami", false);
        String phoneNumber = mDefaultPreference.getString(KEY_SAFE_MOBILE_NUMBER, "");
        String mail = mDefaultPreference.getString(KEY_SAFE_MAIL, "");
        if (!TextUtils.isEmpty(phoneNumber)) {
            if (numberjiami) {
                Settings.System.putInt(mContext.getContentResolver(), "number_jiami", 1);
                mDefaultPreference.edit().remove("number_jiami").commit();
                Settings.System.putString(mContext.getContentResolver(), KEY_SAFE_MOBILE_NUMBER, phoneNumber);
            } else {
                setSafePhoneNumber(phoneNumber);
            }
            mDefaultPreference.edit().remove(KEY_SAFE_MOBILE_NUMBER).commit();
        }
        if (!TextUtils.isEmpty(mail)) {
            if (mailjiami) {
                Settings.System.putInt(mContext.getContentResolver(), "mail_jiami", 1);
                mDefaultPreference.edit().remove("mail_jiami").commit();
                Settings.System.putString(mContext.getContentResolver(), KEY_SAFE_MAIL, mail);
            } else {
                setSafePhoneNumber(mail);
            }
            mDefaultPreference.edit().remove(KEY_SAFE_MAIL).commit();
        }
        if (!mContext.getSharedPreferences("antitheft", 0).getBoolean("move_save", false)) {
            a(0, "all");
            a(0, "locked");
            a(0, "alarm");
            a(0, "sim_changed_locked_screen");
            a(0, "sim_alarm_sms");
            a(0, "sim_alarm_screen");
            a(0, KEY_IS_PROTECT_THIEF_ON);
            a(0, "simchanged");
            a(1, "ORG_SIM_NUMBER");
            a(1, "ORG_SIM_NUMBER1");
            a(1, "ORG_SIM_NUMBER2");
            mContext.getSharedPreferences("antitheft", 0).edit().putBoolean("move_save", true).commit();
        }
    }

    private static void a(int type, String key) {
        SharedPreferences sp = mContext.getSharedPreferences("antitheft", 0);
        switch (type) {
            case 0:
                if (mDefaultPreference.getBoolean(key, false)) {
                    sp.edit().putBoolean(key, true).commit();
                    mDefaultPreference.edit().putBoolean(key, false).commit();
                    return;
                }
                return;
            case 1:
                String v = mDefaultPreference.getString(key, "");
                if (!TextUtils.isEmpty(v)) {
                    sp.edit().putString(key, v).commit();
                    mDefaultPreference.edit().putString(key, "").commit();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public static boolean isShowTaost() {
        if (mDefaultPreference.getInt("lesecversion", 0) > 1809) {
            return false;
        }
        return true;
    }

    public void setVersion() {
        try {
            if (Build.MANUFACTURER.toLowerCase().equals(LedroidServiceLauncher.SERVICE_NAME)) {
                mDefaultPreference.edit().putInt("lesecversion", Integer.parseInt(getPackageManager().getPackageArchiveInfo("/system/app/LenovoSafeCenter.apk", 1).versionName.substring(7, 11))).commit();
                if (mDefaultPreference.getInt("lesecversion", 0) > 1809) {
                    mDefaultPreference.edit().putBoolean(SWITCH_ANTI_TAPPING, true).commit();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String getFromShare(String method, String cmd, String value) {
        Log.i("status", method + "==" + value);
        if (!cmd.equals(PushReceiver.READ)) {
            mDefaultPreference.edit().putString(method, value).commit();
            return value;
        } else if (method.equals("applastin")) {
            return mDefaultPreference.getString(method, "1365495762000");
        } else {
            return mDefaultPreference.getString(method, "0");
        }
    }
}
