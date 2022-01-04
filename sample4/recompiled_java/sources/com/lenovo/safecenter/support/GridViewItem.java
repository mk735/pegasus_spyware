package com.lenovo.safecenter.support;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;

public class GridViewItem {
    private String a;
    private Drawable b;
    private String c;
    private boolean d = false;
    private boolean e;
    private SharedPreferences f;
    private String g;
    private String h;
    private String i;
    private boolean j;
    private int k;

    public GridViewItem(String title, Drawable icon, String message, boolean haveBtn) {
        this.a = title;
        this.b = icon;
        this.c = message;
        this.e = haveBtn;
    }

    public GridViewItem(String title, Drawable icon, String message, boolean haveBtn, int flag, String action, String switchName, boolean pwd) {
        this.a = title;
        this.b = icon;
        this.c = message;
        this.e = haveBtn;
        this.h = action;
        this.k = flag;
        this.i = switchName;
        this.j = pwd;
    }

    public GridViewItem(Context context, String title, Drawable icon, SharedPreferences sp, String pkgName, int flag, boolean pwd) {
        this.a = title;
        this.b = icon;
        this.f = sp;
        this.g = pkgName;
        if (sp.getBoolean("haveBtn", false)) {
            this.e = true;
            this.d = sp.getBoolean("switch", false);
        } else {
            this.e = false;
        }
        if (sp.getString(DatabaseTables.LOG_MESSAGE, "").equals("")) {
            this.c = context.getString(R.string.click_view);
        } else {
            this.c = sp.getString(DatabaseTables.LOG_MESSAGE, "");
        }
        this.j = pwd;
    }

    public GridViewItem(String title, String message, Drawable icon, String pkgName, int flag, boolean pwd) {
        this.a = title;
        this.b = icon;
        this.g = pkgName;
        this.j = pwd;
        this.c = message;
    }

    public String getTitle() {
        return this.a;
    }

    public void setTitle(String title) {
        this.a = title;
    }

    public Drawable getIcon() {
        return this.b;
    }

    public void setIcon(Drawable icon) {
        this.b = icon;
    }

    public String getMessage() {
        return this.c;
    }

    public void setMessage(String message) {
        this.c = message;
    }

    public boolean getBtn() {
        return this.d;
    }

    public void setBtn(boolean btn) {
        this.d = btn;
    }

    public boolean isHaveBtn() {
        return this.e;
    }

    public void setHaveBtn(boolean haveBtn) {
        this.e = haveBtn;
    }

    public SharedPreferences getSp() {
        return this.f;
    }

    public void setSp(SharedPreferences sp) {
        this.f = sp;
    }

    public String getPkgName() {
        return this.g;
    }

    public void setPkgName(String pkgName) {
        this.g = pkgName;
    }

    public int getFlag() {
        return this.k;
    }

    public void setFlag(int flag) {
        this.k = flag;
    }

    public String getAction() {
        return this.h;
    }

    public void setAction(String action) {
        this.h = action;
    }

    public String getSwitchName() {
        if (this.i == null) {
            return "";
        }
        return this.i;
    }

    public void setSwitchName(String switchName) {
        this.i = switchName;
    }

    public boolean isPwd() {
        return this.j;
    }

    public void setPwd(boolean pwd) {
        this.j = pwd;
    }
}
