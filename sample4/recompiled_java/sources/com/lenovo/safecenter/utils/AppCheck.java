package com.lenovo.safecenter.utils;

import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.app.IThumbnailReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class AppCheck {
    public static final String ACTION_ACTIVITY_SWITCH = "com.lenovo.safecenter.activityswitch";
    public static final String ACTION_ACTIVITY_SWITCH_2 = "com.lenovo.safecenter.activityswitch2";
    private static AppCheck d;
    private static List<String> i;
    public static boolean isRun = true;
    private IActivityManager a;
    private ActivityManager b;
    private Context c;
    private String e = "";
    private String f = "";
    private String g = "";
    private String h = "";

    private AppCheck(Context c2) {
        this.c = c2;
        this.a = ActivityManagerNative.getDefault();
        this.b = (ActivityManager) c2.getSystemService("activity");
    }

    public static AppCheck getDefault(Context c2) {
        if (d == null) {
            d = new AppCheck(c2);
        }
        if (i == null) {
            i = new ArrayList();
            Intent it = new Intent("android.intent.action.MAIN");
            it.addCategory("android.intent.category.HOME");
            for (ResolveInfo resolveInfo : c2.getPackageManager().queryIntentActivities(it, 0)) {
                Log.i("ydp", "mDesktops:  " + resolveInfo.activityInfo.packageName);
                i.add(resolveInfo.activityInfo.packageName);
            }
        }
        return d;
    }

    public void execute() {
        isRun = true;
        new a().start();
    }

    public void cancel() {
        isRun = false;
    }

    /* access modifiers changed from: package-private */
    public class a extends Thread {
        a() {
        }

        public final void run() {
            if (Build.VERSION.SDK_INT < 14) {
                Log.i("AppCheck", "doInBackground-->  <14");
                while (AppCheck.isRun) {
                    try {
                        Thread.sleep(1000);
                        List<ActivityManager.RunningTaskInfo> rti = AppCheck.this.a.getTasks(1, 0, (IThumbnailReceiver) null);
                        if (rti.size() > 0) {
                            AppCheck.this.h = rti.get(0).topActivity.getPackageName();
                            if (!AppCheck.this.f.equals(AppCheck.this.h)) {
                                a("runningTask", AppCheck.this.h, AppCheck.this.f);
                                a("recentTask", AppCheck.this.h, AppCheck.this.f);
                                AppCheck.this.f = AppCheck.this.h;
                            }
                        }
                    } catch (SecurityException e) {
                        Log.i("AppCheck", "doInBackground error:" + e);
                    } catch (RemoteException e2) {
                        e2.printStackTrace();
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                    }
                }
                return;
            }
            Log.i("AppCheck", "doInBackground-->  >14");
            while (AppCheck.isRun) {
                try {
                    Thread.sleep(1000);
                    List<ActivityManager.RunningTaskInfo> rti2 = AppCheck.this.a.getTasks(1, 0, (IThumbnailReceiver) null);
                    if (rti2.size() > 0) {
                        AppCheck.this.h = rti2.get(0).topActivity.getPackageName();
                        if (!AppCheck.this.f.equals(AppCheck.this.h)) {
                            Log.i("AppCheck", "old" + AppCheck.this.f + "------------new:" + AppCheck.this.h);
                            a("runningTask", AppCheck.this.h, AppCheck.this.f);
                            AppCheck.this.f = AppCheck.this.h;
                        }
                    }
                    List<ActivityManager.RecentTaskInfo> recentTasks = AppCheck.this.b.getRecentTasks(1, 1);
                    if (recentTasks != null && recentTasks.size() > 0) {
                        AppCheck.this.e = recentTasks.get(0).baseIntent.getComponent().getPackageName();
                        if (!AppCheck.this.g.equals(AppCheck.this.e)) {
                            a("recentTask", AppCheck.this.e, AppCheck.this.g);
                            AppCheck.this.g = AppCheck.this.e;
                        }
                    }
                } catch (SecurityException e4) {
                    Log.i("AppCheck", "doInBackground error:" + e4);
                } catch (RemoteException e5) {
                    e5.printStackTrace();
                } catch (InterruptedException e6) {
                    e6.printStackTrace();
                }
            }
        }

        private void a(Object... values) {
            String action;
            if (values[0].equals("runningTask")) {
                action = AppCheck.ACTION_ACTIVITY_SWITCH;
            } else {
                action = AppCheck.ACTION_ACTIVITY_SWITCH_2;
            }
            Log.i("AppCheck", values[0] + "------------action:" + action + " " + values[1] + " " + values[2]);
            Intent i = new Intent(action);
            i.putExtra("newPkg", (String) values[1]);
            i.putExtra("oldPkg", (String) values[2]);
            AppCheck.this.c.sendBroadcast(i);
            Settings.System.putString(AppCheck.this.c.getContentResolver(), "safe_input_method", "com.android.inputmethod.latin/.LatinIME");
            Log.i("AppCheck", values[0] + "------------end");
        }
    }
}
