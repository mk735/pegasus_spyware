package tms;

import com.tencent.tmsecure.module.netsetting.NetSettingManager;

final class er implements Runnable {
    final /* synthetic */ NetSettingManager a;
    final /* synthetic */ en b;

    er(en enVar, NetSettingManager netSettingManager) {
        this.b = enVar;
        this.a = netSettingManager;
    }

    public final void run() {
        this.a.setWifiEnabled(false);
        en.b = true;
    }
}
