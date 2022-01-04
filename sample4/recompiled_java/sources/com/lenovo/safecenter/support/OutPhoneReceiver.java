package com.lenovo.safecenter.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class OutPhoneReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            context.startService(new Intent(context, SecurityService.class));
        }
    }
}
