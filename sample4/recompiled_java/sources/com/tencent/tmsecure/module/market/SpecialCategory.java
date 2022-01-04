package com.tencent.tmsecure.module.market;

import java.util.ArrayList;

public class SpecialCategory {
    public CategoryEx categoryEx;
    public ArrayList<SoftSimpleInfoEx> softSimpleInfoExList;

    public CategoryEx getCategoryEx() {
        return this.categoryEx;
    }

    public ArrayList<SoftSimpleInfoEx> getSoftSimpleInfoExList() {
        return this.softSimpleInfoExList;
    }

    public void setCategoryEx(CategoryEx categoryEx2) {
        this.categoryEx = categoryEx2;
    }

    public void setSoftSimpleInfoExList(ArrayList<SoftSimpleInfoEx> arrayList) {
        this.softSimpleInfoExList = arrayList;
    }
}
