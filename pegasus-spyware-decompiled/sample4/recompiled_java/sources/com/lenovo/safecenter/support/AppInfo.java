package com.lenovo.safecenter.support;

import android.content.pm.ApplicationInfo;
import android.graphics.drawable.Drawable;

public class AppInfo {
    public String appType;
    public ApplicationInfo applicationInfo;
    public String className;
    public int hidetype = -1;
    public Drawable icon;
    public int image;
    public int isupload = 0;
    public boolean movetoSDcrad;
    public String name;
    public String packageName;
    public String perName;
    public String permDes;
    public int pid;
    public int selected = 0;
    public int suggest = -1;
    public int trusted = 0;
    public int uid;

    public AppInfo(int uid2, String name2, int selected2, String packageName2, ApplicationInfo applicationInfo2, String appType2, String perName2) {
        this.uid = uid2;
        this.name = name2;
        this.selected = selected2;
        this.packageName = packageName2;
        this.applicationInfo = applicationInfo2;
        this.appType = appType2;
        this.perName = perName2;
    }

    public AppInfo(int uid2, String name2, int selected2, String packageName2, ApplicationInfo applicationInfo2, String appType2, String perName2, boolean movetoSDcard) {
        this.uid = uid2;
        this.name = name2;
        this.selected = selected2;
        this.packageName = packageName2;
        this.applicationInfo = applicationInfo2;
        this.appType = appType2;
        this.perName = perName2;
        this.movetoSDcrad = movetoSDcard;
    }

    public AppInfo() {
    }
}
