package com.tencent.lbsapi.model;

public class QLBSWifiInfo {
    private String a;
    private String b;
    private int c;

    public QLBSWifiInfo(String str, String str2, int i) {
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public int getLevel() {
        return this.c;
    }

    public String getMac() {
        return this.b;
    }

    public String getName() {
        return this.a;
    }

    public void setLevel(int i) {
        this.c = i;
    }

    public void setMac(String str) {
        this.b = str;
    }

    public void setName(String str) {
        this.a = str;
    }
}
