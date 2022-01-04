package com.tencent.tmsecure.module.plugin;

import android.app.Activity;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.TMSService;

public abstract class AbsPluginControler {
    private BaseServiceConnection a = new BaseServiceConnection(AbsPluginControler.class);

    public final IBinder bindService(Class<? extends BaseService> cls) {
        return TMSService.bindService(cls, this.a);
    }

    public final void startActivity(Activity activity, PluginIntent pluginIntent) {
        startActivityForResult(activity, -1, pluginIntent);
    }

    public abstract void startActivityForResult(Activity activity, int i, PluginIntent pluginIntent);

    public final BaseService startService(BaseService baseService) {
        return TMSService.startService(baseService);
    }

    public final void stopService(BaseService baseService) {
        TMSService.stopService((Class<? extends BaseService>) baseService.getClass());
    }

    public final void stopService(Class<? extends BaseService> cls) {
        TMSService.stopService(cls);
    }

    public final void unBindService(Class<? extends BaseService> cls) {
        TMSService.unBindService(cls, this.a);
        this.a = null;
    }
}
