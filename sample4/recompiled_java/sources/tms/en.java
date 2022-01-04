package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.Log;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;

public abstract class en extends BroadcastReceiver {
    static int a;
    static boolean b;
    static boolean c;
    static boolean d;
    private static boolean m;
    private static boolean q = true;
    private static boolean r;
    private String e = "AbsPowerSavingBroadcastReceiver";
    private Runnable f = null;
    private Runnable g = null;
    private Handler h = null;
    private Handler i = null;
    private boolean j = false;
    private boolean k = false;
    private boolean l;
    private Runnable n;
    private Handler o;
    private final int p = 300000;

    en() {
        NetSettingManager netSettingManager = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
        m = netSettingManager.isWifiEnabled();
        c = netSettingManager.getMobileDataConnectivity();
        r = netSettingManager.isBluetoothEnabled();
    }

    public abstract void a(Intent intent);

    public abstract void a(boolean z);

    public abstract boolean a();

    public abstract PowerSavingConfig b();

    public abstract void b(Intent intent);

    public abstract void b(boolean z);

    public abstract void c(Intent intent);

    public abstract void c(boolean z);

    public abstract void d(Intent intent);

    public abstract void d(boolean z);

    public abstract void e(boolean z);

    public abstract void f(boolean z);

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.SCREEN_OFF".equals(action) || "android.intent.action.SCREEN_ON".equals(action)) {
            PowerSavingConfig b2 = b();
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                Log.i(this.e, "Screen off");
                ((NetworkManager) ManagerCreator.getManager(NetworkManager.class)).setInterval(0);
                if (!a()) {
                    if ((b2.mWifiAutoCloseCondition & 8) == 8 && m) {
                        Log.i(this.e, "start disable wifi");
                        if (this.h == null) {
                            this.h = new Handler();
                        }
                        if (this.f == null) {
                            this.f = new eo(this);
                        }
                        this.h.postDelayed(this.f, (long) b2.mWifiAutoCloseScreenTime);
                        this.j = true;
                    }
                    if ((b2.mMobileNetWorkAutoCloseCondition & 2) == 2 && q) {
                        if (this.i == null) {
                            this.i = new Handler();
                        }
                        if (this.g == null) {
                            this.g = new ep(this);
                        }
                        this.i.postDelayed(this.g, (long) b2.mWifiAutoCloseScreenTime);
                        this.k = true;
                    }
                }
            } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                Log.i(this.e, "Screen on");
                if (this.j) {
                    this.h.removeCallbacks(this.f);
                    this.j = false;
                }
                if (!a() && (b2.mWifiAutoOpenCondition & 4) == 4 && m) {
                    Log.i(this.e, "start enable wifi");
                    NetSettingManager netSettingManager = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
                    if (!netSettingManager.isWifiEnabled()) {
                        netSettingManager.setWifiEnabled(true);
                        b = true;
                    }
                }
                if (this.k) {
                    this.i.removeCallbacks(this.g);
                    this.k = false;
                }
                if (!a() && (b2.mMobileNetWorkAutoOpenCondition & 4) == 4 && q) {
                    NetSettingManager netSettingManager2 = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
                    if (!netSettingManager2.getMobileDataConnectivity()) {
                        netSettingManager2.setMobileDataConnectivity(true);
                        c = true;
                    }
                }
                if (!a() && (b2.mBlueToothAutoOpenCondition & 4) == 4 && r) {
                    ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).enableBluetooth();
                    d = true;
                }
            }
        } else if ("android.intent.action.BATTERY_CHANGED".equals(action)) {
            if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                int intExtra = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
                if (intExtra > 100) {
                    intExtra = 100;
                }
                if (a != intExtra) {
                    a = intExtra;
                    a(intent);
                }
                int intExtra2 = intent.getIntExtra("status", 1);
                PowerSavingConfig b3 = b();
                if (intExtra2 == 2) {
                    Log.i(this.e, "start charge");
                    if (!this.l) {
                        this.l = true;
                        b(intent);
                        if (!a()) {
                            if ((b3.mWifiAutoOpenCondition & 2) == 2 && m) {
                                NetSettingManager netSettingManager3 = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
                                if (!netSettingManager3.isWifiEnabled()) {
                                    netSettingManager3.setWifiEnabled(true);
                                    b = true;
                                }
                            }
                            if ((b3.mMobileNetWorkAutoOpenCondition & 2) == 2 && q) {
                                ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(true);
                                c = true;
                            }
                            if ((b3.mBlueToothAutoOpenCondition & 2) == 2 && r) {
                                ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).enableBluetooth();
                                d = true;
                            }
                        }
                    }
                } else if (intExtra2 == 5) {
                    Log.i(this.e, "receive full msg");
                    if (this.l) {
                        Log.i(this.e, "full!");
                        this.l = false;
                        d(intent);
                    }
                } else if (intExtra2 == 4 || intExtra2 == 3) {
                    Log.i(this.e, "receive stop msg::" + intExtra2);
                    if (this.l) {
                        Log.i(this.e, "stop!");
                        this.l = false;
                        c(intent);
                    }
                }
            }
        } else if ("android.net.wifi.WIFI_STATE_CHANGED".equals(action) || "android.net.wifi.RSSI_CHANGED".equals(action)) {
            PowerSavingConfig b4 = b();
            if (intent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                int intExtra3 = intent.getIntExtra("wifi_state", 0);
                if (intExtra3 == 2) {
                    Log.i(this.e, "open wifi");
                    if (!b) {
                        m = true;
                    }
                    if (!a() && (b4.mWifiAutoCloseCondition & 2) == 2) {
                        new Handler().postDelayed(new eq(this, context), (long) b4.mWifiOverTimeDuration);
                    }
                } else if (intExtra3 == 3) {
                    Log.i(this.e, "open wifi");
                    b(b);
                    if (b) {
                        b = false;
                    } else {
                        m = true;
                    }
                } else if (intExtra3 == 1) {
                    Log.i(this.e, "close wifi");
                    a(b);
                    if (b) {
                        b = false;
                    } else {
                        m = false;
                    }
                }
            } else if (intent.getAction().equals("android.net.wifi.RSSI_CHANGED") && !a() && (b4.mWifiAutoCloseCondition & 4) == 4) {
                if (!(this.o == null || this.n == null)) {
                    this.o.removeCallbacks(this.n);
                    this.o = null;
                    this.n = null;
                }
                NetSettingManager netSettingManager4 = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
                int i2 = 100 / b4.mWifiLowSignalThreshold;
                int wifiRssi = netSettingManager4.getWifiRssi();
                if (!(netSettingManager4.getWifiState() == 2 || netSettingManager4.getWifiState() == 0 || WifiManager.calculateSignalLevel(wifiRssi, i2) != 0)) {
                    this.o = new Handler();
                    this.n = new er(this, netSettingManager4);
                    this.o.postDelayed(this.n, 300000);
                }
                Log.i(this.e, "wifi rssi::" + wifiRssi);
            }
        } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (networkInfo.getType() == 0) {
                    NetworkInfo.State state = networkInfo.getState();
                    if (state == NetworkInfo.State.CONNECTED) {
                        Log.i(this.e, "open gprs");
                        d(c);
                        if (c) {
                            c = false;
                        } else {
                            q = true;
                        }
                    } else if (state == NetworkInfo.State.DISCONNECTED) {
                        Log.i(this.e, "close gprs");
                        c(c);
                        if (c) {
                            c = false;
                        } else {
                            q = false;
                        }
                    }
                }
            }
        } else if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action) || "android.bluetooth.device.action.ACL_CONNECTED".equals(action) || "android.bluetooth.device.action.ACL_DISCONNECTED".equals(action)) {
            PowerSavingConfig b5 = b();
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction())) {
                int bluetoothState = ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).getBluetoothState();
                if (bluetoothState == 11) {
                    if (!a() && (b5.mBlueToothAutoCloseCondition & 1) != 1) {
                        BlueToothHelper.a(context).a(b5);
                    }
                } else if (bluetoothState == 13) {
                    BlueToothHelper.a(context).a();
                } else if (bluetoothState == 12) {
                    f(d);
                    if (d) {
                        d = false;
                    } else {
                        r = true;
                    }
                } else if (bluetoothState == 10) {
                    e(d);
                    if (d) {
                        d = false;
                    } else {
                        r = false;
                    }
                }
            } else if ("android.bluetooth.device.action.ACL_CONNECTED".equals(intent.getAction())) {
                Log.i(this.e, "ACTION_ACL_CONNECTED");
                BlueToothHelper.a(context).a = true;
            } else if ("android.bluetooth.device.action.ACL_DISCONNECTED".equals(intent.getAction())) {
                Log.i(this.e, "ACTION_ACL_DISCONNECTED");
                BlueToothHelper.a(context).a = false;
            }
        }
    }
}
