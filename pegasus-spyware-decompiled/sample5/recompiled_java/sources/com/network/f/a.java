package com.network.f;

import a.a.a.a.a.b;
import a.a.a.a.a.d;
import a.a.a.a.a.e;
import a.a.a.a.a.h;
import a.a.a.a.a.n;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.network.android.j;
import com.network.media.CoreReceiver;
import java.util.concurrent.locks.ReentrantLock;

public final class a implements a.a.a.a.a.a {
    public static boolean b = false;
    public static int c = 0;
    public static final ReentrantLock d = new ReentrantLock();
    private static int e = 1;
    private static int f = 4;
    private static int g = 8;

    /* renamed from: a  reason: collision with root package name */
    public int f142a = -1;
    private b h;
    private String i;
    private d j;
    private String k;
    private int l;
    private String m;
    private e n;
    private String o;
    private String p;
    private Context q;
    private int r = 250;
    private int s = 5;

    public a(String str, String str2, String str3, String str4, String str5, Context context) {
        try {
            com.network.android.c.a.a.a("ServerPushListener New brokerUrl: " + str + " clientId:" + str2 + " topicName:" + str3 + " user:" + str4 + " password:" + str5);
            this.i = str;
            this.k = str3;
            this.l = 1;
            this.m = str2;
            this.o = str4;
            this.p = str5;
            this.q = context;
            this.r = com.network.b.b.E();
            this.s = this.r / 60;
            if (this.s == 0) {
                this.s = 1;
            }
            com.network.android.c.a.a.a("ServerPushListener keepAlive " + this.r);
            com.network.android.c.a.a.a("ServerPushListener keepAliveMinutes " + this.s);
            this.j = new d();
            this.j.j();
            this.j.a(this.o);
            this.j.a(this.p.toCharArray());
            int i2 = this.r * 3;
            this.j.a(i2);
            com.network.android.c.a.a.a("ServerPushListener keepAliveInterval " + i2);
            this.n = new e("/data/data/com.network.android/network_cache/");
            b();
            a(this.k, this.l);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("ServerPushListener - " + th.getMessage(), th);
        }
    }

    private void a(String str, int i2) {
        try {
            int F = com.network.b.b.F();
            com.network.android.c.a.a.a("subscribeUntilSuccess start. times to try to connect: " + F);
            com.network.android.c.a.a.a("subscribeUntilSuccess setting minutesPastFromLastConnectionFailure to 0");
            c = 0;
            for (int i3 = 0; i3 < F; i3++) {
                try {
                    com.network.android.c.a.a.a("subscribeUntilSuccess attemt number: " + i3);
                    try {
                        com.network.android.c.a.a.a("ServerPushListener subscribe start");
                        if (!d.tryLock()) {
                            com.network.android.c.a.a.a("subscribe ServerPushListener subscription lock is locked. returning");
                        } else if (this.h == null) {
                            com.network.android.c.a.a.a("subscribe ServerPushListener serverpushListener is null. returning");
                        } else {
                            com.network.android.c.a.a.a("ServerPushListener subscribe Connected to " + this.i);
                            this.h.a(this.j);
                            com.network.android.c.a.a.a("ServerPushListener subscribe Subscribing to topic \"" + str + "\" qos " + i2);
                            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.q.getSystemService("connectivity")).getActiveNetworkInfo();
                            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                                com.network.android.c.a.a.a("ServerPushListener subscribe subscribe no internet connection. unlocking lock and returning");
                                d.unlock();
                            } else {
                                this.h.a(str, i2);
                                com.network.android.c.a.a.a("subscribe finished. unlocking lock and returning");
                                d.unlock();
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            com.network.android.c.a.a.a("ServerPushListener deleteOldConnectionObject- " + th.getMessage(), th);
                        } finally {
                            b();
                        }
                    }
                    if (this.h.b()) {
                        com.network.android.c.a.a.a("subscribeUntilSuccess successfully connected. returning");
                        b = false;
                        return;
                    }
                    com.network.android.c.a.a.a("subscribeUntilSuccess failed subscribing on attemp: " + i3);
                } catch (Throwable th2) {
                    com.network.android.c.a.a.a("ServerPushListener - subscribeUntilSuccess exception: " + th2.getMessage() + th2);
                }
            }
        } catch (Throwable th3) {
            com.network.android.c.a.a.a("ServerPushListener - subscribeUntilSuccess exception: " + th3.getMessage() + th3);
        }
        b = true;
    }

    private static boolean a(Context context) {
        try {
            com.network.android.c.a.a.a("isMqttAllowed starting");
            if (!com.network.b.b.I()) {
                com.network.android.c.a.a.a("isMqttAllowed we are not supposed to use mqtt. returning false");
                return false;
            }
            int b2 = com.network.b.b.b();
            com.network.android.c.a.a.a("isMqttAllowedAccordingToPhoneConnection allowedConnection: " + b2);
            boolean z = (e & b2) == e;
            boolean z2 = (f & b2) == f;
            boolean z3 = (b2 & g) == g;
            com.network.android.c.a.a.a("isMqttAllowed isAllowedOnCellular: " + z2);
            com.network.android.c.a.a.a("isMqttAllowed isAllowedOnRoaming: " + z3);
            com.network.android.c.a.a.a("isMqttAllowed isAllowedOnWifi: " + z);
            NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
            boolean z4 = false;
            boolean z5 = false;
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getTypeName().equalsIgnoreCase("WIFI") && networkInfo.isConnected()) {
                    com.network.android.c.a.a.a("isMqttAllowed phone is connected via wifi");
                    z5 = true;
                }
                if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                    com.network.android.c.a.a.a("isMqttAllowed phone is connected via cellular");
                    z4 = true;
                }
            }
            if (!z && z5) {
                com.network.android.c.a.a.a("isMqttAllowed wifi not allowed returning false");
                return false;
            } else if (z2 || !z4) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (!z3 && j.a(telephonyManager)) {
                    if (!z || !z5) {
                        com.network.android.c.a.a.a("isMqttAllowed roaming not allowed  returning false");
                        return false;
                    }
                    com.network.android.c.a.a.a("isMqttAllowed roaming not allowed  but we are connected on wifi and it is allowed");
                }
                com.network.android.c.a.a.a("isMqttAllowed finished. returning true");
                return true;
            } else {
                com.network.android.c.a.a.a("isMqttAllowed cellular not allowed returning false");
                return false;
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("isMqttAllowed exception - " + th.getMessage(), th);
            return false;
        }
    }

    private void b() {
        com.network.android.c.a.a.a("ServerPushListener - createNewConnectionObject start");
        try {
            this.h = new b(this.i, this.m, this.n);
            this.h.a(this);
            com.network.android.c.a.a.a("ServerPushListener - createNewConnectionObject end");
        } catch (Throwable th) {
            com.network.android.c.a.a.a("ServerPushListener createNewConnectionObject - " + th.getMessage(), th);
        }
    }

    public final void a() {
        com.network.android.c.a.a.a("ServerPushListener - removeConnection start");
        try {
            this.h.b(this.k);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("ServerPushListener removeConnection- " + th.getMessage(), th);
        }
        try {
            this.h.a();
        } catch (Throwable th2) {
            com.network.android.c.a.a.a("ServerPushListener removeConnection- " + th2.getMessage(), th2);
        }
    }

    @Override // a.a.a.a.a.a
    public final void a(h hVar) {
        try {
            com.network.android.c.a.a.a("ServerPushListener deliveryComplete: " + hVar.a().toString());
        } catch (Throwable th) {
            com.network.android.c.a.a.a("ServerPushListener deliveryComplete - " + th.getMessage(), th);
        }
    }

    @Override // a.a.a.a.a.a
    public final void a(n nVar, a.a.a.a.a.j jVar) {
        try {
            this.f142a = -1;
            String str = new String(jVar.a());
            com.network.android.c.a.a.a("ServerPushListener !!!messageArrived!!!  Topic:\t" + nVar.a() + "  Message:\t" + str + "  QoS:\t" + jVar.d());
            com.network.android.a.b.a(str.getBytes(), this.q, false, null);
            com.network.android.a.b.a(this.q);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("ServerPushListener messageArrived exception! - " + th.getMessage(), th);
        }
    }

    @Override // a.a.a.a.a.a
    public final void a(Throwable th) {
        com.network.android.c.a.a.a("ServerPushListener connectionLost");
        com.network.android.c.a.a.a("ServerPushListener connectionLost - " + th.getMessage(), th);
        if (a(this.q)) {
            com.network.android.c.a.a.a("ServerPushListener connectionLost trying to reconnect");
            CoreReceiver.a(this.q);
        }
    }
}
