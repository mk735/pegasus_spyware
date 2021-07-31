package com.tencent.tmsecure.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public abstract class TMSBootReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        TMSApplication.getApplicaionContext().startService(new Intent(context, TMSApplication.getSecureServiceClass()));
    }
}
