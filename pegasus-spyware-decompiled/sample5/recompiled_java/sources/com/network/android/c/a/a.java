package com.network.android.c.a;

import android.util.Log;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f72a = new a();

    public static void a(String str) {
        try {
            Log.i("Jigglypuff", str);
        } catch (Throwable th) {
        }
    }

    public static void a(String str, Throwable th) {
        try {
            Log.e("Jigglypuff", str, th);
        } catch (Throwable th2) {
        }
    }

    public static void b(String str) {
        try {
            Log.e("Jigglypuff", str);
        } catch (Throwable th) {
        }
    }
}
