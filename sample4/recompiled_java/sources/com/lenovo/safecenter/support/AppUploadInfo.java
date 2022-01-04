package com.lenovo.safecenter.support;

public class AppUploadInfo {
    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    public AppUploadInfo() {
    }

    public AppUploadInfo(String appName, String version, String path, String packagesha1, String pkgName, String certmd5) {
        this.b = appName;
        this.c = version;
        this.d = path;
        this.e = packagesha1;
        this.f = pkgName;
        this.g = certmd5;
    }

    public AppUploadInfo(int id, String appName, String version, String path, String packagesha1, String pkgName, String certmd5) {
        this.a = id;
        this.b = appName;
        this.c = version;
        this.d = path;
        this.e = packagesha1;
        this.f = pkgName;
        this.g = certmd5;
    }

    public int getId() {
        return this.a;
    }

    public void setId(int id) {
        this.a = id;
    }

    public String getAppName() {
        return this.b;
    }

    public void setAppName(String appName) {
        this.b = appName;
    }

    public String getVersion() {
        return this.c;
    }

    public void setVersion(String version) {
        this.c = version;
    }

    public String getPath() {
        return this.d;
    }

    public void setPath(String path) {
        this.d = path;
    }

    public String getPkgName() {
        return this.f;
    }

    public void setPkgName(String pkgName) {
        this.f = pkgName;
    }

    public String getPackagesha1() {
        return this.e;
    }

    public void setPackagesha1(String packagesha1) {
        this.e = packagesha1;
    }

    public String getCertmd5() {
        return this.g;
    }

    public void setCertmd5(String certmd5) {
        this.g = certmd5;
    }
}
