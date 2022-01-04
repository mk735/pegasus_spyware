package com.lenovo.safecenter.antivirus.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.utils.WflUtils;

public class alarmreceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Bundle b;
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && (b = intent.getExtras()) != null) {
            NetworkInfo.DetailedState state = ((NetworkInfo) b.get("networkInfo")).getDetailedState();
            Log.i("netcon", "CONNECTIVITY_ACTION==" + state);
            if (state == NetworkInfo.DetailedState.CONNECTED && WflUtils.isNetworkAvailable(context) && !WflUtils.isMobile2GNetwork(context)) {
                long j = 0;
                if (!TextUtils.isEmpty(HttpUtils.execService("scantime", context))) {
                    j = System.currentTimeMillis() - Long.valueOf(HttpUtils.execService("scantime", context)).longValue();
                }
                if (((int) (j / 86400000)) >= 7 && !HttpUtils.isOpen) {
                    context.startService(new Intent(context, SyncDownService.class));
                }
            }
        }
    }
}
