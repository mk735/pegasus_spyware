package com.lenovo.safecenter.broadcast;

import android.app.Service;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.IBinder;
import com.lenovo.safecenter.R;
import java.io.IOException;

public class AlarmService extends Service {
    private MediaPlayer a;
    private AudioManager b;
    private boolean c = false;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        this.a = MediaPlayer.create(this, (int) R.raw.alarm);
        this.b = (AudioManager) getSystemService("audio");
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        this.c = true;
        new Thread() {
            /* class com.lenovo.safecenter.broadcast.AlarmService.AnonymousClass1 */

            public final void run() {
                while (AlarmService.this.c) {
                    AlarmService.this.b.setStreamVolume(3, AlarmService.this.b.getStreamMaxVolume(3), 0);
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }.start();
        if (this.a != null) {
            this.a.stop();
            try {
                this.a.prepare();
            } catch (IOException | IllegalStateException e) {
            }
            this.a.setLooping(true);
            this.a.start();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.a != null) {
            this.a.stop();
            this.a.release();
        }
        this.c = false;
    }
}
