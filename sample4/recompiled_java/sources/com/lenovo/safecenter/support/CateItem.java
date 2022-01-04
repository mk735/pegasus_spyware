package com.lenovo.safecenter.support;

public class CateItem {
    private int a;
    private int b;
    private String c;
    private String d;
    private int e = 0;

    public int getIcon() {
        return this.a;
    }

    public void setIcon(int icon) {
        this.a = icon;
    }

    public int getState() {
        return this.b;
    }

    public void setState(int state) {
        this.b = state;
    }

    public String getName() {
        return this.c;
    }

    public void setName(String name) {
        this.c = name;
    }

    public String getDiscription() {
        return this.d;
    }

    public void setDiscription(String discription) {
        this.d = discription;
    }

    public int getFlag() {
        return this.e;
    }

    public void setFlag(int flag) {
        this.e = flag;
    }
}
