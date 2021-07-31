package com.lenovo.lps.reaper.sdk.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.lenovo.lps.reaper.sdk.AnalyticsTracker;
import com.lenovo.lps.reaper.sdk.storage.ServerConfigStorage;
import com.lenovo.lps.reaper.sdk.util.AnalyticsTrackerUtils;
import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.reaper.sdk.util.PlusUtil;
import com.lenovo.lps.reaper.sdk.util.TLog;
import com.lenovo.lps.sus.c.c;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.Locale;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class Configuration {
    private static String f;
    private static String g;
    private static String h;
    private static final Locale i = Locale.getDefault();
    private static String j = "com.lenovo.lps.reaper.sdk.AnalyticsTrackerBuilder";
    protected static int reaperServerPort;
    protected static String reaperServerhost;
    private final Context a;
    protected String applicationToken;
    private String b;
    private String c;
    protected String channel;
    protected String customReaperServer;
    private String d;
    private String e;
    protected boolean isSupportMultiRequest = true;
    private boolean k;
    protected String userAgent;
    protected int versionCode;
    protected String versionName;

    public Configuration(Context context) {
        this.a = context;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.a.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.b = String.valueOf(displayMetrics.widthPixels) + "x" + String.valueOf(displayMetrics.heightPixels);
        TLog.i("Configuration", "displayScreen: " + this.b);
    }

    public void initialize() {
        try {
            PackageManager packageManager = this.a.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this.a.getPackageName(), 128);
            PackageInfo packageInfo = packageManager.getPackageInfo(this.a.getPackageName(), 0);
            this.versionName = packageInfo.versionName;
            this.versionCode = packageInfo.versionCode;
            this.applicationToken = applicationInfo.metaData.getString(c.au);
            this.customReaperServer = applicationInfo.metaData.getString("lenovo:customReaperServer");
            Object obj = applicationInfo.metaData.get("lenovo:channel");
            this.k = applicationInfo.metaData.getBoolean("lenovo:forceUpdateConfig");
            TLog.setTestMode(applicationInfo.metaData.getBoolean("lenovo:isTestMode"));
            if (!this.applicationToken.matches("^[A-Za-z0-9]+$")) {
                TLog.e("Configuration", "ApplicationToken should be Number and Character, another char will be Delete.");
                this.applicationToken = this.applicationToken.replaceAll("[^A-Za-z0-9]", "");
                TLog.e("Configuration", "New Token is " + this.applicationToken);
            }
            if (this.customReaperServer != null && this.customReaperServer.length() > 0) {
                initReportAndConfigurationUrl(this.customReaperServer);
            }
            if (obj == null) {
                this.channel = Constants.CHANNEL_DEFAULT;
            } else {
                this.channel = AnalyticsTrackerUtils.encode(String.valueOf(obj));
            }
            if (TLog.isTestMode()) {
                TLog.i("Configuration", "versionName = " + this.versionName);
                TLog.i("Configuration", "versionCode = " + this.versionCode);
                TLog.i("Configuration", "applicationToken = " + this.applicationToken);
                TLog.i("Configuration", "customReaperServer = " + this.customReaperServer);
                TLog.i("Configuration", "channel = " + this.channel);
                TLog.i("Configuration", "isTestMode = " + TLog.isTestMode());
            }
        } catch (Exception e2) {
            TLog.e("Configuration", "parseApplicationInfo. " + e2.getMessage());
        }
        a();
        b();
    }

    public void initialize(String applicationToken2, int reportIntervalInSeconds) {
        this.applicationToken = applicationToken2;
        a();
        b();
    }

    private void a() {
        PlusUtil.DeviceIdentify.initialDeviceIdentify(this.a);
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.a.getSystemService("phone");
            this.c = telephonyManager.getDeviceId();
            this.e = telephonyManager.getLine1Number();
            if (this.e == null) {
                this.e = "0";
            }
        } catch (Exception e2) {
            this.c = "";
            TLog.e("Configuration", e2.getMessage());
        }
        try {
            this.d = Settings.Secure.getString(this.a.getContentResolver(), "android_id");
            TLog.i("Configuration", "androidId: " + this.d);
        } catch (Exception e3) {
            this.d = "";
            TLog.e("Configuration", "exception when get android id. " + e3.getMessage());
        }
    }

    private void b() {
        if (this.versionName == null) {
            this.versionName = AnalyticsTracker.getInstance().getVersionName();
        }
        if (this.versionCode == 0) {
            this.versionCode = AnalyticsTracker.getInstance().getVersionCode();
        }
        String leOSVersion = a("operating");
        Object[] objArr = new Object[9];
        objArr[0] = this.versionName;
        objArr[1] = Integer.valueOf(this.versionCode);
        objArr[2] = AnalyticsTrackerUtils.replaceInvalidCharacter(Build.VERSION.RELEASE);
        objArr[3] = i.getLanguage() == null ? "en" : i.getLanguage().toLowerCase();
        objArr[4] = i.getCountry() == null ? "" : i.getCountry().toLowerCase();
        objArr[5] = AnalyticsTrackerUtils.replaceInvalidCharacter(Build.MODEL);
        objArr[6] = Build.ID;
        objArr[7] = leOSVersion == null ? "" : AnalyticsTrackerUtils.encode(leOSVersion);
        objArr[8] = AnalyticsTrackerUtils.replaceInvalidCharacter(Build.MANUFACTURER);
        this.userAgent = String.format("%s/%s (Linux; U; Android %s; %s-%s; %s; Build/%s; %s; %s)", objArr);
        TLog.i("Configuration", "userAgent = " + this.userAgent);
    }

    public void initReportAndConfigurationUrl(String reaperServerUrl) {
        String mReaperServerUrl = reaperServerUrl;
        if (mReaperServerUrl.endsWith(CookieSpec.PATH_DELIM)) {
            mReaperServerUrl = mReaperServerUrl.substring(0, mReaperServerUrl.length() - 1);
        }
        try {
            URL serverUrl = new URL(mReaperServerUrl);
            f = mReaperServerUrl + "/reaper/server/post";
            g = mReaperServerUrl + "/reaper/server/report";
            h = mReaperServerUrl + "/reaper/server/config";
            reaperServerhost = serverUrl.getHost();
            reaperServerPort = serverUrl.getPort() == -1 ? 80 : serverUrl.getPort();
            if (TLog.isTestMode()) {
                TLog.i("Configuration", "postUrl: " + f.toString());
                TLog.i("Configuration", "reportUrl: " + g.toString());
                TLog.i("Configuration", "configUrl: " + h.toString());
            }
        } catch (MalformedURLException e2) {
            TLog.e("Configuration", "initReportAndConfigurationUrl. " + e2.getMessage());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x006e A[SYNTHETIC, Splitter:B:32:0x006e] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0073 A[SYNTHETIC, Splitter:B:35:0x0073] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x007c A[SYNTHETIC, Splitter:B:40:0x007c] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0081 A[SYNTHETIC, Splitter:B:43:0x0081] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 159
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.reaper.sdk.config.Configuration.a(java.lang.String):java.lang.String");
    }

    public static Class<?> getAnalyticsTrackerBuilderClass() {
        try {
            return Class.forName(j);
        } catch (ClassNotFoundException e2) {
            TLog.e("Configuration", "Could not find class define for class:" + j);
            j = "com.lenovo.lps.reaper.sdk.AnalyticsTrackerBuilder";
            try {
                return Class.forName(j);
            } catch (ClassNotFoundException e3) {
                TLog.e("Configuration", "Could not find class define for class:" + j);
                return null;
            }
        }
    }

    public boolean needReport(String category, String action) {
        if (category == null || action == null) {
            TLog.w("Configuration", "wrong parameter.");
            return false;
        }
        String actionTmp = action;
        if (Constants.Event.EVENT_TYPE_VIEW.equals(category) && action.startsWith(CookieSpec.PATH_DELIM)) {
            actionTmp = action.substring(1);
        }
        return ServerConfigStorage.get(a(category, actionTmp), true);
    }

    public void clearExistPreference() {
        this.a.getSharedPreferences(Constants.SharedPreference.COMMON, 0).edit().clear().commit();
        ServerConfigStorage.clear();
    }

    public boolean updatePrefrence(String category, String[] actions, boolean[] values) {
        if (category == null || actions == null || values == null || actions.length != values.length) {
            TLog.w("Configuration", "wrong parameter.");
            return false;
        }
        SharedPreferences.Editor editor = this.a.getSharedPreferences(Constants.SharedPreference.COMMON, 0).edit();
        int length = values.length;
        for (int i2 = 0; i2 < length; i2++) {
            String key = a(category, actions[i2]);
            editor.putBoolean(key, values[i2]);
            ServerConfigStorage.put(key, values[i2]);
        }
        return editor.commit();
    }

    public boolean isCollectData() {
        if (!Constants.LEOS_APP_TOKEN.equals(this.applicationToken)) {
            return true;
        }
        String dataCollection = Settings.System.getString(this.a.getContentResolver(), "data_collection");
        TLog.i("Configuration", "dataCollection: " + dataCollection);
        if (dataCollection == null || !"0".equals(dataCollection)) {
            return true;
        }
        return false;
    }

    public static void setAnalyticsTrackerBuilderClass(String clazz) {
        j = clazz;
    }

    public String getCountry() {
        return i.getCountry();
    }

    public String getLanguage() {
        return i.getLanguage();
    }

    public String getDisplayScreen() {
        return this.b;
    }

    public String getDeviceId() {
        return this.c;
    }

    public String getPhoneNumber() {
        return this.e;
    }

    public String getAndroidId() {
        return this.d;
    }

    public String getApplicationToken() {
        return this.applicationToken;
    }

    public String getCustomReaperServer() {
        return this.customReaperServer;
    }

    public String getChannel() {
        return this.channel;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String getDeviceInfo() {
        return String.format("&sv=%s&ds=%s&aid=%s&dit=%s&di=%s&net=%d", Constants.SDK_VERSION, this.b, this.d, PlusUtil.DeviceIdentify.getDeviceType(), PlusUtil.DeviceIdentify.getDeviceID(), Integer.valueOf(PlusUtil.NetworkStatus.getNetworkStatus()));
    }

    public String getReportWithCompressUrl() {
        return f;
    }

    public String getReportUrl() {
        return g;
    }

    public String getServerConfigUrl() {
        return h;
    }

    public String getReaperServerHost() {
        return reaperServerhost;
    }

    public int getReaperServerPort() {
        return reaperServerPort;
    }

    public int getMaxEventsPerRequest() {
        return 30;
    }

    public int getEventCacheSize() {
        return 50;
    }

    public boolean supportMultiRequest() {
        return this.isSupportMultiRequest;
    }

    public void setMultiRequestSupport(boolean flag) {
        this.isSupportMultiRequest = flag;
    }

    public int getMaxConnectionsPerTask() {
        return 5;
    }

    private static String a(String category, String action) {
        return new StringBuilder(64).append(Constants.SharedPreference.COMMON_KEY_PRE).append(".").append(category).append(".").append(action).toString();
    }

    public long getMaxCacheInterval() {
        return 5000;
    }

    public void saveUpdateTimestamp() {
        boolean succ = this.a.getSharedPreferences(Constants.SharedPreference.CONFIGUPDATE, 0).edit().putLong(Constants.ServerConfig.UpdateStrategy.CATEGORY_UPDATE, System.currentTimeMillis()).commit();
        ServerConfigStorage.setTimestampMills(System.currentTimeMillis());
        if (!succ || !TLog.isTestMode()) {
            TLog.w("Configuration", "Configuration Timestamp Save Failed.");
        } else {
            TLog.d("Configuration", "Configuration Timestamp Has Saved: " + new Date(System.currentTimeMillis()).toString());
        }
    }

    public boolean checkTimestamp() {
        if (this.k) {
            return true;
        }
        long interval = (((System.currentTimeMillis() - ServerConfigStorage.getTimestampMills()) / 1000) / 60) / 60;
        if (0 > interval || interval >= ServerConfigStorage.UpdateConfigStrategy.getUpdateIntervalHour()) {
            return true;
        }
        return false;
    }

    public void saveServerUrlToFile(String url) {
        if (!this.a.getSharedPreferences(Constants.SharedPreference.SERVER_URL, 0).edit().putString(Constants.SharedPreference.SERVER_URL_KEY, url).commit() || !TLog.isTestMode()) {
            TLog.w("Configuration", "ServerUrl Save Failed.");
        } else {
            TLog.d("Configuration", "ServerUrl Has Saved: " + url);
        }
    }

    public String getServerUrlFromFile() {
        return this.a.getSharedPreferences(Constants.SharedPreference.SERVER_URL, 0).getString(Constants.SharedPreference.SERVER_URL_KEY, null);
    }
}
