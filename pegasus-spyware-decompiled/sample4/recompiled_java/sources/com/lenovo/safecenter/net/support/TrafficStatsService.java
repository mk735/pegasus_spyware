package com.lenovo.safecenter.net.support;

import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.INetworkStatsService;
import android.net.NetworkStats;
import android.net.NetworkTemplate;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.ServiceManager;
import android.preference.PreferenceManager;
import android.provider.MultiSIMUtils;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.util.TypedValue;
import android.widget.Toast;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.data.SaveData;
import com.lenovo.safecenter.mmsutils.Wbxml;
import com.lenovo.safecenter.net.LowLevelNetFilter;
import com.lenovo.safecenter.net.NetFilter;
import com.lenovo.safecenter.net.TrafficDailog;
import com.lenovo.safecenter.net.TrafficStatistics;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.net.doublemode.DoubleCardUtil;
import com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.WflUtils;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.httpclient.cookie.CookiePolicy;

public class TrafficStatsService {
    public static final int ANDROID_CORE_UID = 10001;
    public static final int ANDROID_MEDIA_UID = 10013;
    public static final int ANDROID_MEDIA_UID2 = 1013;
    public static final int ANDROID_PHONE_UID = 1001;
    public static int BAR_MAXHEIGHT = 60;
    public static final String CMD_PATH = "/data/data/com.lenovo.safecenter/files/nac.sh";
    public static final String CORRECT_ACTION_RTC_SIM = "com.lenovo.safecenter.correct.traffic.SIM.service.RTC";
    public static final String CORRECT_ACTION_RTC_SIM2 = "com.lenovo.safecenter.correct.traffic.SIM2.service.RTC";
    public static final String DATE = "date";
    public static final String DB_NAME = "trafficstats.db";
    public static final int ICS_MUTI = 12;
    public static final int ICS_SINGLE = 10;
    public static final long INTERVALTIME = 86400000;
    public static final int LOW_ICS_SINGLE = 11;
    public static final String NOTICE_TRAFFIC_ACTION_RTC = "com.lenovo.safecenter.notice.traffic.ui.service.RTC";
    public static final int OPEN_PHONE = 13;
    public static final int OPERATOR_CDMA = 2;
    public static final int OPERATOR_M = 0;
    public static final int OPERATOR_UN = 1;
    public static final int OPERATOR_UNKONWN = 8;
    public static final String PACKAGE_NAME = "com.lenovo.safecenter";
    public static final String TOTAL = "total";
    public static final String TRAFFIC = "traffic";
    public static int TRAFFIC_CHILDVIEW_WIDTH = 45;
    public static final int TRAFFIC_DAY_WARN_ID = 15;
    public static final int TRAFFIC_DAY_WARN_ID_SIM2 = 23;
    public static final int TRAFFIC_NOTI_TYPE_DAILY_OUT = 22;
    public static final int TRAFFIC_WARN_ID = 9;
    public static final int TRAFFIC_WARN_ID_SIM2 = 24;
    public static final int UNINSTALL_MODE = 16;
    public static boolean canCorrect = true;
    private static boolean e = true;
    private static TrafficStatsService f = null;
    private static ExecutorService g = Executors.newSingleThreadExecutor();
    private static final Handler h = new Handler() {
        /* class com.lenovo.safecenter.net.support.TrafficStatsService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    boolean unused = TrafficStatsService.e = true;
                    return;
                case Wbxml.EXT_I_2:
                    Utils.setCanCorrectFlag(Const.mContext, true);
                    Log.i(SecurityService.TAG, "touch here and cancorrect = " + Utils.getCanCorrectFlag(Const.mContext));
                    return;
                default:
                    return;
            }
        }
    };
    private static int i = -1;
    private TrafficStatsSQLiteOpenHelper a;
    private SharedPreferences b;
    private SharedPreferences.Editor c = this.b.edit();
    private Context d;

    static /* synthetic */ boolean a(TrafficStatsService x0) {
        long currentTimeMillis = System.currentTimeMillis() - x0.b.getLong("last_save_daily_data_time", 0);
        if (currentTimeMillis >= 7200000) {
            return true;
        }
        if (currentTimeMillis <= 0) {
            x0.d();
        }
        return false;
    }

    public static synchronized TrafficStatsService getInstance(Context context) {
        TrafficStatsService trafficStatsService;
        synchronized (TrafficStatsService.class) {
            if (f == null) {
                f = new TrafficStatsService(context);
            }
            trafficStatsService = f;
        }
        return trafficStatsService;
    }

    public static ExecutorService getExecutorService() {
        return g;
    }

    public static void statsTrafficMobileInLimit(final Context context) {
        getExecutorService().execute(new Thread() {
            /* class com.lenovo.safecenter.net.support.TrafficStatsService.AnonymousClass2 */

            public final void run() {
                boolean isCast = false;
                if (NetCache.is_net_flush_cast) {
                    isCast = true;
                    TrafficStatsService.statsTrafficMobile(context);
                    NetCache.is_net_flush_cast = false;
                }
                if (TrafficStatsService.e && !isCast) {
                    boolean unused = TrafficStatsService.e = false;
                    TrafficStatsService.statsTrafficMobile(context);
                    Message msg = new Message();
                    msg.what = 0;
                    TrafficStatsService.h.sendMessageDelayed(msg, 60000);
                }
                TrafficStatsService service = TrafficStatsService.getInstance(context);
                if (TrafficStatsService.a(service)) {
                    service.insertDayTrafficDate(context);
                    service.d();
                    Log.i("letraffic1", "insertDayTrafficDate =" + System.currentTimeMillis());
                }
            }
        });
    }

    /* JADX WARNING: Removed duplicated region for block: B:70:0x02eb  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0304  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0340  */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x03c3  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x03c7  */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x03d3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void statsTrafficMobile(android.content.Context r21) {
        /*
        // Method dump skipped, instructions count: 998
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.net.support.TrafficStatsService.statsTrafficMobile(android.content.Context):void");
    }

    private static void a(String imsi, String imsi2, Context context) {
        SharedPreferences sp = getTrafficSP(context);
        if (!TextUtils.isEmpty(imsi) && !NetCache.getCached_imsi().equals(imsi)) {
            sp.edit().putString(NetConstant.IMSI_CATCHE_SIM, imsi).commit();
            NetCache.setCached_imsi(imsi);
            Log.i("trafficui", "edit IMSI_CATCHE_SIM");
        }
        if (!TextUtils.isEmpty(imsi2) && !NetCache.getCached_imsi2().equals(imsi2)) {
            sp.edit().putString(NetConstant.IMSI_CATCHE_SIM2, imsi2).commit();
            NetCache.setCached_imsi2(imsi2);
        }
    }

    public static long statsSystemMonthTraffic(Context context) {
        return b(getNetWorkStatsService(), NetworkTemplate.buildTemplateMobileAll(WflUtils.getActiveSubscriberId(context)));
    }

    public static long statsSystemMonthTraffic(Context context, int postion) {
        return b(getNetWorkStatsService(), NetworkTemplate.buildTemplateMobileAll(getSIMSubscriberId(context, postion)));
    }

    public static String getSIMSubscriberId(Context context, int postion) {
        if (MyMultiSIMUtils.isMultiSim(context)) {
            return MultiSIMUtils.getDefault(context).getSubscriberId(postion);
        }
        if (getTrafficMode(context) == 13) {
            return "dev";
        }
        return WflUtils.getActiveSubscriberId(context);
    }

    private static long a(Object statsService, NetworkTemplate template) {
        try {
            return invoke("getSummaryForNetwork", statsService, template, WflUtils.getTriggerTime(0, 0, 0), System.currentTimeMillis());
        } catch (Exception e2) {
            return 0;
        }
    }

    private static long b(Object statsService, NetworkTemplate template) {
        long totalNetwork = 0;
        try {
            totalNetwork = invoke("getSummaryForNetwork", statsService, template, WflUtils.parseMonthStartTime(Long.valueOf(System.currentTimeMillis())).longValue(), System.currentTimeMillis());
            Log.i("testtrafficbug", "sys month used = " + totalNetwork);
            return totalNetwork;
        } catch (Exception e2) {
            return totalNetwork;
        }
    }

    public static long statsSettingUiMonthTrafficLowLevel(Context context) {
        return getTotalMonthly(context.openOrCreateDatabase(DB_NAME, 0, null)).longValue();
    }

    private TrafficStatsService(Context context) {
        this.a = new TrafficStatsSQLiteOpenHelper(context);
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
        this.d = context;
    }

    public TrafficStatsSQLiteOpenHelper getOpenHelper() {
        return this.a;
    }

    public void setOpenHelper(TrafficStatsSQLiteOpenHelper openHelper) {
        this.a = openHelper;
    }

    public SharedPreferences getPreferences() {
        return this.b;
    }

    public void setPreferences(SharedPreferences preferences) {
        this.b = preferences;
    }

    public SQLiteDatabase getSQLiteDatabase() {
        return this.a.getWritableDatabase();
    }

    public static String getDetailedDate() {
        return getCurrentYear() + "." + getCurrentMonth() + "." + Calendar.getInstance().get(5);
    }

    public static int getDate() {
        return Calendar.getInstance().get(5);
    }

    public void updateTrafficTab(int dateFlag, int total) {
        SQLiteDatabase db = this.a.getWritableDatabase();
        Cursor cursor = db.rawQuery("select total from traffic where date=?", new String[]{String.valueOf(dateFlag)});
        if (cursor != null) {
            if (cursor.getCount() == 0) {
                ContentValues values = new ContentValues();
                values.put(TOTAL, Integer.valueOf(total));
                values.put("date", Integer.valueOf(dateFlag));
                db.insert(TRAFFIC, TOTAL, values);
            } else {
                while (cursor.moveToNext()) {
                    db.execSQL("update traffic set total=? where date=?", new Object[]{Integer.valueOf(total), Integer.valueOf(dateFlag)});
                }
            }
        }
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }

    public int getTotalBeforeDay(int day) {
        SQLiteDatabase db = this.a.getWritableDatabase();
        int sumTotal = 0;
        for (int i2 = 1; i2 < day; i2++) {
            Cursor cusor = db.rawQuery(" SELECT total FROM traffic where date = ?", new String[]{String.valueOf(i2)});
            if (cusor.moveToFirst()) {
                sumTotal += cusor.getInt(0);
            }
            Log.i("forzajuve", "sumTotal i =" + sumTotal);
            cusor.close();
        }
        return sumTotal;
    }

    public void deleteTrafficData() {
        SQLiteDatabase db = this.a.getWritableDatabase();
        if (db != null && db.isOpen()) {
            db.execSQL("DELETE FROM apps");
            db.close();
        }
    }

    public static int getCurrentMonth() {
        return Calendar.getInstance().get(2) + 1;
    }

    public static int getCurrentYear() {
        return Calendar.getInstance().get(1);
    }

    public void insertDayTrafficDate(Context context) {
        if (getTrafficMode(context) == 13) {
            a("dev", 0);
            return;
        }
        PhoneSimInfo info = getImsiInfo(context);
        if (info.sim1IMSI != null) {
            a(info.sim1IMSI, 0);
        }
        if (info.sim2IMSI != null) {
            a(info.sim2IMSI, 1);
        }
    }

    private void a(String imsi, int postion) {
        try {
            int bar_height = c();
            SQLiteDatabase db = this.a.getWritableDatabase();
            long maxTotal = this.b.getLong(imsi, -1);
            String today = getDetailedDate();
            long trafficToday = postion == 0 ? Const.getTodayUsedTraffic() : Const.getTodayUsedTraffic2();
            Cursor cusrsor = db.rawQuery("SELECT total FROM traffic WHERE date = ? and imsi = ?", new String[]{today, imsi});
            if (cusrsor.moveToFirst()) {
                if (trafficToday > maxTotal) {
                    this.c.putLong(imsi, trafficToday).commit();
                    maxTotal = trafficToday;
                    a(db, maxTotal, imsi);
                }
                Log.i("double", "trafficToday = " + trafficToday);
                db.execSQL("update traffic set total = ?, height = ? where date = ? and imsi = ?", new Object[]{Long.valueOf(trafficToday), Integer.valueOf(getHeight(trafficToday, maxTotal)), today, imsi});
            } else {
                ContentValues values = new ContentValues();
                values.put(TOTAL, Long.valueOf(trafficToday));
                values.put("date", today);
                values.put("imsi", imsi);
                if (maxTotal == -1) {
                    if (trafficToday <= 0) {
                        values.put(SaveData.FLOATVIEW_HEIGHT, (Integer) 0);
                    } else {
                        values.put(SaveData.FLOATVIEW_HEIGHT, Integer.valueOf(bar_height));
                        this.c.putLong(imsi, trafficToday).commit();
                    }
                } else if (maxTotal >= trafficToday) {
                    values.put(SaveData.FLOATVIEW_HEIGHT, Integer.valueOf(getHeight(trafficToday, maxTotal)));
                } else {
                    this.c.putLong(imsi, trafficToday).commit();
                    a(db, trafficToday, imsi);
                    values.put(SaveData.FLOATVIEW_HEIGHT, Integer.valueOf(bar_height));
                }
                db.insert(TRAFFIC, TOTAL, values);
            }
            if (this.b.getBoolean("traffc_view_height_changed_flag", false)) {
                a(db, this.b.getLong(imsi, -1), imsi);
                this.c.putBoolean("traffc_view_height_changed_flag", false).commit();
                Log.i("viewheight1", "touch my change height");
            }
            cusrsor.close();
            db.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public HashMap<String, TrafficDate> getDayTrafficInMonth(String imsi) {
        HashMap<String, TrafficDate> map = new HashMap<>();
        try {
            SQLiteDatabase db = this.a.getReadableDatabase();
            SQLiteDatabase b2 = b(db);
            String[] strArr = new String[1];
            if (imsi == null) {
                imsi = "";
            }
            strArr[0] = imsi;
            Cursor cursor = b2.rawQuery(" SELECT total,date,height FROM traffic where imsi = ?", strArr);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    int dayTotal = cursor.getInt(0);
                    String day = cursor.getString(1);
                    map.put(day, new TrafficDate(day, dayTotal, cursor.getInt(2)));
                }
            }
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            if (db != null && db.isOpen()) {
                db.close();
            }
        } catch (Exception e2) {
            Log.i("sqle", "getDayTrafficInMonth sql exception");
            e2.printStackTrace();
        }
        return map;
    }

    private void a(SQLiteDatabase db, long maxTotal, String imsi) {
        Cursor cursor = db.rawQuery("select total,date from traffic where imsi = ?", new String[]{imsi});
        while (cursor.moveToNext()) {
            if (cursor.getString(1).startsWith(getCurrentYear() + "." + getCurrentMonth() + ".")) {
                int total = cursor.getInt(0);
                Log.i("exec", "total = " + total);
                db.execSQL("update traffic set height=? where total=? and imsi= ?", new Object[]{Integer.valueOf(getHeight((long) total, maxTotal)), Integer.valueOf(total), imsi});
            }
        }
        cursor.close();
    }

    public int getHeight(long total, long maxTotal) {
        int BAR_MAXHEIGHT2 = c();
        if (maxTotal <= 0) {
            return 0;
        }
        if (19522578 <= total) {
            return (int) ((((float) total) / ((float) maxTotal)) * ((float) BAR_MAXHEIGHT2));
        }
        int height = (int) ((((long) BAR_MAXHEIGHT2) * total) / maxTotal);
        return height <= BAR_MAXHEIGHT2 ? height : BAR_MAXHEIGHT2;
    }

    public void do4newMonth() {
        SharedPreferences sp = getTrafficSP(this.d);
        if (sp.getInt("haveDone4newMonthTime", -1) != getCurrentMonth()) {
            deleteTrafficData();
            Const.setNetLimitedInMonth(false);
            Const.setNetLimitedInMonth2(false);
            Const.setIsNetAlarmedInMonth(false);
            Const.setHasNoticed2MonthLimit(false);
            Const.setIsNetAlarmedInMonth2(false);
            this.c.putLong(NetCache.imsi, -1).commit();
            this.c.putLong(NetCache.imsi2, -1).commit();
            sp.edit().putInt("haveDone4newMonthTime", getCurrentMonth()).commit();
            getExecutorService().execute(new Thread() {
                /* class com.lenovo.safecenter.net.support.TrafficStatsService.AnonymousClass3 */

                public final void run() {
                    TrafficStatsService.this.refresh();
                }
            });
            Log.i("forzajuve", "do4newmonth is exec ...");
        }
    }

    public static int getTetheringLabel(ConnectivityManager cm) {
        boolean usbAvailable;
        boolean wifiAvailable;
        boolean bluetoothAvailable;
        String[] usbRegexs = cm.getTetherableUsbRegexs();
        String[] wifiRegexs = cm.getTetherableWifiRegexs();
        String[] bluetoothRegexs = cm.getTetherableBluetoothRegexs();
        if (usbRegexs.length != 0) {
            usbAvailable = true;
        } else {
            usbAvailable = false;
        }
        if (wifiRegexs.length != 0) {
            wifiAvailable = true;
        } else {
            wifiAvailable = false;
        }
        if (bluetoothRegexs.length != 0) {
            bluetoothAvailable = true;
        } else {
            bluetoothAvailable = false;
        }
        if (wifiAvailable && usbAvailable && bluetoothAvailable) {
            return R.string.tether_settings_title_all;
        }
        if (wifiAvailable && usbAvailable) {
            return R.string.tether_settings_title_all;
        }
        if (wifiAvailable && bluetoothAvailable) {
            return R.string.tether_settings_title_all;
        }
        if (wifiAvailable) {
            return R.string.tether_settings_title_wifi;
        }
        if (usbAvailable && bluetoothAvailable) {
            return R.string.tether_settings_title_usb_bluetooth;
        }
        if (usbAvailable) {
            return R.string.tether_settings_title_usb;
        }
        return R.string.tether_settings_title_bluetooth;
    }

    public static void alert(Context ctx, CharSequence msg) {
        if (ctx != null) {
            try {
                new AlertDialog.Builder(ctx).setNeutralButton(R.string.btn_OK, (DialogInterface.OnClickListener) null).setMessage(msg).setTitle(R.string.error).show();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static boolean createShell(Context ctx) {
        Log.i("createShell", "touch createShell method");
        if (ctx == null) {
            Log.i("createShell", "ctx is null");
            return false;
        }
        String[] ITFS_WIFI = {"tiwlan+", "wlan+", "eth+", "ra+"};
        String[] ITFS_3G = {"rmnet+", "pdp+", "ppp+", "uwbr+", "wimax+", "vsnet+", "ccmni+", "usb+"};
        StringBuilder command = new StringBuilder();
        command.append("#####\n");
        command.append("#!/sbin/ash\n");
        SharedPreferences prefs_sys = ctx.getSharedPreferences("system info", 0);
        SharedPreferences prefs_sys_wlan = ctx.getSharedPreferences("wlan info", 0);
        String allUid = prefs_sys.getString("selected uids", "");
        String[] uids = allUid.split(c.O);
        String allUidWlan = prefs_sys_wlan.getString("selected uids", "");
        String[] uidsWlan = allUidWlan.split(c.O);
        String iptables = nacServerIsExist() ? "iptables " : ctx.getFilesDir() + "/iptables ";
        command.append(iptables + " -F OUTPUT\n");
        command.append(iptables + "-P OUTPUT ACCEPT\n");
        command.append(iptables + "-A OUTPUT -o lo -j ACCEPT\n");
        if (NetCache.traffic_mode != 13) {
            Log.i("createShell", "in not open phone");
            if (!allUid.equals("") && uids.length > 0) {
                for (String uid : uids) {
                    command.append(iptables + "-A OUTPUT -o rmnet+" + " -m owner --uid-owner " + uid + " -j DROP\n");
                    command.append(iptables + "-A OUTPUT -o ccmni+" + " -m owner --uid-owner " + uid + " -j DROP\n");
                }
            }
            if (!allUidWlan.equals("") && uidsWlan.length > 0) {
                int len$ = uidsWlan.length;
                for (int i$ = 0; i$ < len$; i$++) {
                    command.append(iptables + "-A OUTPUT -o wlan0 -m owner --uid-owner " + uidsWlan[i$] + " -j DROP\n");
                }
            }
        } else {
            if (!allUid.equals("") && uids.length > 0) {
                for (String uid2 : uids) {
                    int len$2 = ITFS_3G.length;
                    for (int i$2 = 0; i$2 < len$2; i$2++) {
                        command.append(iptables + "-A OUTPUT -o " + ITFS_3G[i$2] + " -m owner --uid-owner " + uid2 + " -j DROP\n");
                    }
                }
            }
            if (!allUidWlan.equals("") && uidsWlan.length > 0) {
                for (String uid3 : uidsWlan) {
                    int len$3 = ITFS_WIFI.length;
                    for (int i$3 = 0; i$3 < len$3; i$3++) {
                        command.append(iptables + "-A OUTPUT -o " + ITFS_WIFI[i$3] + " -m owner --uid-owner " + uid3 + " -j DROP\n");
                    }
                }
            }
        }
        return CMDHelper.exeCmd(ctx, command.toString());
    }

    public static String getPlatform(Context context) {
        try {
            String platform = MultiSIMUtils.getDefault(context).getPlatform();
            Log.i("4.1", "platform =" + platform);
            return platform;
        } catch (Throwable e2) {
            e2.printStackTrace();
            return "mtk";
        }
    }

    public static long getTotalToday(SQLiteDatabase db, int date) {
        long total = 0;
        try {
            Cursor cursor = db.rawQuery(" SELECT SUM(sent)+SUM(received) AS daily FROM apps WHERE uid=65525 AND _date=?", new String[]{String.valueOf(getDate())});
            if (cursor != null && cursor.moveToFirst()) {
                cursor.moveToFirst();
                total = cursor.getLong(cursor.getColumnIndex("daily"));
                if (!cursor.isClosed()) {
                    cursor.close();
                }
                if (db.isOpen() && !db.isDbLockedByOtherThreads()) {
                    db.close();
                }
            }
        } catch (Exception e2) {
            Log.i("trafficdb", "catch traffic db exception");
        }
        return total;
    }

    public static Long getTotalMonthly(SQLiteDatabase db) {
        Cursor cursor = db.rawQuery("SELECT SUM(sent)+SUM(received) AS total FROM apps WHERE uid = 65525", null);
        if (cursor != null) {
            try {
                cursor.moveToFirst();
                Long valueOf = Long.valueOf(cursor.getLong(0));
                if (cursor != null) {
                    try {
                        if (!cursor.isClosed()) {
                            cursor.close();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return valueOf;
                    }
                }
                if (!db.isOpen() || db.isDbLockedByOtherThreads()) {
                    return valueOf;
                }
                db.close();
                return valueOf;
            } catch (Exception e3) {
                e3.printStackTrace();
                if (cursor != null) {
                    try {
                        if (!cursor.isClosed()) {
                            cursor.close();
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                if (db.isOpen() && !db.isDbLockedByOtherThreads()) {
                    db.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    try {
                        if (!cursor.isClosed()) {
                            cursor.close();
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                        throw th;
                    }
                }
                if (db.isOpen() && !db.isDbLockedByOtherThreads()) {
                    db.close();
                }
                throw th;
            }
        } else {
            if (cursor != null) {
                try {
                    if (!cursor.isClosed()) {
                        cursor.close();
                    }
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
            }
            if (db.isOpen() && !db.isDbLockedByOtherThreads()) {
                db.close();
            }
            return -1L;
        }
    }

    public void refreshTotal() {
        SQLiteDatabase db = this.a.getWritableDatabase();
        try {
            Context context = this.d;
            a(65525, db);
            if (db != null && db.isOpen() && !db.isDbLockedByOtherThreads()) {
                db.close();
            }
        } catch (Exception e2) {
            Log.i("Receiver", "catch Exception......");
        }
    }

    public void refresh() {
        SQLiteDatabase db = this.a.getWritableDatabase();
        try {
            Context context = this.d;
            a(65525, db);
            Iterator i$ = getApps(this.d).iterator();
            while (i$.hasNext()) {
                Context context2 = this.d;
                a(i$.next().uid, db);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.i("Receiver", "catch Exception......");
        } finally {
            db.close();
            Log.i("Receiver", "finally......");
        }
    }

    private void a(int uid, SQLiteDatabase db) {
        long receivedData;
        long sendData;
        Log.i("3.6", " uid = " + uid);
        int day = getDate();
        if (uid == 65525) {
            receivedData = TrafficStats.getMobileRxBytes();
            Log.i("3.6", "receivedData 65525 = " + receivedData);
            sendData = TrafficStats.getMobileTxBytes();
            Log.i("3.6", "sendData 65525 = " + sendData);
        } else {
            receivedData = TrafficStats.getUidRxBytes(uid);
            sendData = TrafficStats.getUidTxBytes(uid);
            Log.i("3.6", "update_process " + uid + "===== and receivedData = " + receivedData + "sendData = " + sendData);
        }
        if (receivedData == -1) {
            receivedData = 0;
        }
        if (sendData == -1) {
            sendData = 0;
        }
        Cursor cursor = null;
        try {
            cursor = a(db).query("apps", new String[]{"received", "sent", "last_received", "last_sent"}, "uid = ? ", new String[]{String.valueOf(uid)}, null, null, "_id DESC", DatabaseTables.SYSTEM_MARK);
            if (cursor.getCount() != 0) {
                cursor.moveToFirst();
                Long last_received = Long.valueOf(cursor.getLong(cursor.getColumnIndex("last_received")));
                Log.i("3.6", "last_received" + last_received);
                Long last_sent = Long.valueOf(cursor.getLong(cursor.getColumnIndex("last_sent")));
                if (last_received.longValue() == -1) {
                    last_received = 0L;
                }
                if (last_sent.longValue() == -1) {
                    last_sent = 0L;
                }
                Long received = Long.valueOf(receivedData - last_received.longValue());
                Long send = Long.valueOf(sendData - last_sent.longValue());
                Long total = Long.valueOf(received.longValue() + send.longValue());
                Log.i("3.6", "update_process uid=" + uid + "and last_received = " + last_received + " last_send = " + last_sent + " total = " + total);
                if (total.longValue() != 0) {
                    if (total.longValue() > 0) {
                        a(db).execSQL("INSERT INTO apps (uid, _date, received, sent, last_received, last_sent) VALUES ( ? , ? , ? , ? , ? , ? )", new Object[]{Integer.valueOf(uid), Integer.valueOf(day), received, send, Long.valueOf(receivedData), Long.valueOf(sendData)});
                        Log.i("Receiver", "update_process totoal >>>>>>> 0 uid =" + uid);
                    } else {
                        a(db).execSQL("INSERT INTO apps (uid, _date, received, sent, last_received, last_sent) VALUES ( ? , ? , ? , ? , ? , ? )", new Object[]{Integer.valueOf(uid), Integer.valueOf(day), Long.valueOf(receivedData), Long.valueOf(sendData), Long.valueOf(receivedData), Long.valueOf(sendData)});
                        Log.i("Receiver", "update_process totoal <<<<<< 0");
                    }
                }
            } else if (receivedData + sendData > 0) {
                a(db).execSQL("INSERT INTO apps (uid, _date, received, sent, last_received, last_sent) VALUES ( ? , ? , ? , ? , ? , ? )", new Object[]{Integer.valueOf(uid), Integer.valueOf(day), Long.valueOf(receivedData), Long.valueOf(sendData), Long.valueOf(receivedData), Long.valueOf(sendData)});
                Log.i("3.6", "update_process getCount() == 0 then insert into the table......");
                a(db).execSQL("update apps set received = ?, sent = ? where uid = ?", new Object[]{0, 0, Integer.valueOf(uid)});
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static HashSet<Integer> getNetWorkApps(Context ctx, HashSet<Integer> set) {
        HashSet<Integer> mApps = new HashSet<>();
        PackageManager pkgmanager = ctx.getPackageManager();
        for (ApplicationInfo applicationInfo : pkgmanager.getInstalledApplications(0)) {
            if (pkgmanager.checkPermission("android.permission.INTERNET", applicationInfo.packageName) == 0 && !set.contains(Integer.valueOf(applicationInfo.uid))) {
                mApps.add(Integer.valueOf(applicationInfo.uid));
            }
        }
        return mApps;
    }

    public static ArrayList<AppInfo> getApps(Context ctx) {
        ArrayList<AppInfo> mApps = new ArrayList<>();
        PackageManager pkgmanager = ctx.getPackageManager();
        for (ApplicationInfo applicationInfo : pkgmanager.getInstalledApplications(0)) {
            if (pkgmanager.checkPermission("android.permission.INTERNET", applicationInfo.packageName) == 0) {
                AppInfo appInfo = new AppInfo();
                appInfo.uid = applicationInfo.uid;
                appInfo.item_3g = 0;
                mApps.add(appInfo);
            }
        }
        return mApps;
    }

    public static ArrayList<AppInfo> getAppInfos(Context ctx, HashSet<Integer> set) {
        ArrayList<AppInfo> appList = new ArrayList<>();
        TrafficStatsSQLiteOpenHelper openHelper = new TrafficStatsSQLiteOpenHelper(ctx);
        Cursor cursor = null;
        try {
            cursor = openHelper.getWritableDatabase().query("apps", new String[]{"uid", "SUM(received)+SUM(sent) AS item_3g"}, null, null, "uid", null, "SUM(received)+SUM(sent) DESC");
            Log.d("boot", "apps in database: " + cursor.getCount());
            while (cursor.moveToNext()) {
                AppInfo app = new AppInfo();
                app.uid = cursor.getInt(cursor.getColumnIndex("uid"));
                if (!(app.uid == 65525 || app.uid == 1000)) {
                    app.item_3g = cursor.getLong(cursor.getColumnIndex("item_3g"));
                    appList.add(app);
                    set.add(Integer.valueOf(app.uid));
                }
            }
            Log.d("boot", "apps to show: " + appList.size());
            openHelper.close();
            return appList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public void refreshUid() {
        SQLiteDatabase db = this.a.getWritableDatabase();
        try {
            Iterator i$ = getApps(this.d).iterator();
            while (i$.hasNext()) {
                Context context = this.d;
                a(i$.next().uid, db);
            }
            if (db != null && db.isOpen()) {
                db.close();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.i("Receiver", "catch Exception......");
        }
    }

    public static int getSimState(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getSimState();
    }

    public static boolean getIfSimState(Context context) {
        int simState = getSimState(context);
        if (simState == 1 || simState == 0) {
            return false;
        }
        return true;
    }

    public static PhoneSimInfo getImsiInfo(Context context) {
        boolean isBoot = false;
        PhoneSimInfo info = new PhoneSimInfo();
        info.isMutiSimCard = NetCache.isProvideMuti;
        try {
            long now = System.currentTimeMillis();
            long bootTime = NetCache.getBoot_time();
            if (bootTime == 0 || now - bootTime < 60000) {
                isBoot = true;
            }
            if (!MyMultiSIMUtils.isMultiSim(context)) {
                info.sim1IMSI = WflUtils.getActiveSubscriberId(context);
                if (TextUtils.isEmpty(info.sim1IMSI) && (IsAirModeOn(context) || isBoot)) {
                    info.sim1IMSI = NetCache.getCached_imsi();
                    Log.i("bootairtest", "touch @@@@@@ single");
                }
                if (!TextUtils.isEmpty(info.sim1IMSI)) {
                    info.SimState = true;
                }
                info.sim2IMSI = null;
            } else {
                info.sim1IMSI = MultiSIMUtils.getDefault(context).getSubscriberId(0);
                info.sim2IMSI = MultiSIMUtils.getDefault(context).getSubscriberId(1);
                Log.i("bootairtest", "@getImsiInfo now = " + now + "boottime =" + bootTime + ",is boot =" + isBoot);
                if (TextUtils.isEmpty(info.sim1IMSI) && TextUtils.isEmpty(info.sim2IMSI) && (IsAirModeOn(context) || isBoot)) {
                    info.sim1IMSI = NetCache.getCached_imsi();
                    info.sim2IMSI = NetCache.getCached_imsi2();
                    Log.i("bootairtest", "touch @@@@@@ double");
                }
                if (!TextUtils.isEmpty(info.sim1IMSI) || !TextUtils.isEmpty(info.sim2IMSI)) {
                    info.SimState = true;
                }
                Log.i("bootairtest", "imsi1 =" + info.sim1IMSI + ",imsi2 = " + info.sim2IMSI + "info.SimState = " + info.SimState);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return info;
    }

    public static int getImsiOperator(int postion, Context context) {
        PhoneSimInfo info = getImsiInfo(context);
        String tmp = postion == 0 ? info.sim1IMSI : info.sim2IMSI;
        if (tmp.contains("46000") || tmp.contains("46002")) {
            return 0;
        }
        if (tmp.contains("46001")) {
            return 1;
        }
        if (tmp.contains("46003")) {
            return 2;
        }
        return 8;
    }

    public static void mutiSIMdoStats(Object statsService, Context context) {
        long totalToday1;
        long totalMonth1;
        long totalToday2;
        long totalMonth2;
        int progress1;
        int progress2;
        PhoneSimInfo info = getImsiInfo(context);
        a(info.sim1IMSI, info.sim2IMSI, context);
        NetworkTemplate template1 = NetworkTemplate.buildTemplateMobileAll(info.sim1IMSI);
        NetworkTemplate template2 = NetworkTemplate.buildTemplateMobileAll(info.sim2IMSI);
        Log.i("4.0", "sim1 imsi = " + info.sim1IMSI + ",sim2 imsi = " + info.sim2IMSI + ",totalMonth = " + 0L + ",totalMonth2 =" + 0L);
        TrafficStatsService service = getInstance(context);
        if (TextUtils.isEmpty(info.sim1IMSI)) {
            totalToday1 = Const.getTodayUsedTraffic();
            totalMonth1 = Const.getMonthUsedTraffic();
        } else {
            totalToday1 = a(statsService, template1);
            totalMonth1 = b(statsService, template1);
            String[] trafficCheckDatas1 = service.queryTrafficCheck(info.sim1IMSI);
            Log.i("testtrafficbug", "check month used  sim1 = " + trafficCheckDatas1[1] + ",trafficCheckDatas1[0] = " + trafficCheckDatas1[0] + ",System.currentTimeMillis() =" + System.currentTimeMillis());
            if (!TextUtils.isEmpty(trafficCheckDatas1[0]) && WflUtils.isInTheSameMonth(System.currentTimeMillis(), Long.valueOf(trafficCheckDatas1[0]).longValue()) && checkCorrectTime(System.currentTimeMillis(), Long.valueOf(trafficCheckDatas1[0]).longValue())) {
                Log.i("testtrafficbug", "touch sim1 if begin " + totalMonth1 + ",trafficCheckDatas1[1] = " + trafficCheckDatas1[1]);
                totalMonth1 += Long.valueOf(trafficCheckDatas1[1]).longValue();
                Log.i("testtrafficbug", "touch sim1 if end " + totalMonth1 + ",trafficCheckDatas1[1] = " + trafficCheckDatas1[1]);
            }
        }
        if (TextUtils.isEmpty(info.sim2IMSI)) {
            totalToday2 = Const.getTodayUsedTraffic2();
            totalMonth2 = Const.getMonthUsedTraffic2();
        } else {
            totalToday2 = a(statsService, template2);
            totalMonth2 = b(statsService, template2);
            String[] trafficCheckDatas2 = service.queryTrafficCheck(info.sim2IMSI);
            Log.i("testtrafficbug", "check month used  sim2 = " + trafficCheckDatas2[1] + ",trafficCheckDatas2[0] = " + trafficCheckDatas2[0] + ",System.currentTimeMillis() =" + System.currentTimeMillis());
            if (!TextUtils.isEmpty(trafficCheckDatas2[0]) && WflUtils.isInTheSameMonth(System.currentTimeMillis(), Long.valueOf(trafficCheckDatas2[0]).longValue()) && checkCorrectTime(System.currentTimeMillis(), Long.valueOf(trafficCheckDatas2[0]).longValue())) {
                Log.i("testtrafficbug", "touch sim2 if begin " + totalMonth2 + ",trafficCheckDatas2[1] = " + trafficCheckDatas2[1]);
                totalMonth2 += Long.valueOf(trafficCheckDatas2[1]).longValue();
                Log.i("testtrafficbug", "touch sim2 if end " + totalMonth2 + ",trafficCheckDatas2[1] = " + trafficCheckDatas2[1]);
            }
        }
        if (totalMonth1 < 0) {
            totalMonth1 = b(statsService, template1) < 0 ? 0 : b(statsService, template1);
        }
        if (totalMonth2 < 0) {
            totalMonth2 = b(statsService, template2) < 0 ? 0 : b(statsService, template2);
        }
        boolean ifSeted1 = !"-1".equals(Const.getMonthLimitTraffic());
        boolean ifSeted2 = !"-1".equals(Const.getMonthLimitTraffic2());
        long monthLimit1 = Long.valueOf(Const.getMonthLimitTraffic()).longValue() * 1024 * 1024;
        long monthLimit2 = Long.valueOf(Const.getMonthLimitTraffic2()).longValue() * 1024 * 1024;
        long monthFree1 = monthLimit1 - totalMonth1;
        long monthFree2 = monthLimit2 - totalMonth2;
        if (!ifSeted1) {
            progress1 = 0;
        } else {
            progress1 = (int) (((monthLimit1 - monthFree1) * 100) / monthLimit1);
        }
        if (!ifSeted2) {
            progress2 = 0;
        } else {
            progress2 = (int) (((monthLimit2 - monthFree2) * 100) / monthLimit2);
        }
        Const.setTodayUsedTraffic(totalToday1);
        Const.setMonthFreeTraffic(monthFree1);
        Const.setMonthUsedTraffic(totalMonth1);
        Log.i("letraffic", "today use1 = " + totalToday1 + ",month use1 = " + totalMonth1);
        Const.setTodayUsedTraffic2(totalToday2);
        Const.setMonthFreeTraffic2(monthFree2);
        Const.setMonthUsedTraffic2(totalMonth2);
        Log.i("4.0", "today use2 = " + totalToday2 + ",month use2 = " + totalMonth2);
        Const.setProgressTrafficMonthUsed(progress1);
        Const.setProgressTrafficMonthUsed2(progress2);
        NetCache.setTraffic_used_progress((long) progress1);
        NetCache.setTraffic_used_progress2((long) progress2);
        MyUtils.showLeSecNotification(context);
        LeSafeObservable.get(context).noticeRefreshTrafficInfo();
        if (Const.getIsNetMonitorOn()) {
            long todayLimit = Const.getNetEverydayLimit();
            if (Const.getNetEverydayLimit() != -1 && !Const.getIsTodayNoticed() && totalToday1 >= 1024 * todayLimit * 1024) {
                a(context, 22, 0, 12, todayLimit);
            }
            if (Const.getNetEverydayLimit() != -1 && !getIsTodayNoticed2(context) && totalToday2 >= 1024 * todayLimit * 1024) {
                a(context, 22, 1, 12, todayLimit);
            }
            if (Const.getIsNetMonthFreeNoticeOn1() && !Const.isNetAlarmedInMonth() && progress1 >= 90 && progress1 < 100) {
                a(context, 20, 0, 12, todayLimit);
            }
            if (Const.getIsNetMonthFreeNoticeOn2() && !Const.isNetAlarmedInMonth2() && progress2 >= 90 && progress2 < 100) {
                a(context, 20, 1, 12, todayLimit);
            }
            if (monthFree1 < 0 && ifSeted1) {
                a(context, 21, 0, 12, todayLimit);
            }
            if (monthFree2 < 0 && ifSeted2) {
                a(context, 21, 1, 12, todayLimit);
            }
        }
    }

    public static String formatTraffic(long total, Context context) {
        if (total == 0) {
            return "";
        }
        return Formatter.formatShortFileSize(context, total);
    }

    public static String getDataSIMId(Context context) {
        MultiSIMUtils mUtils = MultiSIMUtils.getDefault(context);
        try {
            String id = (String) mUtils.getClass().getDeclaredMethod("getDataSubscriberId", null).invoke(mUtils, new Object[0]);
            Log.i("s3", "data id =" + id);
            return id;
        } catch (Exception e2) {
            e2.printStackTrace();
            PhoneSimInfo info = getImsiInfo(context);
            if (Const.getTodayUsedTraffic() != 0 || Const.getTodayUsedTraffic2() <= 0) {
                return info.sim1IMSI;
            }
            return info.sim2IMSI;
        }
    }

    public static int getDataCardPosition(Context context) {
        if (!MyMultiSIMUtils.isMultiSim(context)) {
            return 0;
        }
        if (Const.SDK_VERSION < 14) {
            return 0;
        }
        MultiSIMUtils mUtils = MultiSIMUtils.getDefault(context);
        PhoneSimInfo info = getImsiInfo(context);
        Logger.i("8.20", "imsi 1 =" + info.sim1IMSI + "imsi2 = " + info.sim2IMSI);
        try {
            String id = (String) mUtils.getClass().getDeclaredMethod("getDataSubscriberId", null).invoke(mUtils, new Object[0]);
            if (WflUtils.isMobileNetwork(context)) {
                return id.equals(info.sim1IMSI) ? 0 : 1;
            }
            String cacheImsi = Const.getDataCacheImsi();
            Log.i("8.20", "cachimsi =" + cacheImsi);
            if (!TextUtils.isEmpty(cacheImsi)) {
                return cacheImsi.equals(info.sim1IMSI) ? 0 : 1;
            }
            if (TextUtils.isEmpty(info.sim2IMSI) || !TextUtils.isEmpty(info.sim1IMSI)) {
                return 0;
            }
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            if (info.sim1IMSI == null && info.sim2IMSI != null) {
                return 1;
            }
            if (info.sim1IMSI != null && info.sim2IMSI == null) {
                return 0;
            }
            if (info.sim1IMSI == null || info.sim2IMSI == null) {
                return 3;
            }
            return (Const.getTodayUsedTraffic() != 0 || Const.getTodayUsedTraffic2() <= 0) ? 0 : 1;
        }
    }

    public static void startIntent2TrafficCorrect(int card, Context context, int type) {
        boolean z = true;
        try {
            PhoneSimInfo info = getImsiInfo(context);
            if (card == 0) {
                if (TextUtils.isEmpty(info.sim1IMSI)) {
                    if (getTrafficMode(context) != 13 || !MyMultiSIMUtils.isMultiSim(context) || TextUtils.isEmpty(info.sim2IMSI)) {
                        Toast.makeText(context, (int) R.string.net_simcard_error2, 1).show();
                        return;
                    } else {
                        Toast.makeText(context, (int) R.string.net_error_code12, 1).show();
                        return;
                    }
                }
            } else if (TextUtils.isEmpty(info.sim2IMSI)) {
                Toast.makeText(context, (int) R.string.net_simcard_error2, 1).show();
                return;
            }
            if (type == 0) {
                if (!Utils.getCanCorrectFlag(context)) {
                    long currentTimeMillis = System.currentTimeMillis() - Utils.getLastCorrectTime(context);
                    if (currentTimeMillis < TrafficCorrectSetting.TIME) {
                        if (currentTimeMillis <= 0) {
                            Utils.setLastCorrectTime(context);
                        }
                        z = false;
                    }
                    if (!z) {
                        Toast.makeText(context, (int) R.string.net_traffic_correct_notice, 1).show();
                        return;
                    }
                }
                canCorrect = false;
                Utils.setCanCorrectFlag(context, canCorrect);
                Utils.setCorrectPostion(context, card);
                h.sendMessageDelayed(h.obtainMessage(66), TrafficCorrectSetting.TIME);
                if (Utils.hasSetConfiged(card, context)) {
                    Toast.makeText(context, (int) R.string.net_traffic_correct_first_notice, 1).show();
                    Log.i(SecurityService.TAG, "touch toast short");
                    Utils.setLastCorrectTime(context);
                    Intent i2 = new Intent(context, SecurityService.class);
                    i2.putExtra(TrafficCorrectSetting.CORRECT, true);
                    context.startService(i2);
                    return;
                }
                Intent mIntent = new Intent(context, TrafficCorrectSetting.class);
                mIntent.putExtra("card", card);
                mIntent.putExtra("correct_type", type);
                context.startActivity(mIntent);
                return;
            }
            Intent mIntent2 = new Intent(context, TrafficCorrectSetting.class);
            mIntent2.putExtra("card", card);
            mIntent2.putExtra("correct_type", type);
            context.startActivity(mIntent2);
        } catch (Exception e2) {
        }
    }

    public static StringBuilder getSIMCarryInfo(int card, Context context) throws Exception {
        StringBuilder builder = new StringBuilder();
        if (card == 0) {
            SharedPreferences sp = context.getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
            if (!sp.getBoolean(Utils.BOOLEAN_SET_LOCATION, false)) {
                builder.append(context.getString(R.string.no_setting_text));
            } else {
                builder.append(sp.getString(Utils.PROVINCE_DESC, CookiePolicy.DEFAULT)).append(",").append(sp.getString(Utils.CITY_DESC, CookiePolicy.DEFAULT)).append(",").append(sp.getString(Utils.CARRY_DESC, CookiePolicy.DEFAULT)).append(",").append(sp.getString(Utils.BRAND_DESC, CookiePolicy.DEFAULT));
            }
        } else {
            SharedPreferences sp2 = context.getSharedPreferences(Utils.SIM2_PROPERTIES, 0);
            if (!sp2.getBoolean(Utils.BOOLEAN_SET_LOCATION, false)) {
                builder.append(context.getString(R.string.no_setting_text));
            } else {
                builder.append(sp2.getString(Utils.PROVINCE_DESC, CookiePolicy.DEFAULT)).append(",").append(sp2.getString(Utils.CITY_DESC, CookiePolicy.DEFAULT)).append(",").append(sp2.getString(Utils.CARRY_DESC, CookiePolicy.DEFAULT)).append(",").append(sp2.getString(Utils.BRAND_DESC, CookiePolicy.DEFAULT));
            }
        }
        Log.i("plu", "builder = " + builder.toString());
        return builder;
    }

    public static int getTrafficMode(Context context) {
        if (!isSystemApp(context)) {
            return 13;
        }
        if (Const.SDK_VERSION >= 14 && !MyMultiSIMUtils.isMultiSim(context)) {
            return 10;
        }
        if (Const.SDK_VERSION < 14 || !MyMultiSIMUtils.isMultiSim(context)) {
            return 13;
        }
        return 12;
    }

    public static boolean nacServerIsExist() {
        File file = new File("/system/bin/nac_server");
        if (!file.exists() || file.length() <= 0) {
            return false;
        }
        return true;
    }

    public static void startTrafficCorrect(Context context, int card) {
        if (WflUtils.isNetworkAvailable(context)) {
            Intent i2 = new Intent();
            i2.setAction(NetConstant.AUTO_CORRECT_ACTION);
            i2.putExtra("card", card);
            context.sendBroadcast(i2);
        }
    }

    public static int getDayCountInMonth() {
        int nowMonth = getCurrentMonth();
        if (nowMonth == 1 || nowMonth == 3 || nowMonth == 5 || nowMonth == 7 || nowMonth == 8 || nowMonth == 10 || nowMonth == 12) {
            return 32;
        }
        if (nowMonth != 2) {
            return 31;
        }
        int nowYear = getCurrentYear();
        if ((nowYear % 4 != 0 || nowYear % 100 == 0) && nowYear % 400 != 0) {
            return 29;
        }
        return 30;
    }

    public static void addNetWhiteList(Context context) {
        PackageManager mPackageManager = context.getPackageManager();
        try {
            Const.mNetWhiteApps.add(Integer.valueOf(mPackageManager.getApplicationInfo(PACKAGE_NAME, 0).uid));
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        try {
            Const.mNetWhiteApps.add(Integer.valueOf(mPackageManager.getApplicationInfo(NetConstant.TRAFFIC_PLUGIN, 0).uid));
        } catch (PackageManager.NameNotFoundException e3) {
            e3.printStackTrace();
        }
        try {
            Const.mNetWhiteApps2.add(Integer.valueOf(mPackageManager.getApplicationInfo("com.lenovo.lsf.device", 0).uid));
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
        }
        try {
            Const.mNetWhiteApps2.add(Integer.valueOf(mPackageManager.getApplicationInfo("com.lenovo.ue.service", 0).uid));
        } catch (PackageManager.NameNotFoundException e5) {
            e5.printStackTrace();
        }
        try {
            Const.mNetWhiteApps2.add(Integer.valueOf(mPackageManager.getApplicationInfo("com.android.SDAC", 0).uid));
        } catch (PackageManager.NameNotFoundException e6) {
            e6.printStackTrace();
        }
    }

    public static void startAutoCorrectTraffic(Context context, long intervalTime) {
        long triggerTime;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        Intent intent = new Intent();
        intent.setAction(CORRECT_ACTION_RTC_SIM);
        PendingIntent pendingIntent = PendingIntent.getService(context, 0, intent, 0);
        if (System.currentTimeMillis() > WflUtils.getTriggerTime(22, 0, 0)) {
            Log.i("8.31", "triggerTime<currentTime");
            triggerTime = WflUtils.getTriggerTime(22, 0, 0) + 86400000;
        } else {
            triggerTime = WflUtils.getTriggerTime(22, 0, 0);
        }
        alarmManager.setRepeating(1, triggerTime, intervalTime, pendingIntent);
        Log.i("8.31", "correct_ACTION_RTC");
    }

    public static void cancelAutoCorrectTraffic(Context context) {
        Intent intent = new Intent();
        intent.setAction(CORRECT_ACTION_RTC_SIM);
        ((AlarmManager) context.getSystemService("alarm")).cancel(PendingIntent.getService(context, 0, intent, 0));
        Log.i("4.2", "cancel correct_ACTION_RTC");
    }

    public static void startAutoCorrectTraffic2(Context context, long intervalTime) {
        long triggerTime;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        Intent intent = new Intent();
        intent.setAction(CORRECT_ACTION_RTC_SIM2);
        PendingIntent pendingIntent = PendingIntent.getService(context, 0, intent, 0);
        if (System.currentTimeMillis() > WflUtils.getTriggerTime(22, 30, 0)) {
            Log.i("8.20", "triggerTime<currentTime");
            triggerTime = WflUtils.getTriggerTime(22, 30, 0) + 86400000;
        } else {
            triggerTime = WflUtils.getTriggerTime(22, 30, 0);
        }
        alarmManager.setRepeating(1, triggerTime, intervalTime, pendingIntent);
        Log.i("4.2", "correct_ACTION_RTC");
    }

    public static void cancelAutoCorrectTraffic2(Context context) {
        Intent intent = new Intent();
        intent.setAction(CORRECT_ACTION_RTC_SIM2);
        ((AlarmManager) context.getSystemService("alarm")).cancel(PendingIntent.getService(context, 0, intent, 0));
        Log.i("4.2", "cancel correct_ACTION_RTC_SIM2");
    }

    public static void startAutoTrafficCorrectSim2(Context context) {
        switch (Const.getNetCorrectCycle2()) {
            case 0:
                startAutoCorrectTraffic2(context, 604800000);
                return;
            case 1:
                startAutoCorrectTraffic2(context, 864000000);
                return;
            case 2:
                cancelAutoCorrectTraffic2(context);
                return;
            default:
                return;
        }
    }

    public static void startAutoTrafficCorrectSim1(Context context) {
        switch (Const.getNetCorrectCycle()) {
            case 0:
                startAutoCorrectTraffic(context, 604800000);
                return;
            case 1:
                startAutoCorrectTraffic(context, 864000000);
                return;
            case 2:
                cancelAutoCorrectTraffic(context);
                return;
            default:
                return;
        }
    }

    public static boolean getMySIMState(Context context) {
        PhoneSimInfo info = getImsiInfo(context);
        switch (getTrafficMode(context)) {
            case 10:
                if (TextUtils.isEmpty(info.sim1IMSI)) {
                    return false;
                }
                return true;
            case 11:
            default:
                return true;
            case 12:
                if (!TextUtils.isEmpty(info.sim1IMSI) || !TextUtils.isEmpty(info.sim2IMSI)) {
                    return true;
                }
                return false;
            case 13:
                return true;
        }
    }

    public static void setMonthLimit(Context context) {
        getTrafficSP(context).edit().putString("Month_Limit_Traffic", "-1").commit();
    }

    public static Object getNetWorkStatsService() {
        INetworkStatsService statsService = INetworkStatsService.Stub.asInterface(ServiceManager.getService("netstats"));
        if (Build.VERSION.SDK_INT < 16) {
            return statsService;
        }
        try {
            try {
                try {
                    return Class.forName("android.net.INetworkStatsService").getDeclaredMethod("openSession", null).invoke(statsService, new Object[0]);
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    return null;
                } catch (IllegalAccessException e3) {
                    e3.printStackTrace();
                    return null;
                } catch (InvocationTargetException e4) {
                    e4.printStackTrace();
                    return null;
                }
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
                return null;
            }
        } catch (ClassNotFoundException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    public static long invoke(String methodName, Object object, NetworkTemplate template, long startTimeMonth, long end) {
        Class clazz = object.getClass();
        NetworkStats stats = null;
        if ("getSummaryForAllUid".equals(methodName)) {
            try {
                stats = (NetworkStats) clazz.getDeclaredMethod("getSummaryForAllUid", NetworkTemplate.class, Long.TYPE, Long.TYPE, Boolean.TYPE).invoke(object, template, Long.valueOf(startTimeMonth), Long.valueOf(end), false);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
        if ("getSummaryForNetwork".equals(methodName)) {
            try {
                stats = (NetworkStats) clazz.getDeclaredMethod("getSummaryForNetwork", NetworkTemplate.class, Long.TYPE, Long.TYPE).invoke(object, template, Long.valueOf(startTimeMonth), Long.valueOf(end));
            } catch (NoSuchMethodException e6) {
                e6.printStackTrace();
            } catch (IllegalArgumentException e7) {
                e7.printStackTrace();
            } catch (IllegalAccessException e8) {
                e8.printStackTrace();
            } catch (InvocationTargetException e9) {
                e9.printStackTrace();
            }
        }
        NetworkStats.Entry devTotal = stats.getTotal((NetworkStats.Entry) null);
        return devTotal.rxBytes + devTotal.txBytes;
    }

    public static NetworkStats invokeForAllUid(String methodName, Object object, NetworkTemplate template, long start, long end) {
        Class clazz = object.getClass();
        if (!"getSummaryForAllUid".equals(methodName)) {
            return null;
        }
        try {
            return (NetworkStats) clazz.getDeclaredMethod("getSummaryForAllUid", NetworkTemplate.class, Long.TYPE, Long.TYPE, Boolean.TYPE).invoke(object, template, Long.valueOf(start), Long.valueOf(end), false);
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return null;
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return null;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static void startIntentNetFilter(Context context) {
        Intent intent;
        int mode = getTrafficMode(context);
        if (mode == 12 || mode == 10) {
            intent = new Intent(context, NetFilter.class);
        } else {
            intent = new Intent(context, LowLevelNetFilter.class);
        }
        context.startActivity(intent);
    }

    public static void startIntentTraffic(Context context) {
        Intent intent;
        int mode = getTrafficMode(context);
        Log.i("9.17", "mode =" + mode);
        if (mode == 12) {
            intent = new Intent(context, TrafficStatisticsDoubleMode.class);
        } else {
            intent = new Intent(context, TrafficStatistics.class);
        }
        context.startActivity(intent);
    }

    public static void trafficForceUpdate(Context context) {
        if (Const.SDK_VERSION < 14 || !isSystemApp(context)) {
            TrafficStatsService service = getInstance(context);
            NetCache.is_net_flush_cast = true;
            service.refreshTotal();
            statsTrafficMobileInLimit(context);
            return;
        }
        INetworkStatsService statsService = INetworkStatsService.Stub.asInterface(ServiceManager.getService("netstats"));
        NetCache.is_net_flush_cast = true;
        try {
            statsService.forceUpdate();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void changeBinFileOwnerMode(final String fileName, final Context context) {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.net.support.TrafficStatsService.AnonymousClass4 */

            /* JADX WARNING: Removed duplicated region for block: B:18:0x00d9 A[SYNTHETIC, Splitter:B:18:0x00d9] */
            /* JADX WARNING: Removed duplicated region for block: B:24:0x00e5 A[SYNTHETIC, Splitter:B:24:0x00e5] */
            /* JADX WARNING: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void run() {
                /*
                // Method dump skipped, instructions count: 244
                */
                throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.net.support.TrafficStatsService.AnonymousClass4.run():void");
            }
        }).start();
    }

    public String[] queryTrafficCheck(String simSubscriberId) {
        SharedPreferences sp = this.d.getSharedPreferences("net_check_traffic" + simSubscriberId, 0);
        if (!sp.getBoolean("is_init_check_traffic", false)) {
            Log.i("testtrafficbug", "touch db flag begin");
            SQLiteDatabase db = this.a.getReadableDatabase();
            String[] date = new String[3];
            SQLiteDatabase b2 = b(db);
            String[] strArr = new String[1];
            if (simSubscriberId == null) {
                simSubscriberId = "";
            }
            strArr[0] = simSubscriberId;
            Cursor cursor = b2.rawQuery("select * from traffic_Check where sim_subscriber_id=?", strArr);
            if (cursor != null && !cursor.isClosed() && cursor.moveToFirst()) {
                Log.i("testtrafficbug", "_id=" + cursor.getString(cursor.getColumnIndex("_id")));
                Log.i("testtrafficbug", "checktime=" + cursor.getString(cursor.getColumnIndex("checktime")));
                Log.i("testtrafficbug", "inaccuracy=" + cursor.getString(cursor.getColumnIndex("inaccuracy")));
                date[0] = cursor.getString(cursor.getColumnIndex("_id"));
                date[1] = cursor.getString(cursor.getColumnIndex("checktime"));
                date[2] = cursor.getString(cursor.getColumnIndex("inaccuracy"));
            }
            if (!TextUtils.isEmpty(date[0])) {
                sp.edit().putString("checktime", date[1]).commit();
                sp.edit().putString("inaccuracy", date[2]).commit();
            }
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            if (db != null && db.isOpen()) {
                db.close();
            }
            sp.edit().putBoolean("is_init_check_traffic", true).commit();
            Log.i("testtrafficbug", "touch db flag end");
        }
        String[] date2 = new String[3];
        date2[0] = sp.getString("checktime", "");
        date2[1] = sp.getString("inaccuracy", "");
        Log.i("testtrafficbug", "queryTrafficCheck  date[0]= " + date2[0] + ",date[1] =" + date2[1]);
        return date2;
    }

    public void updateTrafficCheck(String simSubscriberId, String inaccuracy) {
        SharedPreferences sp = this.d.getSharedPreferences("net_check_traffic" + simSubscriberId, 0);
        sp.edit().putString("checktime", String.valueOf(System.currentTimeMillis())).commit();
        sp.edit().putString("inaccuracy", inaccuracy).commit();
        Log.i("testtrafficbug", "updateTrafficCheck  inaccuracy= " + inaccuracy);
    }

    private SQLiteDatabase a(SQLiteDatabase db) {
        if (db == null) {
            return this.a.getWritableDatabase();
        }
        if (!db.isOpen()) {
            return this.a.getWritableDatabase();
        }
        return db;
    }

    private SQLiteDatabase b(SQLiteDatabase db) {
        if (db == null) {
            return this.a.getReadableDatabase();
        }
        if (!db.isOpen()) {
            return this.a.getReadableDatabase();
        }
        return db;
    }

    public static boolean isSystemApp(Context context) {
        try {
            if ((context.getPackageManager().getApplicationInfo(PACKAGE_NAME, 0).flags & 1) != 0) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static float getRawSize(Context c2, int unit, float size) {
        Resources r;
        if (c2 == null) {
            r = Resources.getSystem();
        } else {
            r = c2.getResources();
        }
        return TypedValue.applyDimension(unit, size, r.getDisplayMetrics());
    }

    public static float getRawSize(Context c2, float size) {
        Resources r;
        if (c2 == null) {
            try {
                r = Resources.getSystem();
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0.0f;
            }
        } else {
            r = c2.getResources();
        }
        return TypedValue.applyDimension(1, size, r.getDisplayMetrics());
    }

    public static int dip2px(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private int c() {
        int bar_height;
        if (this.b.getInt("traffc_view_height", 0) == 0) {
            bar_height = (int) NetCache.getTraffic_view_height();
            Log.i("viewheight1", "NetCache.getTraffic_view_height() =" + bar_height);
        } else {
            bar_height = this.b.getInt("traffc_view_height", 0);
        }
        Log.i("viewheight1", "final bar_height  =" + bar_height);
        return bar_height;
    }

    public static boolean checkCorrectTime(long now, long time) {
        Log.i("checktraffic", "now = " + now + ",time =" + time);
        if (now < time) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void d() {
        this.c.putLong("last_save_daily_data_time", System.currentTimeMillis()).commit();
    }

    public static boolean getIsAutoDeny(Context context) {
        return getTrafficSP(context).getBoolean("auto_deny_mode", true);
    }

    public static void setIsAutoDeny(Context context, boolean auto) {
        getTrafficSP(context).edit().putBoolean("auto_deny_mode", auto).commit();
    }

    public static void initFridayAlarm(Context context) {
        Log.i("week", "touch initFridayAlarm");
        Intent intent = new Intent();
        intent.setAction(NOTICE_TRAFFIC_ACTION_RTC);
        ((AlarmManager) context.getSystemService("alarm")).setRepeating(1, getTriggerTime(18, 30, 0), 86400000, PendingIntent.getService(context, 0, intent, 0));
    }

    public static long getTriggerTime(int hours, int minutes, int seconds) {
        Date date = new Date();
        date.setHours(hours);
        date.setMinutes(minutes);
        date.setSeconds(seconds);
        return date.getTime();
    }

    private static void a(Context context, int notifyType, int cardPostion, int trafficMode, long todayLimit) {
        String tmp = "";
        if (trafficMode == 12) {
            tmp = cardPostion == 0 ? context.getString(R.string.net_card1) : context.getString(R.string.net_card2);
        }
        Log.i("traffic_noti", "tmp = " + tmp);
        switch (notifyType) {
            case 20:
                DoubleCardUtil.showTariffOutLimitNotification(context, context.getString(R.string.lesafe_tariff_warn_text), tmp + context.getString(R.string.net_month_free_notification), cardPostion == 0 ? 9 : 24);
                if (cardPostion == 0) {
                    Const.setIsNetAlarmedInMonth(true);
                    return;
                } else {
                    Const.setIsNetAlarmedInMonth2(true);
                    return;
                }
            case 21:
                int id3 = cardPostion == 0 ? 529 : 530;
                boolean flag = cardPostion == 0 ? Const.isNetLimitedInMonth() : Const.isNetLimitedInMonth2();
                boolean connFlag = ((ConnectivityManager) context.getSystemService("connectivity")).getMobileDataEnabled();
                StringBuilder content = new StringBuilder();
                content.append(tmp + context.getString(R.string.curr_month_traffic_out_limit_warm_text));
                if (!flag) {
                    if (!getIsAutoDeny(context) || !connFlag || getDataCardPosition(context) != cardPostion) {
                        DoubleCardUtil.showTariffOutLimitNotification(context, context.getString(R.string.lesafe_tariff_warn_text), content.toString(), id3);
                    } else {
                        Intent intent = new Intent(context, TrafficDailog.class);
                        intent.putExtra(NetConstant.SIM_CARD_POSTION, cardPostion);
                        intent.setFlags(268435456);
                        context.startActivity(intent);
                    }
                    if (cardPostion == 0) {
                        Const.setNetLimitedInMonth(true);
                        return;
                    } else {
                        Const.setNetLimitedInMonth2(true);
                        return;
                    }
                } else {
                    return;
                }
            case 22:
                DoubleCardUtil.showTariffOutLimitNotification(context, context.getString(R.string.lesafe_tariff_warn_text), String.format(tmp + context.getString(R.string.curr_today_traffic_out_limit_warning), Long.valueOf(todayLimit)), 22);
                if (cardPostion == 0) {
                    Const.setIsTodayNoticed(true);
                    return;
                } else {
                    setIsTodayNoticed2(context, true);
                    return;
                }
            default:
                return;
        }
    }

    public static boolean getIsTodayNoticed2(Context context) {
        return getTrafficSP(context).getBoolean("today_noticed_sim2", false);
    }

    public static void setIsTodayNoticed2(Context context, boolean isNotice) {
        getTrafficSP(context).edit().putBoolean("today_noticed_sim2", isNotice).commit();
    }

    public static void setPluginPhoneNumberData(String data, final Context context) {
        new Thread() {
            /* class com.lenovo.safecenter.net.support.TrafficStatsService.AnonymousClass5 */

            public final void run() {
                try {
                    SharedPreferences sp = context.getSharedPreferences("SIM1_properties", 0);
                    if (sp != null) {
                        sp.edit().putString("phoneNumber", NetConstant.ERROR).commit();
                        Log.i("TrafficCorrectCenter", "setPluginPhoneNumberData phoneNumber = " + sp.getString("phoneNumber", CookiePolicy.DEFAULT));
                    }
                } catch (Exception e1) {
                    e1.printStackTrace();
                }
            }
        }.start();
    }

    public static void setBackValue(int value) {
        i = value;
    }

    public static int getBackValue() {
        return i;
    }

    public static boolean getTrafficDaliogNoticeValue(Context context) {
        return getTrafficSP(context).getBoolean("traffic_dailog_notice_value", false);
    }

    public static void setTrafficDaliogNoticeValue(Context context, boolean isNotice) {
        getTrafficSP(context).edit().putBoolean("traffic_dailog_notice_value", isNotice).commit();
    }

    public static SharedPreferences getTrafficSP(Context context) {
        return context.getSharedPreferences(Const.TRAFFIC_PREFERENCES_NAME, 0);
    }

    public static int getWeekOfDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        return calendar.get(7) - 1;
    }

    public static void initNetCache(Context context) {
        PhoneSimInfo info = getImsiInfo(context);
        NetCache.imsi = info.sim1IMSI;
        NetCache.imsi2 = info.sim2IMSI;
        NetCache.isProvideMuti = MyMultiSIMUtils.isMultiSim(context);
        NetCache.data_id_postion = getDataCardPosition(context);
        NetCache.traffic_mode = getTrafficMode(context);
        NetCache.setTraffic_view_height(getRawSize(context, (float) BAR_MAXHEIGHT));
        NetCache.setTraffic_view_width(getRawSize(context, (float) TRAFFIC_CHILDVIEW_WIDTH));
        SharedPreferences sp = getTrafficSP(context);
        NetCache.setCached_imsi(sp.getString(NetConstant.IMSI_CATCHE_SIM, ""));
        NetCache.setCached_imsi2(sp.getString(NetConstant.IMSI_CATCHE_SIM2, ""));
    }

    public static String getDataString(long total) {
        DecimalFormat df = new DecimalFormat("###.0");
        if (total == -1) {
            return "0M";
        }
        if (total < 1024) {
            return total + "B";
        }
        if (total < 1048576) {
            return df.format((double) (((float) total) / 1024.0f)) + "KB";
        }
        if (total < 1073741824) {
            return df.format((double) ((((float) total) / 1024.0f) / 1024.0f)) + "MB";
        }
        if (total < 0) {
            return df.format((double) (((((float) total) / 1024.0f) / 1024.0f) / 1024.0f)) + "GB";
        }
        return "";
    }

    public static boolean getMobileDataButtonValue(Context context) {
        return getTrafficSP(context).getBoolean("mobile_data_all_button_value", true);
    }

    public static void setMobileDataButtonValue(Context context, boolean value) {
        getTrafficSP(context).edit().putBoolean("mobile_data_all_button_value", value).commit();
    }

    public static boolean getWlanDataButtonValue(Context context) {
        return getTrafficSP(context).getBoolean("wlan_data_all_button_value", true);
    }

    public static void setWlanDataButtonValue(Context context, boolean value) {
        getTrafficSP(context).edit().putBoolean("wlan_data_all_button_value", value).commit();
    }

    public static void do4NewMonthBug(Context context) {
        if (Const.getProgressTrafficMonthUsed() < 100 && Const.isNetLimitedInMonth()) {
            Const.setNetLimitedInMonth(false);
        }
        if (Const.getProgressTrafficMonthUsed2() < 100 && Const.isNetLimitedInMonth2()) {
            Const.setNetLimitedInMonth2(false);
        }
    }

    public static boolean IsAirModeOn(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 1;
    }

    public static void openPhoneFirstRun(final Context context) {
        final SharedPreferences sp = getTrafficSP(context);
        if (sp.getBoolean("lesafe_net_first_run_flag", true) && getTrafficMode(context) == 13) {
            getExecutorService().execute(new Thread() {
                /* class com.lenovo.safecenter.net.support.TrafficStatsService.AnonymousClass6 */

                public final void run() {
                    TrafficStatsService.getInstance(context).refresh();
                    sp.edit().putBoolean("lesafe_net_first_run_flag", false).commit();
                }
            });
        }
    }

    public void insertToApp(long re, long sent, long last_re, long last_sent, int uid) {
        this.a.getWritableDatabase().execSQL("INSERT INTO apps (uid, _date, received, sent, last_received, last_sent) VALUES ( ? , ? , ? , ? , ? , ? )", new Object[]{Integer.valueOf(uid), Integer.valueOf(getDate()), Long.valueOf(re), Long.valueOf(sent), Long.valueOf(last_re), Long.valueOf(last_sent)});
    }
}
