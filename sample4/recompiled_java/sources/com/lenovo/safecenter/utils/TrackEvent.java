package com.lenovo.safecenter.utils;

import android.content.Context;
import android.util.Log;
import com.lenovo.lps.reaper.sdk.AnalyticsTracker;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.net.support.TrafficStatsService;

public class TrackEvent {
    public static final String PAGE_NAME_HEALTH_CHECK = "healthCheck";
    public static final String PAGE_NAME_IGNORE_VIRUS_CAN_UPDATE_NOTICE = "everyweekVirusUpdateNotice";
    public static final String PAGE_NAME_SHORTCUT_SWITCH = "ShortcutSwitch";
    public static final String PAGE_NAME_TRAFFIC_OUT_LIMIT = "TrafficOutLimit";
    public static final String PAGE_NAME_TRAFFIC_USED_DEDAIL = "TrafficUsedDedail";
    private static AnalyticsTracker a;

    public static void initialize(Context context) {
        try {
            a = AnalyticsTracker.getInstance();
            a.initialize(context);
        } catch (Exception e) {
            WflUtils.Log("i", "wu0wu", "TrackEvent initialize Exception:" + e.toString());
        }
    }

    public static void shutdown() {
        try {
            a.shutdown();
        } catch (Exception e) {
            WflUtils.Log("i", "wu0wu", "TrackEvent shutdown Exception:" + e.toString());
        }
    }

    public static AnalyticsTracker get(Context context) {
        if (a == null) {
            WflUtils.Log("i", "wu0wu", "tracker==null");
            initialize(context);
        }
        return a;
    }

    public static void trackPause(Context context) {
        try {
            get(context).trackPause(context);
        } catch (Exception e) {
            WflUtils.Log("i", "wu0wu", "TrackEvent trackPause Exception:" + e.toString());
        }
    }

    public static void trackResume(Context context) {
        try {
            get(context).trackResume(context);
        } catch (Exception e) {
            WflUtils.Log("i", "wu0wu", "TrackEvent trackResume Exception:" + e.toString());
        }
    }

    public static void reportOneKeyHealthCheckup() {
        if (a == null) {
            Log.i("wu0wu", "reportOneKeyHealthCheckup tracker == null");
        } else {
            a.trackEvent("health_checkup", "OneKeyHealthCheckup", null, 0);
        }
    }

    public static void reportHealthNoOpenSafeHomePage() {
        if (a == null) {
            Log.i("wu0wu", "reportHealthNoOpenSafeHomePage tracker == null");
        } else {
            a.trackEvent("health_checkup", "HealthNoOpenSafeHomePage", null, 0);
        }
    }

    public static void reportUserActionCancelHealthCheck() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionCancelHealthCheckup tracker == null");
        } else {
            a.trackUserAction("CancelHealthCheck", PAGE_NAME_HEALTH_CHECK);
        }
    }

    public static void reportUserActionHealthOptimizeImmediately() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionHealthOptimizeImmediately tracker == null");
        } else {
            a.trackUserAction("OptimizeImmediately", PAGE_NAME_HEALTH_CHECK);
        }
    }

    public static void reportUserActionHealthManualOpenSafeHomePage() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionHealthManualOpenSafeHomePage tracker == null");
        } else {
            a.trackUserAction("ManualOpenSafeHomePage", PAGE_NAME_HEALTH_CHECK);
        }
    }

    public static void reportProtectTrafficSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportProtectTrafficSwitchChange tracker == null");
        } else {
            a.trackEvent("ChargeShield", "protect_traffic_switch_change", String.valueOf(isOn), 0);
        }
    }

    public static void reportSendSmsOnBackgroud(String packageName) {
        if (a == null) {
            Log.i("wu0wu", "reportSendSmsOnBackgroud tracker == null");
        } else {
            a.trackEvent("ChargeShield", "SendSmsOnBackgroud", packageName, 0);
        }
    }

    public static void reportCallOnBackgroud(String packageName) {
        if (a == null) {
            Log.i("wu0wu", "reportCallOnBackgroud tracker == null");
        } else {
            a.trackEvent("ChargeShield", "CallOnBackgroud", packageName, 0);
        }
    }

    public static void reportClickChargeShieldOnekeyConfig() {
        if (a == null) {
            Log.i("wu0wu", "reportClickChargeShieldOnekeyConfig tracker == null");
        } else {
            a.trackEvent("ChargeShield", "ClickOnekeyConfig", null, 0);
        }
    }

    public static void reportProtectPeepSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportProtectPeepSwitchChange tracker == null");
        } else {
            a.trackEvent(AppDatabase.PERM_TYPE_PRIVCY, "Protect_Peep_Switch_change", String.valueOf(isOn), 0);
        }
    }

    public static void reportClickPrivacyOnekeyConfig() {
        if (a == null) {
            Log.i("wu0wu", "reportClickPrivacyOnekeyConfig tracker == null");
        } else {
            a.trackEvent(AppDatabase.PERM_TYPE_PRIVCY, "ClickOnekeyConfig", null, 0);
        }
    }

    public static void reportInterceptRecord() {
        if (a == null) {
            Log.i("wu0wu", "reportInterceptRecord tracker == null");
        } else {
            a.trackEvent(AppDatabase.PERM_TYPE_PRIVCY, "InterceptRecord", null, 0);
        }
    }

    public static void reportProtectHarassSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportProtectHarassSwitchChange tracker == null");
        } else {
            a.trackEvent("HarassIntercept", "Protect_Harass_Switch_change", String.valueOf(isOn), 0);
        }
    }

    public static void reportInterceptGarbageSMS() {
        if (a == null) {
            Log.i("wu0wu", "reportInterceptGarbageSMS tracker == null");
        } else {
            a.trackEvent("HarassIntercept", "InterceptGarbageSMS", null, 0);
        }
    }

    public static void reportInterceptHarassCalls() {
        if (a == null) {
            Log.i("wu0wu", "reportInterceptHarassCalls tracker == null");
        } else {
            a.trackEvent("HarassIntercept", "InterceptHarassCall", null, 0);
        }
    }

    public static void reportTrafficCorrect() {
        if (a == null) {
            Log.i("wu0wu", "reportTrafficCorrect tracker == null");
        } else {
            a.trackEvent(TrafficStatsService.TRAFFIC, "TrafficCorrect", null, 0);
        }
    }

    public static void reportSetTrafficLimit() {
        if (a == null) {
            Log.i("wu0wu", "reportSetTrafficLimit tracker == null");
        } else {
            a.trackEvent(TrafficStatsService.TRAFFIC, "SetTrafficLimit", null, 0);
        }
    }

    public static void reportUninstallApp(String packageName) {
        if (a == null) {
            Log.i("wu0wu", "reportUninstallApp tracker == null");
        } else {
            a.trackEvent("appPerm", "UninstallApp", packageName, 0);
        }
    }

    public static void reportChildModeSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportChildModeSwitchChange tracker == null");
        } else {
            a.trackEvent("supertool", "child_mode_switch_change", String.valueOf(isOn), 0);
        }
    }

    public static void reportGuestModeSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportGuestModeSwitchChange tracker == null");
        } else {
            a.trackEvent("supertool", "guest_mode_switch_change", String.valueOf(isOn), 0);
        }
    }

    public static void reportEntryPrivacySpaceCount(int count) {
        if (a == null) {
            Log.i("wu0wu", "reportEntryPrivacySpaceCount tracker == null");
        } else {
            a.trackEvent(AppDatabase.PERM_TYPE_PRIVCY, "Entry_Privacy_Space_Count", String.valueOf(count), 0);
        }
    }

    public static void reportProtectThiefSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportProtectThiefSwitchChange tracker == null");
        } else {
            a.trackEvent("supertool", "Protect_Thief_Switch_change", String.valueOf(isOn), 0);
        }
    }

    public static void reportsafePay(boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportsafePay tracker == null");
        } else {
            a.trackEvent("supertool", Const.KEY_IS_SAFEPAYMEN_ON, String.valueOf(isOn), 0);
        }
    }

    public static void reportSafeInputMethod(boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportSafeInputMethod tracker == null");
        } else {
            a.trackEvent("supertool", "SafeInputMethod_on", String.valueOf(isOn), 0);
        }
    }

    public static void reportEntryLeCloudSync() {
        if (a == null) {
            Log.i("wu0wu", "reportStartLeCloudSync tracker == null");
        } else {
            a.trackEvent("supertool", "EntryLeCloudSync", null, 0);
        }
    }

    public static void reportDownloadLeCloudSync() {
        if (a == null) {
            Log.i("wu0wu", "reportDownloadLeCloudSync tracker == null");
        } else {
            a.trackEvent("supertool", "DownloadLeCloudSync", null, 0);
        }
    }

    public static void reportDisableBootStartApp(String packageName) {
        if (a == null) {
            Log.i("wu0wu", "reportDisableBootStartApp tracker == null");
        } else {
            a.trackEvent("other", "DisableBootStartApp", packageName, 0);
        }
    }

    public static void reportProtectVirusSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportProtectVirusSwitchChange tracker == null");
        } else {
            a.trackEvent("FiveProtectSwitch", "Protect_Virus_Switch_change", String.valueOf(isOn), 0);
        }
    }

    public static void reportClickOneKeyEndTask() {
        if (a == null) {
            Log.i("wu0wu", "reportClickOneKeyEndTask tracker == null");
        } else {
            a.trackEvent("app_manager", "Click_One_Key_End_Task_Count", null, 0);
        }
    }

    public static void reportTrustApp(String packageName) {
        if (a == null) {
            Log.i("wu0wu", "reportClickOneKeyEndTaskCount tracker == null");
        } else {
            a.trackEvent("app_permission_manager", "trust_app_packageName", packageName, 0);
        }
    }

    public static void reportClickOneKeyEndTaskInShortcut() {
        if (a == null) {
            Log.i("wu0wu", "reportClickOneKeyEndTask tracker == null");
        } else {
            a.trackEvent("app_manager", "ClickOneKeyEndTaskInShortcut", null, 0);
        }
    }

    public static void reportClickOneKeyEndTaskInWidget() {
        if (a == null) {
            Log.i("wu0wu", "reportClickOneKeyEndTask tracker == null");
        } else {
            a.trackEvent("app_manager", "ClickOneKeyEndTaskInWidget", null, 0);
        }
    }

    public static void reportWidgetKillOneApp(String packageName) {
        if (a == null) {
            Log.i("wu0wu", "reportWidgetKillOneApp tracker == null");
        } else {
            a.trackEvent("app_widget", "kill_one_app", packageName, 0);
        }
    }

    public static void reportWidgetKillAllApp() {
        if (a == null) {
            Log.i("wu0wu", "reportWidgetKillAllApp tracker == null");
        } else {
            a.trackEvent("app_widget", "kill_all_app", null, 0);
        }
    }

    public static void reportWidgetRefresh() {
        if (a == null) {
            Log.i("wu0wu", "reportWidgetRefresh tracker == null");
        } else {
            a.trackEvent("app_widget", "refresh", null, 0);
        }
    }

    public static void reportWidgetEntrySafeCenter() {
        if (a == null) {
            Log.i("wu0wu", "reportWidgetEntrySafeCenter tracker == null");
        } else {
            a.trackEvent("app_widget", "entry_safecenter", null, 0);
        }
    }

    public static void reportRootEnable() {
        if (a == null) {
            Log.i("wu0wu", "reportRootEnable tracker == null");
        } else {
            a.trackEvent("root", "RootEnable", "true", 0);
        }
    }

    public static void reportTrafficFloatwindowSwitchChanged(boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportTrafficFloatwindowSwitchChanged tracker == null");
        } else {
            a.trackEvent("floatwindow", "TrafficFloatwindowSwitchChanged", String.valueOf(isOn), 0);
        }
    }

    public static void reportCloseTrafficFloatwindow() {
        if (a == null) {
            Log.i("wu0wu", "reportCloseTrafficFloatwindow tracker == null");
        } else {
            a.trackEvent("floatwindow", "CloseTrafficFloatwindow", "true", 0);
        }
    }

    public static void reportScanVirusWithAIDL() {
        if (a == null) {
            Log.i("wu0wu", "reportScanVirusWithAIDL tracker == null");
        } else {
            a.trackEvent("killvirus", "ScanVirusWithAIDL", null, 0);
        }
    }

    public static void reportHealthcheckWithAIDL() {
        if (a == null) {
            Log.i("wu0wu", "reportHealthcheckWithAIDL tracker == null");
        } else {
            a.trackEvent("health_checkup", "HealthcheckWithAIDL", null, 0);
        }
    }

    public static void reportUserActionIgnoreVirusCanUpdateNotice() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionIgnoreVirusCanUpdateNotice tracker == null");
        } else {
            a.trackUserAction("Ignore", PAGE_NAME_IGNORE_VIRUS_CAN_UPDATE_NOTICE);
        }
    }

    public static void reportUserActionCloudKillVirusCanUpdateNotice() {
        if (a == null) {
            Log.i("wu0wu", "reportCloudKillVirusCanUpdateNotice tracker == null");
        } else {
            a.trackUserAction("CloudKill", PAGE_NAME_IGNORE_VIRUS_CAN_UPDATE_NOTICE);
        }
    }

    public static void reportUserActionClickOneKeyClearInShortcutSwitch() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionClickOneKeyClearInShortcutSwitch tracker == null");
        } else {
            a.trackUserAction("OneKeyClear", PAGE_NAME_SHORTCUT_SWITCH);
        }
    }

    public static void reportTrafficOutLimitDisableNetSwitchChanged(boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportTrafficOutLimitDisableNetSwitchChanged tracker == null");
        } else {
            a.trackEvent(TrafficStatsService.TRAFFIC, "DisableNet:", String.valueOf(isOn), 0);
        }
    }

    public static void reportUserActionClickContinueUseInTrafficOutLimitDisableNet() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionClickContinueUseInTrafficOutLimitDisableNet tracker == null");
        } else {
            a.trackUserAction("ContinueUse", PAGE_NAME_TRAFFIC_OUT_LIMIT);
        }
    }

    public static void reportUserActionClickDisableNetInTrafficOutLimitDisableNet() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionClickDisableNetInTrafficOutLimitDisableNet tracker == null");
        } else {
            a.trackUserAction("DisableNet", PAGE_NAME_TRAFFIC_OUT_LIMIT);
        }
    }

    public static void reportUserActionClickNotPromptPopupTrafficUsedStatus() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionClickNotPromptPopupTrafficUsedStatus tracker == null");
        } else {
            a.trackUserAction("NotPrompt", PAGE_NAME_TRAFFIC_USED_DEDAIL);
        }
    }

    public static void reportUserActionClickIgnorePopupTrafficUsedStatus() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionClickIgnorePopupTrafficUsedStatus tracker == null");
        } else {
            a.trackUserAction("Ignore", PAGE_NAME_TRAFFIC_USED_DEDAIL);
        }
    }

    public static void reportUserActionClickLookPopupTrafficUsedStatus() {
        if (a == null) {
            Log.i("wu0wu", "reportUserActionClickLookPopupTrafficUsedStatus tracker == null");
        } else {
            a.trackUserAction("Look", PAGE_NAME_TRAFFIC_USED_DEDAIL);
        }
    }

    public static void reportInterceptUnknownNumbersSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportInterceptUnknownNumbersSwitchChange tracker == null");
        } else {
            a.trackEvent("HarassIntercept", "InterceptUnknownNumbers:", String.valueOf(isOn), 0);
        }
    }

    public static void reportSafeHomePageSwitchChange(Boolean isOn) {
        if (a == null) {
            Log.i("wu0wu", "reportSafeHomePageSwitchChange tracker == null");
        } else {
            a.trackEvent("settings", "SafeHomePageSwitch:", String.valueOf(isOn), 0);
        }
    }

    public static void reportEntryLeBattery() {
        if (a == null) {
            Log.i("wu0wu", "reportEntryLeBattery tracker == null");
        } else {
            a.trackEvent("supertool", "EntryLeBattery", null, 0);
        }
    }

    public static void reportDownloadLeBattery() {
        if (a == null) {
            Log.i("wu0wu", "reportDownloadLeBattery tracker == null");
        } else {
            a.trackEvent("supertool", "DownloadLeBattery", null, 0);
        }
    }

    public static void reportUseLeSafeAppInstallManager(String packageName) {
        if (a == null) {
            Log.i("wu0wu", "reportUseLeSafeAppInstallManager tracker == null");
        } else {
            a.trackEvent("supertool", "UseLeSafeAppInstallManager", packageName, 0);
        }
    }
}
