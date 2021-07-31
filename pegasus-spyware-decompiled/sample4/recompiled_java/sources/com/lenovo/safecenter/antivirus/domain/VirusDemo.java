package com.lenovo.safecenter.antivirus.domain;

public class VirusDemo {
    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private int j;

    public int getPathKey() {
        return this.j;
    }

    public void setPathKey(int pathKey) {
        this.j = pathKey;
    }

    public VirusDemo() {
    }

    public VirusDemo(String name, String pkgName, String pkgSha1, String certmd5, String type, String source, String filesize) {
        this.b = name;
        this.c = pkgName;
        this.d = pkgSha1;
        this.e = certmd5;
        this.f = type;
        this.g = source;
        this.i = filesize;
    }

    public VirusDemo(int id, String name, String pkgName, String pkgSha1, String certmd5, String type, String source, String filesize) {
        this.a = id;
        this.b = name;
        this.c = pkgName;
        this.d = pkgSha1;
        this.e = certmd5;
        this.f = type;
        this.g = source;
        this.i = filesize;
    }

    public String getName() {
        return this.b;
    }

    public void setName(String name) {
        this.b = name;
    }

    public String getPkgName() {
        return this.c;
    }

    public void setPkgName(String pkgName) {
        this.c = pkgName;
    }

    public String getPkgSha1() {
        return this.d;
    }

    public void setPkgSha1(String pkgSha1) {
        this.d = pkgSha1;
    }

    public String getCertmd5() {
        return this.e;
    }

    public void setCertmd5(String certmd5) {
        this.e = certmd5;
    }

    public String getType() {
        return this.f;
    }

    public void setType(String type) {
        this.f = type;
    }

    public String getSource() {
        return this.g;
    }

    public void setSource(String source) {
        this.g = source;
    }

    public String getVirusDesc() {
        return this.h;
    }

    public void setVirusDesc(String virusDesc) {
        this.h = virusDesc;
    }

    public String getFilesize() {
        return this.i;
    }

    public void setFilesize(String filesize) {
        this.i = filesize;
    }
}
