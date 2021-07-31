package tms;

import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;

public class ga implements Runnable {
    final /* synthetic */ PowerSavingConfig a;
    final /* synthetic */ BlueToothHelper b;

    public ga(BlueToothHelper blueToothHelper, PowerSavingConfig powerSavingConfig) {
        this.b = blueToothHelper;
        this.a = powerSavingConfig;
    }

    public void run() {
        if ((this.a.mBlueToothAutoCloseCondition & 2) == 2 || (this.a.mBlueToothAutoCloseCondition & 4) == 4) {
            this.b.a(new eu(this));
        } else if ((this.a.mBlueToothAutoCloseCondition & 8) != 8) {
        } else {
            if (!this.b.a) {
                ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).disableBluetooth();
                en.d = true;
                return;
            }
            BlueToothHelper.e(this.b).postDelayed(BlueToothHelper.d(this.b), 300000);
        }
    }
}
