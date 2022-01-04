package com.lenovo.performancecenter.performance;

import android.graphics.Bitmap;

public class AppInfo {
    public Bitmap appIcon;
    public String appName;
    public boolean canRemove;
    public int flag;
    public boolean isTitle;
    public boolean isUserApp;
    public int memory;
    public String pkgName;
    public String procName;
    public int state;
    public String title;

    public AppInfo(boolean isTitle2, boolean isUserApp2, String title2) {
        this.isUserApp = isUserApp2;
        this.isTitle = isTitle2;
        this.title = title2;
    }

    public AppInfo(String pkgName2, String appName2, String procName2, Bitmap appIcon2, int state2, int flag2) {
        this.pkgName = pkgName2;
        this.appName = appName2;
        this.procName = procName2;
        this.appIcon = appIcon2;
        this.state = state2;
        this.flag = flag2;
    }
}
