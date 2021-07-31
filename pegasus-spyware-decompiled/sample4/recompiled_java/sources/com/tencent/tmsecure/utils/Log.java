package com.tencent.tmsecure.utils;

import tms.hd;
import tms.hj;
import tms.hk;

public final class Log {
    static final String a = "QQPimSecure";
    static final String b = "/sdcard/qqpimsecure_debug.txt";
    private static boolean c = true;
    private static hd d = new hj();

    public static void e(String str, Object obj) {
        if (obj == null) {
            android.util.Log.e(str, "log message is null");
        } else if (obj instanceof Exception) {
            ((Exception) obj).printStackTrace();
        } else {
            d.b(str, obj.toString());
        }
    }

    public static void f(String str, Object obj) {
        if (obj == null) {
            android.util.Log.e(str, "log message is null");
        } else {
            d.c(str, obj.toString());
        }
    }

    public static void i(String str, Object obj) {
        if (obj == null) {
            android.util.Log.e(str, "log message is null");
        } else {
            d.a(str, obj.toString());
        }
    }

    public static boolean isEnable() {
        return c;
    }

    public static void setLogEnable(boolean z) {
        c = z;
        if (c) {
            d = new hj();
        } else {
            d = new hk();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x003d A[SYNTHETIC, Splitter:B:18:0x003d] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0053 A[SYNTHETIC, Splitter:B:25:0x0053] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0066 A[SYNTHETIC, Splitter:B:31:0x0066] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x006f A[SYNTHETIC, Splitter:B:36:0x006f] */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void writeLog(java.lang.String r4) {
        /*
        // Method dump skipped, instructions count: 136
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tmsecure.utils.Log.writeLog(java.lang.String):void");
    }
}
