package com.lenovo.safecenter.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class MMSCheckReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Log.i("con", "MMSCheckReceiver begin" + intent.getAction());
    }
}
