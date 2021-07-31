package com.lenovo.lps.sus.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.lenovo.lps.reaper.sdk.AnalyticsTracker;

public final class a {
    public static final String a = "SUS_REAPER";
    public static final String b = "SUS_REAPER_ENABLEFLAG";
    private static boolean c = false;
    private static boolean d = false;
    private static boolean e = false;

    public static void a() {
        if (d && !c) {
            if (!e) {
                AnalyticsTracker.getInstance().setParam(5, "SPECIAL_TOKEN", "BIYZAZFWBJ6I");
            }
            AnalyticsTracker.getInstance().trackEvent("SUSInfo", "AbortUpdateByUserSetting", c.c, 0);
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        if (context != null) {
            c = a(context);
            if (c) {
                d = false;
            } else {
                d = b(context);
            }
        }
    }

    public static void a(Context context, boolean z) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences(a, 0).edit();
            edit.putBoolean(b, z);
            edit.commit();
        }
    }

    public static void a(String str) {
        if (d && !c) {
            Throwable th = new Throwable(str);
            if (!e) {
                AnalyticsTracker.getInstance().setParam(5, "SPECIAL_TOKEN", "BIYZAZFWBJ6I");
            }
            AnalyticsTracker.getInstance().trackThrowable(th);
        }
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences(a, 0).getBoolean(b, false);
    }

    public static void b() {
        if (d && !c) {
            if (!e) {
                AnalyticsTracker.getInstance().setParam(5, "SPECIAL_TOKEN", "BIYZAZFWBJ6I");
            }
            AnalyticsTracker.getInstance().trackEvent("SUSInterface", "menu_start", c.c, 0);
        }
    }

    private static boolean b(Context context) {
        boolean z = false;
        e = false;
        boolean d2 = c.d(context);
        i.a(c.b, "isHasAnalyticSDK=" + d2);
        try {
            Class<?> cls = Class.forName("com.lenovo.lps.reaper.sdk.AnalyticsTracker");
            if (cls != null) {
                if (cls.getMethod("isTrackerInitialized", new Class[0]) != null) {
                    z = AnalyticsTracker.getInstance().isTrackerInitialized();
                    i.a(c.b, "Reapersdk init by app, flag=" + z);
                }
                if (!z && d2) {
                    AnalyticsTracker.getInstance().initialize(context);
                    i.a(c.b, "execute AnalyticsTracker.getInstance().initialize()");
                    if (cls.getMethod("isTrackerInitialized", new Class[0]) != null) {
                        z = AnalyticsTracker.getInstance().isTrackerInitialized();
                        if (z) {
                            e = true;
                        }
                        i.a(c.b, "Reapersdk init by sus, isTrackerInitialized flag=" + z);
                    }
                }
            }
        } catch (Exception e2) {
        }
        return z;
    }

    public static void c() {
        if (d && !c) {
            if (!e) {
                AnalyticsTracker.getInstance().setParam(5, "SPECIAL_TOKEN", "BIYZAZFWBJ6I");
            }
            AnalyticsTracker.getInstance().trackEvent("SUSQueryResult", c.S, c.c, 0);
        }
    }

    public static void d() {
        if (d && !c) {
            if (!e) {
                AnalyticsTracker.getInstance().setParam(5, "SPECIAL_TOKEN", "BIYZAZFWBJ6I");
            }
            AnalyticsTracker.getInstance().trackEvent("UserAction", "NewVersionPrompt_UserSetting", c.c, 0);
        }
    }

    public static void e() {
        if (d && !c) {
            if (!e) {
                AnalyticsTracker.getInstance().setParam(5, "SPECIAL_TOKEN", "BIYZAZFWBJ6I");
            }
            AnalyticsTracker.getInstance().trackEvent("UserAction", "SelectButton", c.c, 0);
        }
    }

    public static boolean f() {
        try {
            Class<?> cls = Class.forName("com.lenovo.lps.reaper.sdk.AnalyticsTracker");
            return (cls == null || cls.getMethod("isTrackerInitialized", new Class[0]) == null) ? false : true;
        } catch (ClassNotFoundException | IllegalArgumentException | NoSuchMethodException | SecurityException e2) {
            return false;
        }
    }
}
