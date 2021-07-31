package com.tencent.tmsecure.module.phoneservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.fi;

public final class IpDialManager extends BaseManager {
    private fi a;

    public final void doIpCall(String str, BroadcastReceiver broadcastReceiver) {
        if (!isExpired()) {
            this.a.a(str, broadcastReceiver);
        }
    }

    public final String getDialPhoneNumber(String str) {
        return isExpired() ? str : this.a.a(str);
    }

    public final IpDialManagerSetting getIpDialSetting() {
        return isExpired() ? new IpDialManagerSetting() : this.a.a();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new fi();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void setIpDialSetting(IpDialManagerSetting ipDialManagerSetting) {
        if (!isExpired()) {
            this.a.a(ipDialManagerSetting);
        }
    }
}
