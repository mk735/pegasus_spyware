package com.lenovo.safecenter.systeminfo.entity;

import java.util.ArrayList;
import java.util.List;

public class ListModel<T> {
    public static final int STYLE_FOOTER = 1;
    public static final int STYLE_HEADER_FOOTER = 0;
    private boolean a = true;
    private List<T> b;
    private String c = null;
    private int d = 1;

    public ListModel(List<T> paramList, String paramString, int paramInt) {
        this.b = paramList;
        this.c = paramString;
        this.d = paramInt;
    }

    public ListModel(List<T> dataList, String headerText, int style, boolean showListNum) {
        this.b = dataList;
        this.c = headerText;
        this.d = style;
        this.a = showListNum;
    }

    public List<T> getDataList() {
        return this.b;
    }

    public String getHeaderLabel() {
        return this.c;
    }

    public List<ItemModel> getItemModelList() {
        if (this.d != 0) {
            return getListMiddle();
        }
        ArrayList arrayList = new ArrayList();
        String str = this.c + (this.a ? "(" + this.b.size() + ")" : "");
        if (this.b.size() > 0) {
            ItemModel itemModel = new ItemModel();
            if (this.c != null) {
                itemModel.setHeaderLabel(str);
            }
            itemModel.setItemStyle(0);
            arrayList.add(itemModel);
        }
        return arrayList;
    }

    public List<ItemModel> getListMiddle() {
        ArrayList<ItemModel> middleDataList = new ArrayList<>();
        for (T cmlMode : this.b) {
            ItemModel itemModel = new ItemModel();
            itemModel.setHeaderLabel(cmlMode.getContextMenuName());
            middleDataList.add(itemModel);
        }
        return middleDataList;
    }

    public int getStyle() {
        return this.d;
    }

    public boolean isShowListNumber() {
        return this.a;
    }

    public void setDataList(List<T> paramList) {
        this.b = paramList;
    }

    public void setHeaderLabel(String paramString) {
        this.c = paramString;
    }

    public void setShowListNumber(boolean paramBoolean) {
        this.a = paramBoolean;
    }

    public void setStyle(int paramInt) {
        this.d = paramInt;
    }
}
