package com.tencent.tmsecure.utils;

import java.io.File;

public final class Logcat {
    private static final String a = "logcat";

    public static void clear() {
        ScriptHelper.runScript("logcat -c");
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0093 A[SYNTHETIC, Splitter:B:25:0x0093] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a0  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00c4 A[SYNTHETIC, Splitter:B:44:0x00c4] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00d0 A[SYNTHETIC, Splitter:B:50:0x00d0] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized java.util.ArrayList<java.lang.String> filter(java.lang.String r10, java.lang.String r11, java.lang.String... r12) {
        /*
        // Method dump skipped, instructions count: 247
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tmsecure.utils.Logcat.filter(java.lang.String, java.lang.String, java.lang.String[]):java.util.ArrayList");
    }

    public static void redirect(File file) {
        ScriptHelper.runScript("logcat -f " + file.toString());
    }
}
