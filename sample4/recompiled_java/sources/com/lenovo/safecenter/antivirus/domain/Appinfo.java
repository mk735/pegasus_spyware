package com.lenovo.safecenter.antivirus.domain;

public class Appinfo {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private int f;

    public int getPathKey() {
        return this.f;
    }

    public void setPathKey(int pathKey) {
        this.f = pathKey;
    }

    public Appinfo(String pkgName, String mD5, String sHA1, String filesize, String appname) {
        this.a = pkgName;
        this.b = mD5;
        this.c = sHA1;
        this.d = filesize;
        this.e = appname;
    }

    public Appinfo() {
    }

    public String getPkgName() {
        return this.a;
    }

    public void setPkgName(String pkgName) {
        this.a = pkgName;
    }

    public String getMD5() {
        return this.b;
    }

    public void setMD5(String mD5) {
        this.b = mD5;
    }

    public String getSHA1() {
        return this.c;
    }

    public void setSHA1(String sHA1) {
        this.c = sHA1;
    }

    public String getFilesize() {
        return this.d;
    }

    public void setFilesize(String filesize) {
        this.d = filesize;
    }

    public String getAppname() {
        return this.e;
    }

    public void setAppname(String appname) {
        this.e = appname;
    }
}
