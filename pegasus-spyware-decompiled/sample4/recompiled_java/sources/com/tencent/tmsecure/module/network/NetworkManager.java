package com.tencent.tmsecure.module.network;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.dt;
import tms.dv;

public final class NetworkManager extends BaseManager {
    public static final int INTERVAL_FOR_BACKGROUND = 0;
    public static final int INTERVAL_FOR_REALTIME = 2;
    public static final int INTERVAL_FOR_UI = 1;
    private dt a;
    private dv b;

    public final boolean addDefaultMobileMonitor(String str, INetworkInfoDao iNetworkInfoDao) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str, iNetworkInfoDao);
    }

    public final boolean addDefaultWifiMonitor(String str, INetworkInfoDao iNetworkInfoDao) {
        if (isExpired()) {
            return false;
        }
        return this.a.b(str, iNetworkInfoDao);
    }

    public final boolean addMonitor(String str, NetDataEntityFactory netDataEntityFactory, INetworkInfoDao iNetworkInfoDao) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str, netDataEntityFactory, iNetworkInfoDao);
    }

    public final void clearTrafficInfo(String[] strArr) {
        if (!isExpired()) {
            this.a.a(strArr);
        }
    }

    public final INetworkMonitor findMonitor(String str) {
        if (!isExpired()) {
            return this.a.b(str);
        }
        if (this.b == null) {
            this.b = new dv();
        }
        return this.b;
    }

    public final long getInterval() {
        return this.a.b();
    }

    public final int getIntervalType() {
        return this.a.c();
    }

    public final long getMobileRxBytes(String str) {
        if (isExpired()) {
            return 0;
        }
        return this.a.d(str);
    }

    public final long getMobileTxBytes(String str) {
        if (isExpired()) {
            return 0;
        }
        return this.a.e(str);
    }

    public final long getSelfMobileDownloadBytes() {
        if (isExpired()) {
            return 0;
        }
        return this.a.g();
    }

    public final long getSelfMobileUploadBytes() {
        if (isExpired()) {
            return 0;
        }
        return this.a.h();
    }

    public final TrafficEntity getTrafficEntity(String str) {
        return isExpired() ? new TrafficEntity() : this.a.c(str);
    }

    public final long getWIFIRxBytes(String str) {
        if (isExpired()) {
            return 0;
        }
        return this.a.f(str);
    }

    public final long getWIFITxBytes(String str) {
        if (isExpired()) {
            return 0;
        }
        return this.a.g(str);
    }

    public final boolean isEnable() {
        if (isExpired()) {
            return false;
        }
        return this.a.d();
    }

    public final boolean isSupportTrafficState() {
        if (isExpired()) {
            return false;
        }
        return this.a.f();
    }

    public final void notifyConfigChange() {
        if (!isExpired()) {
            this.a.e();
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new dt();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void refreshTrafficInfo(String[] strArr, boolean z) {
        if (!isExpired()) {
            this.a.a(strArr, z);
        }
    }

    public final boolean removeMonitor(String str) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str);
    }

    public final void setEnable(boolean z) {
        if (!isExpired()) {
            this.a.a(z);
        }
    }

    public final void setInterval(int i) {
        if (!isExpired()) {
            this.a.a(i);
        }
    }

    public final void updateSelfMobileDownloadBytes(long j) {
        if (!isExpired()) {
            this.a.a(j);
        }
    }

    public final void updateSelfMobileUploadBytes(long j) {
        if (!isExpired()) {
            this.a.b(j);
        }
    }
}
