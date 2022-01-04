package tms;

import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;

final class eo implements Runnable {
    final /* synthetic */ en a;

    eo(en enVar) {
        this.a = enVar;
    }

    public final void run() {
        ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).setWifiEnabled(false);
        en.b = true;
        en.a(this.a);
    }
}
