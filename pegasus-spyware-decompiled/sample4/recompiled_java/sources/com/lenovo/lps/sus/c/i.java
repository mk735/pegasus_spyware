package com.lenovo.lps.sus.c;

import android.util.Log;

public final class i {
    private static boolean a = false;

    public static void a(String str, String str2) {
        if (a) {
            Log.d(str, str2);
        }
    }

    public static void a(boolean z) {
        a = z;
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.e(str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (a) {
            Log.v(str, str2);
        }
    }
}
