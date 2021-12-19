package com.network.android.agent;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;

public class NetworkReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static Handler f58a;

    static {
        HandlerThread handlerThread = new HandlerThread("networkReciverHandler");
        handlerThread.start();
        f58a = new Handler(handlerThread.getLooper());
    }

    public void onReceive(Context context, Intent intent) {
        f58a.post(new g(this, intent, context));
    }
}
