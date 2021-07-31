package com.lenovo.safecenter.net.support;

import android.graphics.drawable.Drawable;

public class AppInfo {
    public Drawable icon;
    public long item_3g;
    public long last_received;
    public long last_sent;
    public String name;
    public String packageName;
    public String pname;
    public long received;
    public boolean running = false;
    public boolean selected;
    public long sent;
    public int uid;

    public AppInfo() {
    }

    public AppInfo(int uid2, String name2, boolean selected2, String packageName2) {
        this.uid = uid2;
        this.name = name2;
        this.selected = selected2;
        this.packageName = packageName2;
    }
}
