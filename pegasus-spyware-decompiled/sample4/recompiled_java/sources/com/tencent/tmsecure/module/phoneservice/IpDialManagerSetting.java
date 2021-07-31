package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;

public final class IpDialManagerSetting implements Serializable {
    private static final long f = 1;
    int a;
    public String b;
    IpDialProvinceCity c;
    IpDialProvinceCityList d;
    IpDialPhoneNumberList e;

    public IpDialManagerSetting() {
        this.a = 2;
        this.b = "";
        this.c = new IpDialProvinceCity();
        this.d = new IpDialProvinceCityList();
        this.e = new IpDialPhoneNumberList();
    }

    public IpDialManagerSetting(IpDialManagerSetting ipDialManagerSetting) {
        this();
        copyFrom(ipDialManagerSetting);
    }

    public final void copyFrom(IpDialManagerSetting ipDialManagerSetting) {
        if (ipDialManagerSetting != null) {
            this.a = ipDialManagerSetting.a;
            setIpHeader(ipDialManagerSetting.b);
            setLocalPhoneLocation(ipDialManagerSetting.c);
            setExcludedAreaList(ipDialManagerSetting.d);
            setExcludedPhoneNumberList(ipDialManagerSetting.e);
        }
    }

    public final IpDialProvinceCityList getExcludedAreaList() {
        return new IpDialProvinceCityList(this.d);
    }

    public final IpDialPhoneNumberList getExcludedPhoneNumberList() {
        return new IpDialPhoneNumberList(this.e);
    }

    public final int getIpDialMode() {
        return this.a;
    }

    public final String getIpHeader() {
        return this.b;
    }

    public final IpDialProvinceCity getLocalPhoneLocation() {
        return new IpDialProvinceCity(this.c);
    }

    public final void setExcludedAreaList(IpDialProvinceCityList ipDialProvinceCityList) {
        this.d.copyFrom(ipDialProvinceCityList);
    }

    public final void setExcludedPhoneNumberList(IpDialPhoneNumberList ipDialPhoneNumberList) {
        this.e.copyFrom(ipDialPhoneNumberList);
    }

    public final void setIpDialMode(int i) {
        this.a = i;
    }

    public final void setIpHeader(String str) {
        if (str != null) {
            this.b = str;
        }
    }

    public final void setLocalPhoneLocation(IpDialProvinceCity ipDialProvinceCity) {
        this.c.setProvinceCity(ipDialProvinceCity);
    }
}
