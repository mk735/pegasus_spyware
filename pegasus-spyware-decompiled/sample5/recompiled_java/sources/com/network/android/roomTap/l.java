package com.network.android.roomTap;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class l extends BroadcastReceiver {
    l() {
    }

    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction() != null) {
            k.k.post(new m(this, intent, context));
        }
    }
}
