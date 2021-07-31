package com.tencent.tmsecure.module.netsetting;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.dl;

public class NetSettingManager extends BaseManager {
    public static final int APN_TYPE_NET = 0;
    public static final int APN_TYPE_NULL = -1;
    public static final int APN_TYPE_WAP = 1;
    private dl a;

    public boolean disableBluetooth() {
        if (isExpired()) {
            return false;
        }
        return this.a.g();
    }

    public boolean enableBluetooth() {
        if (isExpired()) {
            return false;
        }
        return this.a.f();
    }

    public int getAPNType(String str) {
        return this.a.a(str);
    }

    public boolean getApnState() {
        return this.a.m();
    }

    public int getBluetoothState() {
        return this.a.h();
    }

    public String getCurUsedApn() {
        return this.a.k();
    }

    public int getCurUsedApnType() {
        return this.a.l();
    }

    public boolean getMobileDataConnectivity() {
        return this.a.i();
    }

    public int getWifiRssi() {
        return this.a.d();
    }

    public int getWifiState() {
        return this.a.c();
    }

    public boolean isBluetoothEnabled() {
        return this.a.e();
    }

    public boolean isMobileDataConnectivityActive() {
        return this.a.j();
    }

    public boolean isWifiActive() {
        return this.a.a();
    }

    public boolean isWifiEnabled() {
        return this.a.b();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public void onCreate(Context context) {
        this.a = new dl();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public boolean setApnState(boolean z) {
        if (isExpired()) {
            return false;
        }
        return this.a.c(z);
    }

    public boolean setMobileDataConnectivity(boolean z) {
        if (isExpired()) {
            return false;
        }
        return this.a.b(z);
    }

    public boolean setWifiEnabled(boolean z) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(z);
    }

    public boolean switchTo(int i) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(i);
    }
}
