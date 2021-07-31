package com.lenovo.safecenter.antivirus.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

public class BootBroadcastReceiver extends BroadcastReceiver {
    private Handler a = new Handler() {
        /* class com.lenovo.safecenter.antivirus.support.BootBroadcastReceiver.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            int i = msg.what;
        }
    };

    public void onReceive(Context context, Intent intent) {
        Log.d("tt", getClass().getName() + "== " + intent.getAction());
        if (intent.getAction().equals("action.forcestop.antivirus")) {
            this.a.sendEmptyMessageDelayed(1, 100);
        } else if (!intent.getAction().equals("action.antivirus.init")) {
        } else {
            if (!context.getSharedPreferences("antivirus", 0).getBoolean("hasInitialized", false)) {
                context.startService(new Intent(context, InitService.class));
            } else {
                this.a.sendEmptyMessageDelayed(1, 100);
            }
        }
    }
}
