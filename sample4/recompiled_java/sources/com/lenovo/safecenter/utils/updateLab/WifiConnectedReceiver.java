package com.lenovo.safecenter.utils.updateLab;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.safecenter.utils.update.LeSafeDownLoadApk;

public class WifiConnectedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Log.i("wu0wu", "WifiConnectedReceiver intent=" + intent.getAction());
        UpdateLabManager.useWifiUpdateVirusLab(context);
        context.startService(new Intent(context, LeSafeDownLoadApk.class));
    }
}
