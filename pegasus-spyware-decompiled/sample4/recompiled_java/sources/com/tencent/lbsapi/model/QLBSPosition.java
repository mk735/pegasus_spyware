package com.tencent.lbsapi.model;

public class QLBSPosition {
    private String a = "";
    private String b = "";
    private String c = "";
    private String d = "";
    private String e = "";
    private String f = "";
    private QLBSGPSInfo g = null;
    private int h = 0;

    public String getCity() {
        return this.b;
    }

    public String getDistrict() {
        return this.c;
    }

    public QLBSGPSInfo getGps() {
        return this.g;
    }

    public String getPremises() {
        return this.f;
    }

    public String getProvince() {
        return this.a;
    }

    public int getRange() {
        return this.h;
    }

    public String getRoad() {
        return this.e;
    }

    public String getTown() {
        return this.d;
    }

    public void setCity(String str) {
        this.b = str;
    }

    public void setDistrict(String str) {
        this.c = str;
    }

    public void setGps(QLBSGPSInfo qLBSGPSInfo) {
        this.g = qLBSGPSInfo;
    }

    public void setPremises(String str) {
        this.f = str;
    }

    public void setProvince(String str) {
        this.a = str;
    }

    public void setRange(int i) {
        this.h = i;
    }

    public void setRoad(String str) {
        this.e = str;
    }

    public void setTown(String str) {
        this.d = str;
    }
}
