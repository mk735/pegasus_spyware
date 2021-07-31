package com.lenovo.safecenter.support;

import android.content.pm.ApplicationInfo;

public class ProcessInfo {
    private ApplicationInfo a;
    private String b;
    private int c;

    public ProcessInfo() {
    }

    public ProcessInfo(ApplicationInfo appInfo, String size, int state) {
        this.a = appInfo;
        this.b = size;
        this.c = state;
    }

    public ApplicationInfo getAppInfo() {
        return this.a;
    }

    public void setAppInfo(ApplicationInfo appInfo) {
        this.a = appInfo;
    }

    public String getSize() {
        return this.b;
    }

    public void setSize(String size) {
        this.b = size;
    }

    public int getState() {
        return this.c;
    }

    public void setState(int state) {
        this.c = state;
    }
}
