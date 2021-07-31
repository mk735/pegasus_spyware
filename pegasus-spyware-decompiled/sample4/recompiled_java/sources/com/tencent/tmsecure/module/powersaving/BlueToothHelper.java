package com.tencent.tmsecure.module.powersaving;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import java.util.ArrayList;
import tms.fz;
import tms.ga;

public class BlueToothHelper {
    private static final int g = 300000;
    private static final int h = 1;
    private static final int i = 2;
    private static final int j = 3;
    private static BlueToothHelper n;
    public boolean a = false;
    private String b = "BlueToothHelper";
    private BluetoothAdapter c;
    private ArrayList<BluetoothDevice> d;
    private Context e;
    private BlueToothObserver f;
    private Handler k;
    private Runnable l;
    private boolean m;
    private BroadcastReceiver o = new fz(this);

    public static class BlueToothObserver {
        public void ScanFinish(ArrayList<BluetoothDevice> arrayList) {
        }
    }

    private BlueToothHelper(Context context) {
        this.e = context;
        this.c = BluetoothAdapter.getDefaultAdapter();
        this.d = new ArrayList<>();
    }

    public static synchronized BlueToothHelper a(Context context) {
        BlueToothHelper blueToothHelper;
        synchronized (BlueToothHelper.class) {
            if (n == null) {
                n = new BlueToothHelper(context);
            }
            blueToothHelper = n;
        }
        return blueToothHelper;
    }

    public int a(BlueToothObserver blueToothObserver) {
        if (this.c == null || !this.c.isEnabled()) {
            return 1;
        }
        if (this.c.isDiscovering()) {
            return 2;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        this.e.registerReceiver(this.o, intentFilter);
        this.c.startDiscovery();
        this.f = blueToothObserver;
        return 3;
    }

    public void a() {
        if (!(this.k == null || this.l == null)) {
            this.k.removeCallbacks(this.l);
        }
        this.k = null;
        this.l = null;
        this.m = false;
    }

    public void a(PowerSavingConfig powerSavingConfig) {
        if (!this.m) {
            this.k = new Handler();
            this.l = new ga(this, powerSavingConfig);
            this.k.postDelayed(this.l, 300000);
            this.m = true;
        }
    }
}
