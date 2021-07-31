package com.lenovo.safecenter.floatwindow.model;

import android.graphics.drawable.Drawable;

public class ResolveModel {
    public Drawable drawable;
    public String mainname;
    public int memsize;
    public String name;
    public String packagename;

    public Drawable getDrawable() {
        return this.drawable;
    }

    public void setDrawable(Drawable drawable2) {
        this.drawable = drawable2;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name2) {
        this.name = name2;
    }

    public String getPackagename() {
        return this.packagename;
    }

    public void setPackagename(String packagename2) {
        this.packagename = packagename2;
    }

    public String getMainname() {
        return this.mainname;
    }

    public void setMainname(String mainname2) {
        this.mainname = mainname2;
    }

    public int getMemzise() {
        return this.memsize;
    }

    public void setMemzise(int memsize2) {
        this.memsize = memsize2;
    }
}
