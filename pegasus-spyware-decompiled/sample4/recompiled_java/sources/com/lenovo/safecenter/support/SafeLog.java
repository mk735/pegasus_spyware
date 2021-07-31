package com.lenovo.safecenter.support;

import android.graphics.drawable.Drawable;

public class SafeLog {
    public int action;
    public Drawable appDrawable;
    public String appName;
    public int appSelected;
    public String content;
    public int fromtype;
    public int hassee;
    public int id;
    public int isUpload;
    public String logDay;
    public int logSelected;
    public String mms_type;
    public String number;
    public String packageName;
    public String permName;
    public String time;
    public String type;

    public SafeLog(String appName2, String permName2, String time2, String type2, String pkgName, int action2) {
        this.appName = appName2;
        this.permName = permName2;
        this.time = time2;
        this.type = type2;
        this.packageName = pkgName;
        this.action = action2;
    }

    public SafeLog(String appName2, String permName2, String time2, String pkgName, int action2, int selected) {
        this.appName = appName2;
        this.permName = permName2;
        this.time = time2;
        this.packageName = pkgName;
        this.action = action2;
        this.logSelected = selected;
    }

    public SafeLog() {
    }
}
