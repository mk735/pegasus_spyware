package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;

public final class IpDialProvinceCity implements Serializable {
    private static final long c = 1;
    String a;
    String b;

    public IpDialProvinceCity() {
        this.a = "";
        this.b = "";
    }

    public IpDialProvinceCity(IpDialProvinceCity ipDialProvinceCity) {
        this(ipDialProvinceCity.a, ipDialProvinceCity.b);
    }

    public IpDialProvinceCity(String str, String str2) {
        this.a = str == null ? "" : str;
        this.b = str2 == null ? "" : str2;
    }

    public final String getCity() {
        return this.b;
    }

    public final String getProvince() {
        return this.a;
    }

    public final void setCity(String str) {
        if (str != null) {
            this.b = str;
        }
    }

    public final void setProvince(String str) {
        if (str != null) {
            this.a = str;
        }
    }

    public final void setProvinceCity(IpDialProvinceCity ipDialProvinceCity) {
        if (ipDialProvinceCity != null) {
            setProvince(ipDialProvinceCity.a);
            setCity(ipDialProvinceCity.b);
        }
    }
}
