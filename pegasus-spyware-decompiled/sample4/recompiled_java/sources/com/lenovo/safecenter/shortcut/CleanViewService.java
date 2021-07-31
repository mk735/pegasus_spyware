package com.lenovo.safecenter.shortcut;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.lenovo.safecenter.utils.TrackEvent;

public class CleanViewService extends Service {
    private ClearnView a;

    public void onCreate() {
        super.onCreate();
        Log.i("CleanViewService", "---> onCreate");
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.i("CleanViewService", "---> onStartCommand");
        TrackEvent.reportClickOneKeyEndTaskInShortcut();
        if (intent != null) {
            try {
                intent.setSourceBounds(intent.getSourceBounds());
            } catch (Exception e) {
                e.printStackTrace();
                Log.i("CleanViewService", "Bounds Exception " + e);
            }
            try {
                this.a = new ClearnView(getApplicationContext());
                ViewManager.addView(getApplicationContext(), intent.getSourceBounds(), this.a);
            } catch (Exception e2) {
                e2.printStackTrace();
                Log.i("CleanViewService", " doClearn Ex!" + e2);
            }
        }
        return super.onStartCommand(intent, flags, startId);
    }

    public IBinder onBind(Intent intent) {
        Log.i("CleanViewService", "---> onBind");
        return null;
    }

    public void onDestroy() {
        Log.i("CleanViewService", "---> onDestroy");
        super.onDestroy();
    }
}
