package com.lenovo.safecenter.support;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.PolicyService;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.lenovoAntiSpam.newview.FirstHarssActivity;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.notificationintercept.InterceptUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantLock;

public class SafeCenterService extends Service {
    public static final String ACORE_SERVICE = "safecenter.contact13";
    public static final int DEFENSE_SWITCH_OFF = 0;
    public static final int DEFENSE_SWITCH_ON = 1;
    public static final String PHONE_LIB_NAME = "libphonehook-13.so";
    public static final String PHONE_SERVICE = "safecenter.phone13";
    public static final String SYSTEM_LIB_NAME = "libsystemhook-13.so";
    public static final String SYSTEM_PATH = "/system/";
    public static final String SYSTEM_SERVICE = "safecenter.system13";
    public static final int UPDATE_WHITELIST = 2;
    private static HashMap<Integer, List<AppInfo>> b = null;
    private static List<SafeLog> c = new ArrayList();
    public static int calendar_count;
    public static int call_count;
    public static int camera_count;
    public static int charge_count;
    public static int contacts_count;
    private static String d = null;
    public static int harass_call_count;
    public static int harass_msg_count;
    public static int history_count;
    public static int location_count;
    private static HashMap<String, Integer> m = new HashMap<>();
    public static int phone_count;
    public static int privacy_count;
    public static int record_count;
    public static int send_sms_count;
    public static int sms_count;
    private String a = "safecenter.server";
    private Context e;
    private PackageManager f;
    private SharedPreferences g;
    private a h;
    private Handler i = new Handler() {
        /* class com.lenovo.safecenter.support.SafeCenterService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    try {
                        long lastesttime = System.currentTimeMillis();
                        int uid = msg.getData().getInt("uid");
                        int pid = msg.getData().getInt("pid");
                        int backvalue = msg.getData().getInt("backvalue");
                        String content = msg.getData().getString(AppDatabase.CONTENT);
                        Log.i("handmes", "blackvalue==" + backvalue + ",uid=" + uid + ",pid=" + pid + ",content=" + content);
                        if (uid != 0 && pid != 12 && pid != 15 && pid != 46 && pid != 47 && !Const.WHITE_LIST.contains(Integer.toString(uid))) {
                            AppDatabase db = new AppDatabase(SafeCenterService.this.e);
                            if (pid == 8 || pid == 11) {
                                if (db.isAppTrusted(uid, AppDatabase.DB_APP_SENDMESSAGE)) {
                                    return;
                                }
                            } else if (db.isAppTrusted(uid, AppDatabase.PERM_TYPE_PRIVCY)) {
                                return;
                            }
                            String packageName = ((AppInfo) ((List) SafeCenterService.b.get(Integer.valueOf(uid))).get(0)).packageName;
                            if (packageName.contains(com.lenovo.lps.sus.c.c.N)) {
                                packageName = packageName.substring(0, packageName.indexOf(com.lenovo.lps.sus.c.c.N));
                            }
                            if (SafeCenterService.a(SafeCenterService.this, packageName, pid)) {
                                Log.d("handmes", "get packageName: " + packageName);
                                if (pid == 8) {
                                    TrackEvent.reportCallOnBackgroud(packageName);
                                } else if (pid == 11) {
                                    TrackEvent.reportSendSmsOnBackgroud(packageName);
                                }
                                SafeLog log = SafeCenterService.this.a(packageName, pid, backvalue, lastesttime);
                                if (pid == 6 || pid == 7) {
                                    Thread.sleep(1000);
                                    if (SecurityService.isRinging) {
                                        db.isLogFull(SafeCenterService.this, AppDatabase.DB_LOG_PRIVACY);
                                        boolean isDiff = SafeCenterService.a(SafeCenterService.this, lastesttime, pid, uid, backvalue);
                                        Log.d("handmes", "isDiff: " + isDiff);
                                        if (isDiff) {
                                            SafeCenterService.this.insertTappingLog(db, log);
                                            return;
                                        }
                                        return;
                                    }
                                    db.isLogFull(SafeCenterService.this, AppDatabase.DB_LOG_PRIVACY);
                                    boolean isDiff2 = SafeCenterService.a(SafeCenterService.this, lastesttime, pid, uid, backvalue);
                                    Log.d("handmes", "isDiff: " + isDiff2);
                                    if (isDiff2) {
                                        SafeCenterService.this.insertLog(db, log, pid, content);
                                        return;
                                    }
                                    return;
                                } else if (!SafeCenterService.this.g.getBoolean("tariff", true) && (pid == 8 || pid == 11)) {
                                    return;
                                } else {
                                    if (!SafeCenterService.this.g.getBoolean(Const.KEY_IS_PROTECT_PEEP_ON_SAFE_PROTECT, true) && pid != 8 && pid != 11) {
                                        return;
                                    }
                                    if (pid == 8 || pid == 11) {
                                        Const.THIRED_APP_SENDSMS = true;
                                        db.isLogFull(SafeCenterService.this, AppDatabase.DB_LOG_TARIFF);
                                        SafeCenterService.this.insertLog(db, log, pid, content);
                                        return;
                                    } else if (pid == 48) {
                                        db.isLogFull(SafeCenterService.this, AppDatabase.DB_LOG_PRIVACY);
                                        SafeCenterService safeCenterService = SafeCenterService.this;
                                        if (SafeCenterService.a(log, lastesttime) && !TextUtils.isEmpty(SafeCenterService.d) && SafeCenterService.d.contains(packageName)) {
                                            Log.d("handmes", "in locBlackPkgs...........");
                                            SafeCenterService.this.insertLog(db, log, pid, content);
                                            return;
                                        }
                                        return;
                                    } else if (pid == 5) {
                                        db.isLogFull(SafeCenterService.this, AppDatabase.DB_LOG_PRIVACY);
                                        SafeCenterService safeCenterService2 = SafeCenterService.this;
                                        if (SafeCenterService.a(log, lastesttime)) {
                                            SafeCenterService.this.insertLog(db, log, pid, content);
                                            return;
                                        }
                                        return;
                                    } else {
                                        db.isLogFull(SafeCenterService.this, AppDatabase.DB_LOG_PRIVACY);
                                        if (SafeCenterService.a(SafeCenterService.this, lastesttime, pid, uid, backvalue)) {
                                            SafeCenterService.this.insertLog(db, log, pid, content);
                                            return;
                                        }
                                        return;
                                    }
                                }
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                default:
                    return;
            }
        }
    };
    private ExecutorService j = null;
    private LocalServerSocket k = null;
    private ReentrantLock l = new ReentrantLock();
    private int n = 5;
    private List<d> o = new ArrayList(this.n);

    static /* synthetic */ void a(SafeCenterService x0, InjectHelper x1) {
        while (true) {
            try {
                Thread.sleep(TrafficCorrectSetting.TIME);
                x1.ConnectToServer(SYSTEM_SERVICE);
                boolean ConnectToServer = x1.ConnectToServer(PHONE_SERVICE);
                boolean ConnectToServer2 = x1.ConnectToServer(ACORE_SERVICE);
                Log.d("server", "safecenter.phone13:" + ConnectToServer);
                Log.d("server", "safecenter.contact13:" + ConnectToServer2);
                if (Const.mDefaultPreference.getBoolean(Const.SWITCH_INJECT_SWITCH, true)) {
                    int i2 = Settings.System.getInt(x0.e.getContentResolver(), "guest_mode_on", 0);
                    int i3 = x0.e.getPackageManager().getApplicationInfo(TrafficStatsService.PACKAGE_NAME, 0).uid;
                    if (!ConnectToServer) {
                        x1.readSms(x0.e);
                        x1.injectAService(x0.e, PHONE_SERVICE);
                        if (i2 == 1) {
                            CMDHelper.guestModeClient(PHONE_SERVICE, 1, i2, i3);
                        }
                    }
                    if (!ConnectToServer2) {
                        x1.readContact(x0.e);
                        x1.injectAService(x0.e, ACORE_SERVICE);
                        if (i2 == 1) {
                            CMDHelper.guestModeClient(ACORE_SERVICE, 1, i2, i3);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    static /* synthetic */ boolean a(Context x1) {
        File file = new File("/system/libsystemhook-13.so");
        if (file.length() == 0) {
            return false;
        }
        boolean equals = Const.getFileMd5(x1).equals(MD5Util.getFileMD5(file));
        Log.d("test", "=============>check md5 equle: " + equals);
        return equals;
    }

    static /* synthetic */ boolean a(SafeCenterService x0, long x1, int x2, int x3, int x4) {
        boolean z;
        d dVar = new d(x1, x2, x3, x4);
        for (d dVar2 : x0.o) {
            if (dVar.a - dVar2.a < 60000 && dVar.b == dVar2.b && dVar2.c == dVar.c && dVar2.d == dVar.d) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                return false;
            }
        }
        if (x0.o.size() < x0.n) {
            x0.o.add(dVar);
        } else {
            for (int i2 = 0; i2 < x0.n - 1; i2++) {
                x0.o.set(i2, x0.o.get(i2 + 1));
            }
            x0.o.set(x0.n - 1, dVar);
        }
        return true;
    }

    static /* synthetic */ boolean a(SafeCenterService x0, String x1, int x2) {
        boolean z = true;
        switch (x2) {
            case 1:
                return x0.f.checkPermission("android.permission.READ_SMS", x1) == 0 || x0.f.checkPermission("android.permission.RECEIVE_SMS", x1) == 0;
            case 2:
            case 3:
                return x0.f.checkPermission("android.permission.READ_CONTACTS", x1) == 0;
            case 4:
                return x0.f.checkPermission("android.permission.READ_CALENDAR", x1) == 0;
            case 5:
            case 48:
                if (!(x0.f.checkPermission("android.permission.ACCESS_COARSE_LOCATION", x1) == 0 || x0.f.checkPermission("android.permission.ACCESS_FINE_LOCATION", x1) == 0 || x0.f.checkPermission("android.permission.ACCESS_LOCATION_EXTRA_COMMANDS", x1) == 0)) {
                    z = false;
                }
                return z;
            case 6:
                return x0.f.checkPermission("android.permission.RECORD_AUDIO", x1) == 0;
            case 7:
                return x0.f.checkPermission("android.permission.CAMERA", x1) == 0;
            case 8:
                return x0.f.checkPermission("android.permission.CALL_PHONE", x1) == 0 || x0.f.checkPermission("android.permission.CALL_PRIVILEGED", x1) == 0;
            case 9:
                return x0.f.checkPermission("com.android.browser.permission.READ_HISTORY_BOOKMARKS", x1) == 0;
            case 11:
                return x0.f.checkPermission("android.permission.SEND_SMS", x1) == 0;
            case 44:
                return x0.f.checkPermission("android.permission.WRITE_SMS", x1) == 0;
            case 45:
                return x0.f.checkPermission("android.permission.WRITE_CONTACTS", x1) == 0;
            default:
                return false;
        }
    }

    static /* synthetic */ boolean a(SafeLog x1, long x2) {
        for (SafeLog safeLog : c) {
            long parseLong = Long.parseLong(safeLog.time);
            if (safeLog.packageName.equals(x1.packageName) && safeLog.action == x1.action) {
                if (x2 - 300000 > parseLong) {
                    safeLog.time = Long.toString(x2);
                    return true;
                }
                safeLog.time = Long.toString(x2);
                return false;
            }
        }
        c.add(x1);
        return true;
    }

    static /* synthetic */ void f(SafeCenterService x0) {
        try {
            x0.l.lock();
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            x0.l.unlock();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private SafeLog a(String pkgname, int pid, int action, long time) {
        SafeLog log = new SafeLog();
        log.packageName = pkgname;
        try {
            log.appName = this.f.getApplicationInfo(pkgname, 8192).loadLabel(this.f).toString();
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        log.time = String.valueOf(time);
        log.logSelected = 0;
        log.isUpload = 0;
        log.permName = getPernameFromPid(pid);
        log.type = Integer.toString(pid);
        log.action = action;
        return log;
    }

    public void insertLog(AppDatabase db, final SafeLog log, int pid, String content) {
        if (pid == 8) {
            try {
                log.content = content;
                db.insertLog(log, AppDatabase.DB_LOG_TARIFF);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (pid == 11) {
            log.number = content.substring(0, content.indexOf(","));
            log.content = content.substring(content.indexOf(",") + 1, content.length());
            db.insertLog(log, AppDatabase.DB_LOG_TARIFF);
            if (log.action == 1) {
                new Thread() {
                    /* class com.lenovo.safecenter.support.SafeCenterService.AnonymousClass2 */

                    public final void run() {
                        try {
                            Thread.sleep(com.lenovo.lps.sus.c.c.ap);
                            MyUtils.deleteUnsendSMS(SafeCenterService.this.getApplicationContext(), log.content);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }.start();
            }
        } else if (content == null) {
            db.insertLog(log, AppDatabase.DB_LOG_PRIVACY);
        }
        if (log.action == 1 && this.g.getBoolean(Const.SWITCH_BLOCK_NOTIFY, true)) {
            String descriptionByPid = AppUtil.getDescriptionByPid(this, pid);
            if (pid == 8) {
                call_count++;
                Const.saveChargeLogsCount(this);
            } else if (pid == 11) {
                send_sms_count++;
                Const.saveChargeLogsCount(this);
            } else {
                privacy_count++;
                Const.savePrivacyLogsCount(this);
            }
            if (pid == 8 || pid == 11) {
                Const.lastSafeLogs.put("tariff", log);
                MyUtils.showNotification(this, 256, 1);
            } else {
                Const.lastSafeLogs.put(AppDatabase.PERM_TYPE_PRIVCY, log);
                MyUtils.showNotification(this, 256, 2);
            }
            Toast toast = new Toast(this);
            toast.setView(LayoutInflater.from(this).inflate(R.layout.toast, (ViewGroup) null));
            ((TextView) toast.getView().findViewById(R.id.toast_title)).setText(log.appName + getString(R.string.notice) + descriptionByPid + getString(R.string.notice1));
            toast.setDuration(0);
            toast.show();
            if (this.g.getBoolean("first_block_notify", true)) {
                Intent intent = new Intent(this, FirstHarssActivity.class);
                intent.putExtra("from", "safecenterservice");
                intent.addFlags(268435456);
                startActivity(intent);
                this.g.edit().putBoolean("first_block_notify", false).commit();
            }
        }
        Log.d("handmes", "insertLog end...");
    }

    public void insertTappingLog(AppDatabase db, SafeLog log) {
        try {
            log.logSelected = 1;
            db.insertLog(log, AppDatabase.DB_LOG_PRIVACY);
            Log.d("handmes", "insert tapping log end...");
            if (log.action == 1 && this.g.getBoolean(Const.SWITCH_BLOCK_NOTIFY, true)) {
                privacy_count++;
                Const.savePrivacyLogsCount(this);
                Const.lastSafeLogs.put(AppDatabase.PERM_TYPE_PRIVCY, log);
                MyUtils.showNotification(this, 256, 2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String getPernameFromPid(int pid) {
        switch (pid) {
            case 1:
                return "android.permission.READ_SMS";
            case 2:
            case 3:
                return "android.permission.READ_CONTACTS";
            case 4:
                return "android.permission.READ_CALENDAR";
            case 5:
            case 48:
                return "android.permission.ACCESS_COARSE_LOCATION";
            case 6:
                return "android.permission.RECORD_AUDIO";
            case 7:
                return "android.permission.CAMERA";
            case 8:
                return "android.permission.CALL_PHONE";
            case 9:
                return "com.android.browser.permission.READ_HISTORY_BOOKMARKS";
            case 11:
                return "android.permission.SEND_SMS";
            case 44:
                return "android.permission.WRITE_SMS";
            case 45:
                return "android.permission.WRITE_CONTACTS";
            default:
                return null;
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        this.e = this;
        this.g = PreferenceManager.getDefaultSharedPreferences(this);
        this.f = getPackageManager();
        d = WhiteAppsList.getFromRaw(this.e, R.raw.loc_blackpkgs);
        new Thread() {
            /* class com.lenovo.safecenter.support.SafeCenterService.AnonymousClass4 */

            public final void run() {
                try {
                    InjectHelper helper = new InjectHelper();
                    boolean systemServiceRun = helper.ConnectToServer(SafeCenterService.SYSTEM_SERVICE);
                    Log.d("server", "safecenter oncreate safecenter.system13:" + systemServiceRun);
                    if (!systemServiceRun) {
                        File file1 = new File("/system/libsystemhook-13.so");
                        Log.d("test", "/system/libsystemhook-13.so exit: " + file1.exists());
                        if (!file1.exists()) {
                            WhiteAppsList.updateHookLibsFromAssets(SafeCenterService.this.e);
                            CMDHelper.updateHookLibs(SafeCenterService.this.e);
                        }
                        SafeCenterService safeCenterService = SafeCenterService.this;
                        if (!SafeCenterService.a(SafeCenterService.this.e)) {
                            WhiteAppsList.updateHookLibsFromAssets(SafeCenterService.this.e);
                            CMDHelper.updateHookLibs(SafeCenterService.this.e);
                            SafeCenterService safeCenterService2 = SafeCenterService.this;
                            if (SafeCenterService.a(SafeCenterService.this.e)) {
                                helper.injectSafecenterService(SafeCenterService.this.e);
                            }
                        } else {
                            helper.injectSafecenterService(SafeCenterService.this.e);
                        }
                    } else {
                        helper.injectSafecenterService(SafeCenterService.this.e);
                    }
                    SafeCenterService.a(SafeCenterService.this, helper);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
        new c().start();
        Intent intent = new Intent();
        intent.setClass(this, PolicyService.class);
        startService(intent);
        this.h = new a();
        registerReceiver(this.h, new IntentFilter("com.lenovo.safecenter.intercept_action"));
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        new Thread() {
            /* class com.lenovo.safecenter.support.SafeCenterService.AnonymousClass3 */

            /* JADX WARNING: Code restructure failed: missing block: B:12:0x001f, code lost:
                r2 = e;
             */
            /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void run() {
                /*
                    r4 = this;
                    r0 = 0
                    com.lenovo.safecenter.database.AppDatabase r1 = new com.lenovo.safecenter.database.AppDatabase     // Catch:{ Exception -> 0x0015 }
                    com.lenovo.safecenter.support.SafeCenterService r3 = com.lenovo.safecenter.support.SafeCenterService.this     // Catch:{ Exception -> 0x0015 }
                    android.content.Context r3 = com.lenovo.safecenter.support.SafeCenterService.a(r3)     // Catch:{ Exception -> 0x0015 }
                    r1.<init>(r3)     // Catch:{ Exception -> 0x0015 }
                    java.util.HashMap r3 = r1.getFilterMap()     // Catch:{ Exception -> 0x001f, all -> 0x001c }
                    com.lenovo.safecenter.support.SafeCenterService.a(r3)     // Catch:{ Exception -> 0x001f, all -> 0x001c }
                    r0 = r1
                L_0x0014:
                    return
                L_0x0015:
                    r2 = move-exception
                L_0x0016:
                    r2.printStackTrace()     // Catch:{ all -> 0x001a }
                    goto L_0x0014
                L_0x001a:
                    r3 = move-exception
                L_0x001b:
                    throw r3
                L_0x001c:
                    r3 = move-exception
                    r0 = r1
                    goto L_0x001b
                L_0x001f:
                    r2 = move-exception
                    r0 = r1
                    goto L_0x0016
                */
                throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.support.SafeCenterService.AnonymousClass3.run():void");
            }
        }.start();
    }

    class c extends Thread {
        c() {
        }

        public final void run() {
            SafeCenterService.this.j = Executors.newFixedThreadPool(5);
            try {
                SafeCenterService.this.k = new LocalServerSocket(SafeCenterService.this.a);
                while (true) {
                    SafeCenterService.this.j.execute(new b(SafeCenterService.this.k.accept()));
                }
            } catch (IOException e) {
                e.printStackTrace();
                a();
            } catch (Throwable th) {
                a();
                throw th;
            }
        }

        private void a() {
            if (SafeCenterService.this.k != null) {
                try {
                    SafeCenterService.this.k.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            SafeCenterService.this.j.shutdown();
        }
    }

    class b implements Serializable, Runnable {
        boolean a = true;
        private LocalSocket c = null;

        b(LocalSocket socket) {
            this.c = socket;
        }

        public final void run() {
            SafeCenterService.f(SafeCenterService.this);
            if (this.c != null) {
                while (this.a) {
                    try {
                        if (this.c.getInputStream().available() > 0) {
                            SafeCenterService.this.excFromClient(this.c);
                            this.a = false;
                        }
                    } catch (IOException e) {
                    }
                }
            }
        }
    }

    public static void setBackValue(String backValueName, int value) {
        m.put(backValueName, Integer.valueOf(value));
    }

    public static int getBackValue(String backValueName) {
        if (m.get(backValueName) == null) {
            return 0;
        }
        return m.get(backValueName).intValue();
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x0151 A[SYNTHETIC, Splitter:B:44:0x0151] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0156 A[Catch:{ IOException -> 0x015e }] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x023e A[SYNTHETIC, Splitter:B:65:0x023e] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0243 A[Catch:{ IOException -> 0x02eb }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void excFromClient(android.net.LocalSocket r28) {
        /*
        // Method dump skipped, instructions count: 759
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.support.SafeCenterService.excFromClient(android.net.LocalSocket):void");
    }

    public int getBackValue(int uid, int pid) {
        List<AppInfo> appList;
        String str;
        try {
            AppDatabase database = new AppDatabase(getApplicationContext());
            if (!this.g.getBoolean("tariff", true) && (pid == 8 || pid == 11)) {
                return 0;
            }
            if (!(this.g.getBoolean(Const.KEY_IS_PROTECT_PEEP_ON_SAFE_PROTECT, true) || pid == 8 || pid == 11) || (appList = b.get(Integer.valueOf(uid))) == null) {
                return 0;
            }
            if (pid == 8 || pid == 11) {
                if (database.isAppTrusted(uid, AppDatabase.DB_APP_SENDMESSAGE)) {
                    return 0;
                }
            } else if (database.isAppTrusted(uid, AppDatabase.PERM_TYPE_PRIVCY)) {
                return 0;
            }
            for (AppInfo info : appList) {
                String str2 = info.appType;
                switch (pid) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 9:
                    case 44:
                    case 45:
                        str = AppDatabase.PERM_TYPE_PRIVCY;
                        break;
                    case 5:
                    case 48:
                        str = "location";
                        break;
                    case 6:
                    case 7:
                    case 12:
                        str = AppDatabase.PERM_TYPE_DEVICE;
                        break;
                    case 8:
                        str = AppDatabase.DB_APP_CALL;
                        break;
                    case 11:
                        str = AppDatabase.DB_APP_SENDMESSAGE;
                        break;
                    case 13:
                        str = AppDatabase.PERM_TYPE_INSTALLAPP;
                        break;
                    default:
                        str = "";
                        break;
                }
                if (str2.equals(str)) {
                    if (info.selected != 0) {
                        return info.selected == 2 ? 2 : 1;
                    }
                    return 0;
                }
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:11:0x000d */
    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: byte[] */
    /* JADX DEBUG: Multi-variable search result rejected for r3v1, resolved type: byte */
    /* JADX DEBUG: Multi-variable search result rejected for r3v2, resolved type: byte */
    /* JADX DEBUG: Multi-variable search result rejected for r3v4, resolved type: byte */
    /* JADX DEBUG: Multi-variable search result rejected for r3v5, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3 */
    public int bytesToInt(byte[] intByte) {
        int fromByte = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            fromByte += ((intByte[i2] < 0 ? intByte[i2] + 256 : intByte[i2]) == true ? 1 : 0) << (i2 * 8);
        }
        return fromByte;
    }

    public void onDestroy() {
        unregisterReceiver(this.h);
        startService(new Intent(this, SafeCenterService.class));
        super.onDestroy();
    }

    public static String getChargeLogs(Context context) {
        SafeLog log = Const.lastSafeLogs.get("tariff");
        if (log == null) {
            return "";
        }
        String content = AppUtil.getDescriptionByPid(context, Integer.valueOf(log.type).intValue());
        PackageManager pm = context.getPackageManager();
        try {
            return context.getString(R.string.forbid) + ((Object) pm.getApplicationInfo(log.packageName, 0).loadLabel(pm)) + content;
        } catch (Exception e2) {
            e2.printStackTrace();
            return context.getString(R.string.forbid) + log.appName + content;
        }
    }

    public static String getPrivacyLogs(Context context) {
        String content;
        SafeLog log = Const.lastSafeLogs.get(AppDatabase.PERM_TYPE_PRIVCY);
        if (log == null) {
            return "";
        }
        if (log.logSelected == 1) {
            content = context.getString(R.string.when_calling) + AppUtil.getDescriptionByPid(context, Integer.valueOf(log.type).intValue());
        } else {
            content = AppUtil.getDescriptionByPid(context, Integer.valueOf(log.type).intValue());
        }
        PackageManager pm = context.getPackageManager();
        try {
            return context.getString(R.string.forbid) + ((Object) pm.getApplicationInfo(log.packageName, 0).loadLabel(pm)) + content;
        } catch (Exception e2) {
            e2.printStackTrace();
            return context.getString(R.string.forbid) + log.appName + content;
        }
    }

    public static String getHarassLogs(Context context) {
        String harass_call_des = harass_call_count + context.getString(R.string.harass_call);
        String harass_sms_des = harass_msg_count + context.getString(R.string.harass_message);
        if (harass_call_count != 0 && harass_msg_count != 0) {
            return context.getString(R.string.intercept) + harass_call_des + context.getString(R.string.comma) + harass_sms_des;
        }
        if (harass_call_count > 0) {
            SafeLog log = Const.lastSafeLogs.get(AppDatabase.HARASS_CALL);
            if (log == null) {
                return context.getString(R.string.intercept) + harass_call_des;
            }
            if (log.fromtype != 3) {
                return context.getString(R.string.intercept) + harass_call_des;
            }
            return String.format(context.getString(R.string.number_onring), log.number);
        } else if (harass_msg_count > 0) {
            return context.getString(R.string.intercept) + harass_sms_des;
        } else {
            return "";
        }
    }

    /* access modifiers changed from: private */
    public class d {
        long a;
        int b;
        int c;
        int d;

        public d(long time, int pid, int uid, int action) {
            this.a = time;
            this.b = pid;
            this.c = uid;
            this.d = action;
        }
    }

    class a extends BroadcastReceiver {
        a() {
        }

        public final void onReceive(Context context, Intent intent) {
            InterceptUtils.adApkInsert(intent.getStringExtra(AppDatabase.APP_PKG_NAME), context);
        }
    }
}
