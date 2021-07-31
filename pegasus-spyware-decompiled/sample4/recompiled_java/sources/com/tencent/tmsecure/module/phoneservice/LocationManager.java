package com.tencent.tmsecure.module.phoneservice;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import tms.fj;

public final class LocationManager extends BaseManager {
    private fj a;

    public final ArrayList<String> getCityNameList(String str) {
        return isExpired() ? new ArrayList<>() : this.a.b(str);
    }

    public final String getLocation(String str) {
        return isExpired() ? "" : this.a.a(str);
    }

    public final void getLocation(StringBuffer stringBuffer, StringBuffer stringBuffer2, StringBuffer stringBuffer3, String str) {
        if (!isExpired()) {
            this.a.a(stringBuffer, stringBuffer2, stringBuffer3, str);
        }
    }

    public final ArrayList<String> getProvinceNameList() {
        return isExpired() ? new ArrayList<>() : this.a.a();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new fj();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
