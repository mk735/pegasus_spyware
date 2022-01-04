package tms;

import android.bluetooth.BluetoothDevice;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import java.util.ArrayList;
import java.util.Iterator;

final class eu extends BlueToothHelper.BlueToothObserver {
    final /* synthetic */ ga a;

    eu(ga gaVar) {
        this.a = gaVar;
    }

    @Override // com.tencent.tmsecure.module.powersaving.BlueToothHelper.BlueToothObserver
    public final void ScanFinish(ArrayList<BluetoothDevice> arrayList) {
        boolean z;
        if ((this.a.a.mBlueToothAutoCloseCondition & 2) != 2) {
            Iterator<BluetoothDevice> it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getBondState() == 12) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).disableBluetooth();
                en.d = true;
                return;
            }
            this.a.b.k.postDelayed(this.a.b.l, 300000);
        } else if (arrayList.size() == 0) {
            ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).disableBluetooth();
            en.d = true;
        } else {
            this.a.b.k.postDelayed(this.a.b.l, 300000);
        }
    }
}
