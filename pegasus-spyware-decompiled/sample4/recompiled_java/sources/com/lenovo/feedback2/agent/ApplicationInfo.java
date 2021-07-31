package com.lenovo.feedback2.agent;

public class ApplicationInfo {
    private String a;
    private int b;
    private String c;
    private String d;

    public String getAppName() {
        return this.d;
    }

    public void setAppName(String appName) {
        this.d = appName;
    }

    public String getPackageName() {
        return this.a;
    }

    public void setPackageName(String packageName) {
        this.a = packageName;
    }

    public int getVersionCode() {
        return this.b;
    }

    public void setVersionCode(int versionCode) {
        this.b = versionCode;
    }

    public String getVersionName() {
        return this.c;
    }

    public void setVersionName(String versionName) {
        this.c = versionName;
    }
}
