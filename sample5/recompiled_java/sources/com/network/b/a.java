package com.network.b;

import android.content.Context;
import android.os.Build;
import com.network.h.b;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f135a = null;
    private static Boolean b = null;
    private static Boolean c = null;
    private static Integer d = null;
    private static Boolean e = null;
    private static Boolean f = true;

    public static boolean a() {
        if (f != null) {
            com.network.android.c.a.a.a("setStreamSolo: " + f);
            return f.booleanValue();
        }
        c();
        com.network.android.c.a.a.a("setStreamSolo: " + f);
        return f.booleanValue();
    }

    public static boolean a(Context context) {
        if (e == null) {
            e = Boolean.valueOf(b.c(context).contains("system"));
        }
        com.network.android.c.a.a.a("ApplicationProperties isSystemApplication: " + e);
        return e.booleanValue();
    }

    public static Integer b() {
        if (d != null) {
            com.network.android.c.a.a.a("getAudioSource: " + d);
            return d;
        }
        c();
        com.network.android.c.a.a.a("getAudioSource: " + d);
        return d;
    }

    public static void c() {
        try {
            com.network.android.c.a.a.a("readProperties start");
            if (com.network.a.a.b() < 2.3d) {
                b = true;
                c = false;
            } else {
                b = false;
                c = true;
            }
            d = 0;
            f = true;
            f135a = false;
            String lowerCase = Build.MODEL.toLowerCase();
            if (lowerCase.contains("nexus s")) {
                d = 0;
                f135a = false;
            } else if (lowerCase.contains("st15i")) {
                f135a = false;
            } else if (lowerCase.contains("gt-i9100g")) {
                d = 4;
                f135a = true;
            } else if (lowerCase.contains("gt-i9100")) {
                if (com.network.a.a.b() >= 4.0d) {
                    d = 0;
                } else {
                    d = 2;
                }
                f135a = true;
            } else if (lowerCase.contains("gt-i9300")) {
                d = 0;
                f135a = true;
            } else if (lowerCase.contains("i9000")) {
                d = 2;
                f135a = true;
            } else if (lowerCase.contains("shw-m250k")) {
                d = 4;
                f135a = false;
            } else if (lowerCase.contains("hero") || lowerCase.contains("dell streak")) {
                d = 2;
                f135a = true;
            } else if (lowerCase.contains("t989")) {
                d = 4;
                f135a = true;
            } else if (lowerCase.contains("i727")) {
                d = 4;
                f135a = true;
            } else if (lowerCase.contains("incredible 2")) {
                d = 3;
            } else if (lowerCase.contains("r800i")) {
                d = 3;
                f = false;
                f135a = true;
            } else if (lowerCase.contains("x10")) {
                d = 3;
                f135a = true;
            } else if (lowerCase.contains("x710e")) {
                f135a = false;
            } else if (lowerCase.contains("mb860")) {
                f135a = false;
                f135a = true;
            }
            com.network.android.c.a.a.a("readProperties end");
        } catch (Throwable th) {
            com.network.android.c.a.a.a("readProperties- " + th.getMessage(), th);
            f135a = true;
            b = false;
            c = true;
        }
    }
}
