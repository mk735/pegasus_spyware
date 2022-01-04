package com.tencent.tmsecure.module.plugin;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public abstract class AbsPluginService extends Service {
    public IBinder onBind(Intent intent) {
        return null;
    }
}
