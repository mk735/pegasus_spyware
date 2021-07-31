package com.tendcloud.tenddata;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;

public final class TCAgent {
    private static final int A;
    private static final int B;
    private static long C = 0;
    private static final int D;
    private static final int E;
    private static final int F;
    private static final int G;
    private static volatile boolean H = i;
    private static String I = h;
    private static boolean J = i;
    private static Context K;
    private static String L;
    private static String M;
    private static long N;
    private static boolean O = i;
    private static int P = 0;
    private static boolean Q = i;
    protected static final int a;
    protected static final int b;
    protected static final int c;
    protected static final int d;
    protected static final int e;
    static Long[][] f;
    static boolean g;
    static final String h;
    static final boolean i;
    static int j = 0;
    private static final String k;
    private static final String l;
    private static final String m;
    private static final String n;
    private static final String o;
    private static final String p;
    private static final String q;
    private static final String r;
    private static final String s;
    private static final String t;
    private static final String u;
    private static final String v;
    private static final String w;
    private static final long x;
    private static final int y;
    private static final int z;

    static {
        p();
    }

    private static String a(Bundle bundle, String str) {
        for (String str2 : bundle.keySet()) {
            if (str2.equalsIgnoreCase(str)) {
                return String.valueOf(bundle.get(str));
            }
        }
        return "";
    }

    static void a() {
        u();
        f = null;
    }

    public static void a(int i2) {
        j = i2;
    }

    public static void a(int i2, long j2) {
        Message obtain = Message.obtain(c.b(), i2);
        Handler b2 = c.b();
        b2.removeMessages(i2);
        b2.sendMessageDelayed(obtain, j2);
    }

    static void a(long j2) {
        a(o, j2);
    }

    private static void a(Activity activity, String str, int i2) {
        k.a(new ad(i2, str, activity));
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(android.os.Message r8) {
        /*
        // Method dump skipped, instructions count: 186
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.TCAgent.a(android.os.Message):void");
    }

    static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    static void a(String str) {
        a(m, str);
    }

    private static void a(String str, long j2) {
        PreferenceManager.getDefaultSharedPreferences(K).edit().putLong(str, j2).commit();
    }

    private static void a(String str, String str2) {
        PreferenceManager.getDefaultSharedPreferences(K).edit().putString(str, str2).commit();
    }

    private static void a(StringBuilder sb, StackTraceElement[] stackTraceElementArr, Throwable th, int i2) {
        int i3 = 50;
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length - 1;
        int length2 = stackTraceElementArr.length - 1;
        while (length >= 0 && length2 >= 0 && stackTrace[length].equals(stackTraceElementArr[length2])) {
            length2--;
            length--;
        }
        if (length <= 50) {
            i3 = length;
        }
        sb.append("Caused by : " + th + "\r\n");
        for (int i4 = 0; i4 <= i3; i4++) {
            sb.append("\t" + stackTrace[i4] + "\r\n");
        }
        if (i2 < 5 && th.getCause() != null) {
            a(sb, stackTrace, th, i2 + 1);
        }
    }

    public static void a(boolean z2) {
        g = z2;
    }

    private static long b(String str, long j2) {
        return PreferenceManager.getDefaultSharedPreferences(K).getLong(str, j2);
    }

    private static String b(String str, String str2) {
        return PreferenceManager.getDefaultSharedPreferences(K).getString(str, str2);
    }

    static void b(long j2) {
        a(p, j2);
    }

    static void b(String str) {
        a(n, str);
    }

    public static void b(Throwable th) {
        if (H) {
            a aVar = new a();
            aVar.c = System.currentTimeMillis();
            aVar.d = c(th);
            while (th.getCause() != null) {
                th = th.getCause();
            }
            StackTraceElement[] stackTrace = th.getStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append(th.getClass().getName()).append(":");
            int i2 = 0;
            while (i2 < 3 && i2 < stackTrace.length) {
                sb.append(stackTrace[i2].toString()).append(":");
                i2++;
            }
            aVar.e = u.b(sb.toString());
            c.b().sendMessage(Message.obtain(c.b(), 4, aVar));
        }
    }

    static void b(boolean z2) {
        a(l, z2 ? 1 : 0);
    }

    public static boolean b() {
        if (System.currentTimeMillis() / 86400000 != b(u, 0)) {
            return true;
        }
        return i;
    }

    private static boolean b(Message message) {
        boolean z2;
        String str = (String) message.obj;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        long h2 = h();
        long l2 = l();
        long j2 = l2 > h2 ? l2 : h2;
        long j3 = j2 - h2;
        if (j3 < 500) {
            j3 = -1000;
        }
        String g2 = g();
        if (currentTimeMillis - j2 > 30000) {
            if (!TextUtils.isEmpty(M)) {
                q.a(M, ((int) j3) / y);
            }
            M = UUID.randomUUID().toString();
            a(M);
            a(currentTimeMillis);
            long i2 = i();
            long j4 = currentTimeMillis - i2;
            if (0 == i2) {
                j4 = 0;
            }
            b(currentTimeMillis);
            q.a(M, currentTimeMillis, j4, u.a() ? 1 : -1);
            g2 = "";
            z2 = true;
        } else {
            z2 = false;
        }
        d(currentTimeMillis);
        b(str);
        N = q.a(M, str, currentTimeMillis, 0, g2, elapsedRealtime);
        return z2;
    }

    protected static Context c() {
        return K;
    }

    private static String c(Throwable th) {
        int i2 = 50;
        StringBuilder sb = new StringBuilder();
        sb.append(th.toString());
        sb.append("\r\n");
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace.length <= 50) {
            i2 = stackTrace.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("\t" + stackTrace[i3] + "\r\n");
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            a(sb, stackTrace, cause, 1);
        }
        return sb.toString();
    }

    static void c(long j2) {
        a(q, j2);
    }

    private static void c(Message message) {
        long currentTimeMillis = System.currentTimeMillis();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (N != -1) {
            q.a(N, elapsedRealtime);
        }
        e(currentTimeMillis);
    }

    public static String d() {
        return L;
    }

    static void d(long j2) {
        a(r, j2);
    }

    private static void d(Message message) {
        a aVar = (a) message.obj;
        q.a(M, aVar.a, aVar.b, aVar.f, aVar.g);
    }

    static void e(long j2) {
        a(s, j2);
    }

    static boolean e() {
        if (b(l, 1) != 0) {
            return true;
        }
        return i;
    }

    static String f() {
        return b(m, (String) null);
    }

    static void f(long j2) {
        a(t, j2);
    }

    static String g() {
        return b(n, "");
    }

    public static synchronized String getDeviceId(Context context) {
        String e2;
        synchronized (TCAgent.class) {
            u.a = context.getApplicationContext();
            e2 = u.e();
        }
        return e2;
    }

    static long h() {
        return b(o, 0);
    }

    static long i() {
        return b(p, 0);
    }

    public static void init(Context context) {
        K = context.getApplicationContext();
        try {
            Bundle bundle = K.getPackageManager().getApplicationInfo(K.getPackageName(), 128).metaData;
            String a2 = a(bundle, v);
            String a3 = a(bundle, w);
            if (TextUtils.isEmpty(a2)) {
                Log.e(h, "TD_APP_ID not found in AndroidManifest.xml!");
                return;
            }
            Log.i(h, "TD_APP_ID in AndroidManifest.xml is:" + a2 + ".");
            Log.i(h, "TD_CHANNEL_ID in AndroidManifest.xml is:" + a3 + ".");
            if (a3 == null) {
                a3 = h;
            }
            init(context, a2, a3);
        } catch (Throwable th) {
            Log.e(h, "Failed to load meta-data", th);
        }
    }

    public static synchronized void init(Context context, String str, String str2) {
        synchronized (TCAgent.class) {
            if (!H) {
                K = context.getApplicationContext();
                u.a = K;
                if (!u.a("android.permission.INTERNET")) {
                    Log.e(h, "stop working...application do not have permission to send data, you must add <uses-permission android:name=\"android.permission.INTERNET\"/> to your AndroidManifest.xml.");
                } else {
                    L = str;
                    I = str2;
                    if (Build.VERSION.SDK_INT >= 14 && (context instanceof Activity)) {
                        ((Activity) context).getApplication().registerActivityLifecycleCallbacks(new ae());
                        Q = true;
                    }
                    k.a(new ac());
                }
                H = true;
            }
        }
    }

    static long j() {
        return b(q, 0);
    }

    static long k() {
        return b(r, 0);
    }

    static long l() {
        return b(s, 0);
    }

    static long m() {
        return b(t, 0);
    }

    static j n() {
        if (K == null) {
            return null;
        }
        j jVar = new j();
        jVar.a = K.getPackageName();
        jVar.b = u.t();
        jVar.c = u.s();
        jVar.d = j();
        jVar.e = k;
        jVar.f = I;
        jVar.h = u.w();
        jVar.i = u.x();
        return jVar;
    }

    static y o() {
        Location location = null;
        if (K == null) {
            return null;
        }
        y yVar = new y();
        yVar.a = u.j();
        yVar.b = u.k();
        List<Location> r2 = u.r();
        StringBuffer stringBuffer = new StringBuffer();
        for (Location location2 : r2) {
            stringBuffer.append(location2.getLatitude()).append(',').append(location2.getLongitude()).append(',').append(location2.getAltitude()).append(',').append(location2.getTime()).append(',').append(location2.getAccuracy()).append(',').append(location2.getBearing()).append(',').append(location2.getSpeed()).append(',').append((int) ((short) location2.getProvider().hashCode())).append(':');
            if (location != null && location2.getTime() <= location.getTime()) {
                location2 = location;
            }
            location = location2;
        }
        f fVar = new f();
        if (location != null) {
            fVar.b = location.getLatitude();
            fVar.a = location.getLongitude();
        }
        yVar.c = fVar;
        yVar.d = Build.CPU_ABI;
        yVar.e = u.C();
        yVar.f = u.A();
        yVar.g = u.p();
        yVar.h = u.B();
        yVar.i = ((TimeZone.getDefault().getRawOffset() / y) / 60) / 60;
        yVar.j = "Android+" + Build.VERSION.RELEASE;
        yVar.k = u.b() ? 0 : 1;
        yVar.l = u.D();
        yVar.o = u.m();
        yVar.n = u.n();
        yVar.p = stringBuffer.toString();
        yVar.t = u.i();
        v q2 = u.q();
        yVar.u = q2.c;
        yVar.v = q2.d;
        yVar.w = q2.e;
        return yVar;
    }

    public static void onError(Context context, Throwable th) {
        if (th != null) {
            k.a(new aa(th));
        }
    }

    public static void onEvent(Context context, String str) {
        onEvent(context, str, "");
    }

    public static void onEvent(Context context, String str, String str2) {
        onEvent(context, str, str2, null);
    }

    public static void onEvent(Context context, String str, String str2, Map map) {
        k.a(new x(str, str2, map));
    }

    public static void onPageEnd(Activity activity, String str) {
        a(activity, str, 2);
    }

    public static void onPageStart(Activity activity, String str) {
        a(activity, str, 1);
    }

    public static void onPause(Activity activity) {
        if (!Q) {
            onPageEnd(activity, activity.getLocalClassName());
        }
    }

    public static void onResume(Activity activity) {
        if (!Q) {
            onPageStart(activity, activity.getLocalClassName());
        }
    }

    public static void p() {
        Thread.setDefaultUncaughtExceptionHandler(new i());
    }

    public static void setReportUncaughtExceptions(boolean z2) {
        J = z2;
    }

    private static void u() {
        a(u, System.currentTimeMillis() / 86400000);
    }
}
