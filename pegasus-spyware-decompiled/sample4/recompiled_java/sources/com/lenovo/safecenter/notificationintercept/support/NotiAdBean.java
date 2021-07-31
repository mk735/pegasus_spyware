package com.lenovo.safecenter.notificationintercept.support;

public class NotiAdBean {
    private int a;
    private String b;
    private String c;
    private String d;

    public int getId() {
        return this.a;
    }

    public void setId(int id) {
        this.a = id;
    }

    public String getAdname() {
        return this.b;
    }

    public void setAdname(String adname) {
        this.b = adname;
    }

    public String getPkgName() {
        return this.c;
    }

    public void setPkgName(String pkgName) {
        this.c = pkgName;
    }

    public String getDescription() {
        return this.d;
    }

    public void setDescription(String description) {
        this.d = description;
    }
}
