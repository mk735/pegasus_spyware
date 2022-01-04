package com.lenovo.safecenter.systeminfo.entity;

public class PhoneInfoItem {
    private int a;
    private String b;

    public PhoneInfoItem() {
    }

    public PhoneInfoItem(int iconRes, String info) {
        this.a = iconRes;
        this.b = info;
    }

    public int getIconRes() {
        return this.a;
    }

    public void setIconRes(int iconRes) {
        this.a = iconRes;
    }

    public String getInfo() {
        return this.b;
    }

    public void setInfo(String info) {
        this.b = info;
    }
}
