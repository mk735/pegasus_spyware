package com.tencent.tmsecure.module.network;

public final class TrafficCorrectionConfig {
    public String mBrandId;
    public String mCarryId;
    public String mCityId;
    public String mProvinceId;

    public TrafficCorrectionConfig() {
        this.mProvinceId = "";
        this.mCityId = "";
        this.mCarryId = "";
        this.mBrandId = "";
    }

    public TrafficCorrectionConfig(String str, String str2, String str3, String str4) {
        this.mProvinceId = str;
        this.mCityId = str2;
        this.mCarryId = str3;
        this.mBrandId = str4;
    }
}
