package com.network.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class CallReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        try {
            intent.getAction().equals("android.intent.action.ANSWER");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
