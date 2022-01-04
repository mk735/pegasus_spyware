package com.lenovo.lps.sus.control;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.lenovo.lps.sus.b.b;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.c.i;
import com.lenovo.safecenter.database.AppDatabase;

public class SUSReceiver extends BroadcastReceiver {
    private static Handler a = null;

    public static void a(Handler handler) {
        a = handler;
    }

    public void onReceive(Context context, Intent intent) {
        String action;
        if (intent != null && intent.getAction() != null && (action = intent.getAction()) != null && "com.lenovo.lps.sus.ACTION_UPDATE".equals(action)) {
            Bundle extras = intent.getExtras();
            String string = extras.getString("filename");
            String string2 = extras.getString(AppDatabase.APP_PKG_NAME);
            String g = c.g(context);
            if (string2 != null && g != null && g.equals(string2)) {
                Message message = new Message();
                if (a != null) {
                    message.what = b.a(b.SUS_INSTALLAPK_EVENT);
                    message.obj = string;
                    a.sendMessage(message);
                    i.a(c.b, "SUSReceiver sendMessage SUS_INSTALLAPK_EVENT");
                }
            }
        }
    }
}
