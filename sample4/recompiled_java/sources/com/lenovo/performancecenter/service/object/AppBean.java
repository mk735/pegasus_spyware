package com.lenovo.performancecenter.service.object;

import android.graphics.Bitmap;

public class AppBean implements Comparable<AppBean> {
    private CharSequence a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private Bitmap g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private long l;

    public CharSequence getAppName() {
        return this.a;
    }

    public void setAppName(CharSequence appName) {
        this.a = appName;
    }

    public String getAppPath() {
        return this.b;
    }

    public void setAppPath(String appPath) {
        this.b = appPath;
    }

    public boolean canMove() {
        return this.k;
    }

    public void setcanMove(boolean canMove) {
        this.k = canMove;
    }

    public long getappLongSize() {
        return this.l;
    }

    public void setappLongSize(long appLongSize) {
        this.l = appLongSize;
    }

    public boolean isIntalled() {
        return this.h;
    }

    public void setIntalled(boolean isIntalled) {
        this.h = isIntalled;
    }

    public boolean isChecked() {
        return this.i;
    }

    public void setChecked(boolean isChecked) {
        this.i = isChecked;
    }

    public boolean isInSdcard() {
        return this.j;
    }

    public void setInSdcard(boolean inSdcard) {
        this.j = inSdcard;
    }

    public String getAppSize() {
        return this.d;
    }

    public void setAppSize(String appSize) {
        this.d = appSize;
    }

    public String getPkgName() {
        return this.c;
    }

    public void setPkgName(String pkgName) {
        this.c = pkgName;
    }

    public Bitmap getAppIcon() {
        return this.g;
    }

    public void setAppIcon(Bitmap appIcon) {
        this.g = appIcon;
    }

    public String getAppVersionName() {
        return this.e;
    }

    public void setAppVersionName(String appVersionName) {
        this.e = appVersionName;
    }

    public String getAppVersionCode() {
        return this.f;
    }

    public void setAppVersionCode(String appVersionCode) {
        this.f = appVersionCode;
    }

    public String toString() {
        return "AppBean [appName=" + ((Object) this.a) + ", isIntalled=" + this.h + ", pkgName=" + this.c + ", appSize=" + this.d + ", appVersionName=" + this.e + ", appVersionCode=" + this.f + ", appPath=" + this.b + "]";
    }

    public int compareTo(AppBean another) {
        if (new Long(another.getappLongSize()).intValue() > new Long(getappLongSize()).intValue()) {
            return 1;
        }
        return new Long(another.getappLongSize()).intValue() == new Long(getappLongSize()).intValue() ? 0 : -1;
    }
}
