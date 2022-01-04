package tms;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import com.tencent.tmsecure.utils.Log;

public class fz extends BroadcastReceiver {
    final /* synthetic */ BlueToothHelper a;

    public fz(BlueToothHelper blueToothHelper) {
        this.a = blueToothHelper;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(action)) {
            Log.i(BlueToothHelper.a(this.a), "start to scan");
            BlueToothHelper.b(this.a).clear();
        } else if ("android.bluetooth.device.action.FOUND".equals(action)) {
            Log.i(BlueToothHelper.a(this.a), "found device");
            BlueToothHelper.b(this.a).add((BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE"));
        } else if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
            Log.i(BlueToothHelper.a(this.a), "scan finish");
            if (BlueToothHelper.c(this.a) != null) {
                BlueToothHelper.c(this.a).ScanFinish(BlueToothHelper.b(this.a));
            }
        }
    }
}
