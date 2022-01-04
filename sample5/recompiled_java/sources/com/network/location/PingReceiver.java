package com.network.location;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.network.android.android.monitor.AppServicePinger;
import com.network.android.c.a.a;

public class PingReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            a.a("PingReceiver onReceive action: " + action);
            try {
                a.a("OnAlarmReceiver dontKill");
                context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, PingReceiver.class), 1, 1);
            } catch (Throwable th) {
                a.a("dontKill - " + th.getMessage(), th);
            }
            String stringExtra = intent.getStringExtra("commandAck");
            int intExtra = intent.getIntExtra("counter", 1);
            a.a("PingReceiver onReceive commandAck: " + stringExtra);
            a.a("PingReceiver onReceive commandAck: " + intExtra);
            Intent intent2 = new Intent(context, AppServicePinger.class);
            intent2.setAction(action);
            intent2.putExtra("commandAck", stringExtra);
            intent2.putExtra("counter", intExtra);
            context.startService(intent2);
        } catch (Throwable th2) {
            a.a("PingReceiver onReceive - " + th2.getMessage(), th2);
        }
    }
}
