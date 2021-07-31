package com.lenovo.lps.reaper.sdk.util;

import android.os.Debug;
import android.util.Log;

public class TLog {
    private static boolean a;

    public static void setTestMode(boolean isTestMode) {
        a = isTestMode;
    }

    public static boolean isTestMode() {
        return a;
    }

    public static void v(String tag, String msg) {
        if (a) {
            Log.v(tag, msg);
        }
    }

    public static void i(String tag, String msg) {
        if (a) {
            Log.i(tag, msg);
        }
    }

    public static void d(String tag, String msg) {
        if (a) {
            Log.d(tag, msg);
        }
    }

    public static void w(String tag, String msg) {
        if (a) {
            Log.w(tag, msg);
        }
    }

    public static void e(String tag, String msg) {
        Log.e(tag, msg);
    }

    public static void e(String tag, String msg, Throwable e) {
        if (a) {
            Log.e(tag, msg, e);
        } else {
            Log.e(tag, msg + ", " + e.getClass() + ", " + e.getMessage());
        }
    }

    public static void startMethodTracing(String fileName) {
        if (a) {
            Debug.startMethodTracing(fileName);
        }
    }

    public static void stopMethodTracing() {
        if (a) {
            Debug.stopMethodTracing();
        }
    }
}
