package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;

public final class IpDialPhoneNumber implements Serializable {
    private static final long c = 1;
    String a;
    String b;

    public IpDialPhoneNumber() {
        this.a = "";
        this.b = "";
    }

    public IpDialPhoneNumber(IpDialPhoneNumber ipDialPhoneNumber) {
        this(ipDialPhoneNumber.a, ipDialPhoneNumber.b);
    }

    public IpDialPhoneNumber(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String getName() {
        return this.a;
    }

    public final String getPhoneNumber() {
        return this.b;
    }

    public final void setName(String str) {
        this.a = str;
    }

    public final void setNamePhoneNumber(IpDialPhoneNumber ipDialPhoneNumber) {
        this.a = ipDialPhoneNumber.a;
        this.b = ipDialPhoneNumber.b;
    }

    public final void setPhoneNumber(String str) {
        this.b = str;
    }
}
