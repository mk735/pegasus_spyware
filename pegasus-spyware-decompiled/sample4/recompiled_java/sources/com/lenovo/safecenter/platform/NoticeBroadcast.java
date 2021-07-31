package com.lenovo.safecenter.platform;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.lenovo.safecenter.utils.MyUtils;

public class NoticeBroadcast extends BroadcastReceiver {
    public static int charge_count = 0;
    public static int privacy_count = 0;
    private Intent a;

    public void onReceive(Context context, Intent intent) {
        this.a = intent;
        if (intent.getAction().equals("com.safecenter.broadcast.openChildMode")) {
            if (intent.getBooleanExtra("state", false)) {
                MyUtils.showNotification(context, 1, 0);
            } else {
                MyUtils.cancelNotification(context, 1);
            }
        } else if (intent.getAction().equals("com.safecenter.broadcast.openGuestMode")) {
            if (this.a.getBooleanExtra("state", false)) {
                MyUtils.showNotification(context, 17, 0);
                MyUtils.cancelNotification(context, 273);
            } else {
                MyUtils.cancelNotification(context, 17);
                MyUtils.showUnreadSmsNotification(context);
            }
        }
        if (intent.getAction().equals("com.lenovo.safecenter.view.DialogActivity")) {
            int type = intent.getIntExtra("style", 0);
            Intent it = new Intent("com.lenovo.safecenter.view.DialogActivity");
            it.setFlags(268435456);
            it.putExtra("style", type);
            context.startActivity(it);
        }
    }
}
