package com.tencent.lbsapi.model;

public class QLBSGPSInfo {
    public static final int GPS_MARS = 1;
    public static final int GPS_WGS84 = 0;
    public static final int GPS_WGS_REAL = 2;
    private int a = 900000000;
    private int b = 900000000;
    private int c = 900000000;
    private int d = 0;

    public QLBSGPSInfo() {
    }

    public QLBSGPSInfo(int i, int i2, int i3, int i4) {
        setLat(i);
        setLon(i2);
        setAlt(i3);
        setType(i4);
    }

    public double getAlt() {
        return ((double) this.c) / 1000000.0d;
    }

    public double getLat() {
        return ((double) this.a) / 1000000.0d;
    }

    public double getLon() {
        return ((double) this.b) / 1000000.0d;
    }

    public int getType() {
        return this.d;
    }

    public void setAlt(int i) {
        this.c = i;
    }

    public void setLat(int i) {
        this.a = i;
    }

    public void setLon(int i) {
        this.b = i;
    }

    public void setType(int i) {
        this.d = i;
    }
}
