package com.lenovo.safecenter.systeminfo.entity;

public class ItemModel {
    public static final int ITEM_STYLE_HEADER = 0;
    public static final int ITEM_STYLE_MIDDLE = 1;
    private String a = null;
    private int b = 1;

    public String getHeaderLabel() {
        return this.a;
    }

    public int getItemStyle() {
        return this.b;
    }

    public void setHeaderLabel(String paramString) {
        this.a = paramString;
    }

    public void setItemStyle(int paramInt) {
        this.b = paramInt;
    }
}
