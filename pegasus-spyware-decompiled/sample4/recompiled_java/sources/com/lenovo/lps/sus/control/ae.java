package com.lenovo.lps.sus.control;

import android.content.Context;
import android.widget.Toast;
import com.lenovo.lps.sus.EventType;
import com.lenovo.lps.sus.SUSListener;
import com.lenovo.lps.sus.b.e;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;

public final class ae {
    private static int a = 0;
    private static v b = null;
    private static SUSListener c = null;
    private static Boolean d = false;
    private static Boolean e = false;
    private static Boolean f = false;
    private static Boolean g = false;
    private static String h = null;
    private static long i = 0;
    private static long j = 0;

    public static void a(int i2) {
        c.a(i2);
    }

    public static void a(EventType eventType) {
        if (b != null && eventType != null) {
            b.a(eventType);
        }
    }

    public static void a(SUSListener sUSListener) {
        c = sUSListener;
        if (b != null) {
            b.a(sUSListener);
        }
    }

    public static void a(String str) {
        c.b(str);
    }

    public static void a(String str, long j2, long j3) {
        h = str;
        i = j2;
        j = j3;
        if (b != null) {
            b.a(str, j2, j3);
        }
    }

    public static void a(boolean z) {
        d = Boolean.valueOf(z);
    }

    public static boolean a() {
        return 1 == j();
    }

    public static boolean a(Context context, ap apVar, e eVar) {
        String b2;
        String b3;
        if (context == null) {
            System.out.println("The context is illegal!");
            i.b(c.b, "The context is illegal!");
            return false;
        }
        i.a(c.b, String.format("SUS input params: context=%s; updateTransactionType=%s", String.valueOf(context), String.valueOf(apVar)));
        if (!c.o(context)) {
            System.out.println("Network unavailable!");
            i.a(c.b, "Network unavailable!");
            if (a()) {
                if (!c.u() && c.c() && !f() && !g()) {
                    c.e(false);
                }
            } else if (c.c() && !f() && !g() && context != null && (b3 = c.b(context, "SUS_MSG_FAIL_NETWORKUNAVAILABLE")) != null && b3.length() > 0) {
                Toast.makeText(context, b3, 1).show();
            }
            if (c == null) {
                return false;
            }
            c.onUpdateNotification(EventType.SUS_FAIL_NETWORKUNAVAILABLE, "Network unavailable!");
            return false;
        } else if (d.booleanValue() && !c.k(context)) {
            System.out.println("isn't wlan connect");
            i.a(c.b, "isn't wlan connect");
            if (c.c() && !f() && !g() && context != null && (b2 = c.b(context, "SUS_MSG_FAIL_NOWLANCONNECTED")) != null && b2.length() > 0) {
                Toast.makeText(context, b2, 1).show();
            }
            if (c == null) {
                return false;
            }
            c.onUpdateNotification(EventType.SUS_FAIL_NOWLANCONNECTED, "Please open the WLAN!");
            return false;
        } else if (!i()) {
            System.out.println("Update pengding!");
            i.a(c.b, "Update pengding!");
            if (!c.u() && c.c() && !f() && !g()) {
                c.e(false);
            }
            if (c == null) {
                return false;
            }
            c.onUpdateNotification(EventType.SUS_WARNING_PENDING, "Update pengding!");
            return false;
        } else {
            b = new v(context);
            if (b == null) {
                System.out.println("UpdateTransaction fail!");
                i.b(c.b, "UpdateTransaction fail!");
                b();
                return false;
            }
            a(c);
            a(h, i, j);
            b.a(apVar, eVar);
            return true;
        }
    }

    public static void b() {
        i.a(c.b, "SUSController finish entry");
        if (a()) {
            k();
        }
        if (b != null) {
            i.a(c.b, "SUSController call dismissDialog");
            if (c.w()) {
                am.c();
            } else if (c.v()) {
                SUSCustdefNotificationActivity.b();
            } else {
                SUSNotificationActivity.a();
            }
            i.a(c.b, "SUSController call myUpdateTransaction finish");
            b.a();
            b = null;
        }
        i.a(c.b, "SUSController finish end");
    }

    public static void b(String str) {
        c.c(str);
    }

    public static void b(boolean z) {
        i.a(z);
    }

    public static void c(boolean z) {
        c.a(z);
    }

    public static boolean c() {
        return d.booleanValue();
    }

    public static void d() {
        c.h(true);
        e = true;
    }

    public static void d(boolean z) {
        e = Boolean.valueOf(z);
    }

    public static void e() {
        c.h(false);
        e = false;
    }

    public static void e(boolean z) {
        f = Boolean.valueOf(z);
    }

    public static void f(boolean z) {
        g = Boolean.valueOf(z);
    }

    public static boolean f() {
        return e.booleanValue();
    }

    public static void g(boolean z) {
        c.f(z);
    }

    public static boolean g() {
        return f.booleanValue();
    }

    public static void h(boolean z) {
        c.g(z);
    }

    public static boolean h() {
        return g.booleanValue();
    }

    public static void i(boolean z) {
        c.c(z);
    }

    public static boolean i() {
        if (a > 0) {
            return false;
        }
        if (a == 0) {
            a++;
            return true;
        }
        System.out.println("updateTransactionRefNum < 0 !!!");
        return false;
    }

    public static int j() {
        return a;
    }

    public static boolean k() {
        if (a > 0) {
            a--;
            return true;
        }
        System.out.println("updateTransactionRefNum <= 0 !!!");
        return false;
    }

    public static Context l() {
        if (b != null) {
            return b.u();
        }
        return null;
    }
}
