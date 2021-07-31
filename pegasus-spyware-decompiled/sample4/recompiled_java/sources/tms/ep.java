package tms;

import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;

final class ep implements Runnable {
    final /* synthetic */ en a;

    ep(en enVar) {
        this.a = enVar;
    }

    public final void run() {
        en.c = true;
        en.b(this.a);
        ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(false);
    }
}
