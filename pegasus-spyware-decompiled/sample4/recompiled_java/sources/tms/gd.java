package tms;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.provider.Settings;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;
import com.tencent.tmsecure.module.powersaving.PowerSavingEventListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class gd extends BaseManager {
    private PowerSavingConfig a;
    private boolean b = true;
    private Context c;
    private IBatteryInfoHelper d;
    private en e = new ev(this);
    private List<WeakReference<PowerSavingEventListener>> f = new ArrayList();

    private void a(boolean z) {
        ((AudioManager) this.c.getSystemService("audio")).setVibrateSetting(0, z ? 1 : 0);
    }

    private void b(boolean z) {
        Settings.System.putInt(this.c.getContentResolver(), "haptic_feedback_enabled", z ? 1 : 0);
    }

    private void c(boolean z) {
        Settings.System.putInt(this.c.getContentResolver(), "airplane_mode_on", z ? 1 : 0);
        Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
        intent.putExtra("state", z);
        this.c.sendBroadcast(intent);
    }

    public int a() {
        return en.a;
    }

    public void a(PowerSavingConfig powerSavingConfig, boolean z) {
        if (powerSavingConfig != null) {
            this.a = powerSavingConfig;
            this.b = z;
            if (powerSavingConfig.mBrightness <= 0) {
                n.d(this.c.getContentResolver());
            } else {
                n.c(this.c.getContentResolver());
                n.a(powerSavingConfig.mBrightness, this.c.getContentResolver());
            }
            Settings.System.putInt(this.c.getContentResolver(), "screen_off_timeout", powerSavingConfig.mScreenOffTime);
            this.c.getContentResolver().notifyChange(Settings.System.getUriFor("screen_off_timeout"), null);
            if (powerSavingConfig.mHapticFeedbackStateOperation == 1) {
                b(true);
            } else if (powerSavingConfig.mHapticFeedbackStateOperation == 2) {
                b(false);
            }
            if (powerSavingConfig.mVibrateStateOperation == 1) {
                a(true);
            } else if (powerSavingConfig.mVibrateStateOperation == 2) {
                a(false);
            }
            if (powerSavingConfig.mAutoSyncStateOperation == 1) {
                ContentResolver.setMasterSyncAutomatically(true);
            } else if (powerSavingConfig.mAutoSyncStateOperation == 2) {
                ContentResolver.setMasterSyncAutomatically(false);
            }
            NetSettingManager netSettingManager = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
            boolean z2 = Settings.System.getInt(this.c.getContentResolver(), "airplane_mode_on", 0) == 1;
            if (powerSavingConfig.mAirplaneModeStateOperation != 1) {
                if (powerSavingConfig.mAirplaneModeStateOperation == 2 && z2) {
                    c(false);
                }
                if (powerSavingConfig.mWifiStateOperation == 1 && !netSettingManager.isWifiEnabled()) {
                    netSettingManager.setWifiEnabled(true);
                    en.b = true;
                } else if (powerSavingConfig.mWifiStateOperation == 2 && netSettingManager.isWifiEnabled()) {
                    netSettingManager.setWifiEnabled(false);
                    en.b = true;
                }
                NetSettingManager netSettingManager2 = (NetSettingManager) ManagerCreator.getManager(NetSettingManager.class);
                if (powerSavingConfig.mMobileNetWorkStateOperation == 1 && !netSettingManager2.getMobileDataConnectivity()) {
                    ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(true);
                    en.c = true;
                } else if (powerSavingConfig.mMobileNetWorkStateOperation == 2 && netSettingManager2.getMobileDataConnectivity()) {
                    ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(false);
                    en.c = true;
                }
                if (powerSavingConfig.mBlueToothStateOperation == 1 && !netSettingManager.isBluetoothEnabled()) {
                    netSettingManager.enableBluetooth();
                    en.d = true;
                } else if (powerSavingConfig.mBlueToothStateOperation == 2 && netSettingManager.isBluetoothEnabled()) {
                    netSettingManager.disableBluetooth();
                    en.d = true;
                }
            } else if (!z2) {
                c(true);
            } else {
                if (netSettingManager.isWifiEnabled()) {
                    netSettingManager.setWifiEnabled(false);
                    en.b = true;
                }
                if (((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).getMobileDataConnectivity()) {
                    ((NetSettingManager) ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(false);
                    en.c = true;
                }
                if (netSettingManager.isBluetoothEnabled()) {
                    netSettingManager.disableBluetooth();
                    en.d = true;
                }
            }
            int i = PowerSavingConfig.ANIMATION_STATE_SETTINGS[powerSavingConfig.mAnimationState];
            new ew();
            float[] a2 = ew.a();
            if (a2 != null && a2.length >= 1) {
                a2[0] = (float) (i % 10);
            }
            if (a2 != null && a2.length >= 2) {
                a2[1] = (float) ((i / 10) % 10);
            }
            ew.a(a2);
        }
    }

    public void a(PowerSavingEventListener powerSavingEventListener) {
        this.f.add(new WeakReference<>(powerSavingEventListener));
    }

    public synchronized IBatteryInfoHelper b() {
        if (this.d == null) {
            this.d = new et(this.c);
        }
        return this.d;
    }

    public void b(PowerSavingEventListener powerSavingEventListener) {
        if (powerSavingEventListener != null) {
            synchronized (this.f) {
                int i = 0;
                while (true) {
                    if (i >= this.f.size()) {
                        break;
                    }
                    WeakReference<PowerSavingEventListener> weakReference = this.f.get(i);
                    if (weakReference.get() == powerSavingEventListener) {
                        this.f.remove(weakReference);
                        break;
                    }
                    i++;
                }
            }
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public void onCreate(Context context) {
        this.c = context;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        this.c.registerReceiver(this.e, intentFilter);
    }
}
