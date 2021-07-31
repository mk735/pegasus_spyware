package com.tencent.lbsapi.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class h extends BroadcastReceiver {
    final /* synthetic */ QLBSEngine a;

    h(QLBSEngine qLBSEngine) {
        this.a = qLBSEngine;
    }

    public final void onReceive(Context context, Intent intent) {
        QLBSEngine.a(this.a);
    }
}
