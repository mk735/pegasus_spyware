package tms;

import android.content.Context;
import android.net.ConnectivityManager;
import android.util.Log;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;

final class eq implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ en b;

    eq(en enVar, Context context) {
        this.b = enVar;
        this.a = context;
    }

    public final void run() {
        Log.i(en.c(this.b), "start check");
        if (!((ConnectivityManager) this.a.getSystemService("connectivity")).getNetworkInfo(1).isConnected()) {
            ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).setWifiEnabled(false);
            en.b = true;
        }
    }
}
