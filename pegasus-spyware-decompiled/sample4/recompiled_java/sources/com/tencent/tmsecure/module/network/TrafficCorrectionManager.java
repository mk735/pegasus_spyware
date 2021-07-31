package com.tencent.tmsecure.module.network;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ErrorCode;
import java.util.ArrayList;
import tms.Cdo;
import tms.dw;

public final class TrafficCorrectionManager extends BaseManager {
    dw a;
    ArrayList<CodeName> b = new ArrayList<>();

    public final ArrayList<CodeName> getAllProvinces() {
        return isExpired() ? this.b : Cdo.b();
    }

    public final ArrayList<CodeName> getBrands(String str) {
        return isExpired() ? this.b : Cdo.a(str);
    }

    public final ArrayList<CodeName> getCarries() {
        return isExpired() ? this.b : Cdo.a();
    }

    public final ArrayList<CodeName> getCities(String str) {
        return isExpired() ? this.b : Cdo.b(str);
    }

    public final TrafficCorrectionConfig getConfig() {
        return isExpired() ? new TrafficCorrectionConfig() : this.a.a();
    }

    public final int getCorrectionResult(TrafficCorrectionResult trafficCorrectionResult, String str, String str2) {
        return isExpired() ? ErrorCode.ERR_LICENSE_EXPIRED : this.a.a(trafficCorrectionResult, str, str2);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new dw();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final int setConfig(TrafficCorrectionConfig trafficCorrectionConfig) {
        return isExpired() ? ErrorCode.ERR_LICENSE_EXPIRED : this.a.a(trafficCorrectionConfig);
    }

    public final int startCorrection(ArrayList<CorrectionDataInfo> arrayList) {
        return isExpired() ? ErrorCode.ERR_LICENSE_EXPIRED : this.a.a(arrayList);
    }
}
