package com.lenovo.safecenter.antivirus.domain;

import android.content.pm.ApplicationInfo;

public class CommonFile {
    private ApplicationInfo a;
    private boolean b;
    private String c;
    private boolean d;
    private boolean e;
    public Appinfo virusInfo;

    public ApplicationInfo getApplicationInfo() {
        return this.a;
    }

    public void setApplicationInfo(ApplicationInfo applicationInfo) {
        this.a = applicationInfo;
    }

    public boolean isApk() {
        return this.b;
    }

    public void setApk(boolean isApk) {
        this.b = isApk;
    }

    public String getFilePath() {
        return this.c;
    }

    public void setFilePath(String filePath) {
        this.c = filePath;
    }

    public boolean isSD() {
        return this.e;
    }

    public void setSD(boolean isSD) {
        this.e = isSD;
    }

    public boolean isVirus() {
        return this.d;
    }

    public void setVirus(boolean isVirus) {
        this.d = isVirus;
    }

    public Appinfo getVirusInfo() {
        return this.virusInfo;
    }

    public void setVirusInfo(Appinfo virusInfo2) {
        this.virusInfo = virusInfo2;
    }
}
