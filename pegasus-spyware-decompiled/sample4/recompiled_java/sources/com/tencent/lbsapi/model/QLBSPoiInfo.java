package com.tencent.lbsapi.model;

public class QLBSPoiInfo {
    private String a = null;
    private int b = 0;
    private String c = null;
    private String d = null;
    private long e = 0;
    private int f = 0;
    private QLBSGPSInfo g = null;
    private int h = 0;
    private int i = 0;

    public QLBSPoiInfo(String str, int i2, String str2, String str3, long j, int i3, int i4, int i5) {
        this.a = str;
        this.b = i2;
        this.c = str2;
        this.d = str3;
        this.e = j;
        this.f = i3;
        this.h = i4;
        this.i = i5;
    }

    public String getAddress() {
        return this.d;
    }

    public int getDistance() {
        return this.h;
    }

    public int getDistrictCode() {
        return this.f;
    }

    public int getHotValue() {
        return this.i;
    }

    public QLBSGPSInfo getMarsGps() {
        return this.g;
    }

    public String getName() {
        return this.a;
    }

    public long getPoiId() {
        return this.e;
    }

    public int getType() {
        return this.b;
    }

    public String getTypeName() {
        return this.c;
    }

    public void setAddress(String str) {
        this.d = str;
    }

    public void setDistance(int i2) {
        this.h = i2;
    }

    public void setDistrictCode(int i2) {
        this.f = i2;
    }

    public void setHotValue(int i2) {
        this.i = i2;
    }

    public void setMarsGps(QLBSGPSInfo qLBSGPSInfo) {
        this.g = qLBSGPSInfo;
    }

    public void setName(String str) {
        this.a = str;
    }

    public void setPoiID(long j) {
        this.e = j;
    }

    public void setType(int i2) {
        this.b = i2;
    }

    public void setTypeName(String str) {
        this.c = str;
    }
}
