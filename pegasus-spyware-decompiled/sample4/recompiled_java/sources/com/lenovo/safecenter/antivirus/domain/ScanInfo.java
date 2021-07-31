package com.lenovo.safecenter.antivirus.domain;

import android.content.pm.ApplicationInfo;

public class ScanInfo {
    private String a;
    private String b;
    private boolean c = false;
    private ApplicationInfo d;

    public ApplicationInfo getAppInfo() {
        return this.d;
    }

    public void setAppInfo(ApplicationInfo appInfo) {
        this.d = appInfo;
    }

    public ScanInfo() {
    }

    public ScanInfo(ApplicationInfo appInfo, boolean isVirus) {
        this.d = appInfo;
        this.c = isVirus;
    }

    public ScanInfo(String packageName, String label, boolean isVirus) {
        this.a = packageName;
        this.b = label;
        this.c = isVirus;
    }

    public String getPackageName() {
        return this.a;
    }

    public void setPackageName(String packageName) {
        this.a = packageName;
    }

    public String getSoftName() {
        return this.b;
    }

    public void setLabel(String label) {
        this.b = label;
    }

    public boolean isVirus() {
        return this.c;
    }

    public void setVirus(boolean isVirus) {
        this.c = isVirus;
    }
}
