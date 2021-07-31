package com.lenovo.performancecenter.coreui.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.text.format.Formatter;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class MemoryTools {
    private byte[] a = new byte[1024];
    private long b;

    public long getTotalMemory() {
        try {
            this.b = 0;
            FileInputStream is = new FileInputStream("/proc/meminfo");
            int len = is.read(this.a);
            is.close();
            int BUF_LEN = this.a.length;
            int i = 0;
            while (i < len && this.b == 0) {
                if (a(this.a, i, "MemTotal")) {
                    i += 7;
                    this.b = a(this.a, i);
                }
                while (i < BUF_LEN && this.a[i] != 10) {
                    i++;
                }
                i++;
            }
            return this.b;
        } catch (FileNotFoundException e) {
            return 0;
        } catch (IOException e2) {
            Log.e("zzj", "[getTotalMemory] " + e2);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0048 A[SYNTHETIC, Splitter:B:25:0x0048] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0054 A[SYNTHETIC, Splitter:B:31:0x0054] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0060 A[SYNTHETIC, Splitter:B:37:0x0060] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static long a() {
        /*
        // Method dump skipped, instructions count: 114
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.performancecenter.coreui.util.MemoryTools.a():long");
    }

    private static long a(String readLine) {
        try {
            return Long.parseLong(readLine.split("\\s+")[1]);
        } catch (Exception e) {
            return 0;
        }
    }

    private static boolean a(byte[] buffer, int index, String text) {
        int LEN = text.length();
        if (index + LEN >= buffer.length) {
            return false;
        }
        for (int i = 0; i < LEN; i++) {
            if (buffer[index + i] != text.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    private static long a(byte[] buffer, int index) {
        while (index < buffer.length && buffer[index] != 10) {
            if (buffer[index] < 48 || buffer[index] > 57) {
                index++;
            } else {
                while (true) {
                    index++;
                    if (index >= buffer.length || buffer[index] < 48 || buffer[index] > 57) {
                    }
                }
                return (long) Integer.parseInt(new String(buffer, 0, index, index - index));
            }
        }
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0082 A[SYNTHETIC, Splitter:B:29:0x0082] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x008e A[SYNTHETIC, Splitter:B:35:0x008e] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x009a A[SYNTHETIC, Splitter:B:41:0x009a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int getSystemMeminfo() {
        /*
        // Method dump skipped, instructions count: 172
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.performancecenter.coreui.util.MemoryTools.getSystemMeminfo():int");
    }

    public int getSystemMeminfoFree() {
        return (int) ((100 * a()) / getTotalMemory());
    }

    public static String getMemInfo(Context context, int pid) {
        return Formatter.formatFileSize(context, (long) getMemInfoForPid(context, pid));
    }

    public static String getMemInfos(Context context, int[] pids) {
        return Formatter.formatFileSize(context, (long) getMemInfoForPid(context, pids));
    }

    public static int getMemInfoForPid(Context context, int pid) {
        int[] pids = {pid};
        Debug.MemoryInfo[] mem = ((ActivityManager) context.getSystemService("activity")).getProcessMemoryInfo(pids);
        int totalClear = 0;
        if (mem.length > 0) {
            int pidsSize = pids.length;
            for (int i = 0; i < pidsSize; i++) {
                int totalPss = mem[i].getTotalPss();
                if (totalPss > 0) {
                    totalClear += totalPss * 1024;
                }
            }
        }
        return totalClear;
    }

    public static int getMemInfoForPid(Context context, int[] pids) {
        Debug.MemoryInfo[] mem = ((ActivityManager) context.getSystemService("activity")).getProcessMemoryInfo(pids);
        int totalClear = 0;
        if (mem.length > 0) {
            int pidsSize = pids.length;
            for (int i = 0; i < pidsSize; i++) {
                int totalPss = mem[i].getTotalPss();
                if (totalPss > 0) {
                    totalClear += totalPss * 1024;
                }
            }
        }
        return totalClear;
    }
}
