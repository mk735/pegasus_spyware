package com.tencent.lbsapi.model;

import java.util.ArrayList;
import java.util.List;

public class QLBSPoiInfoBatch {
    private List a = new ArrayList();
    private int b = 0;
    private QLBSGPSInfo c = null;

    public QLBSGPSInfo getGpsInfo() {
        return this.c;
    }

    public List getPoiList() {
        return this.a;
    }

    public int getTotalNum() {
        return this.b;
    }

    public void setGpsInfo(QLBSGPSInfo qLBSGPSInfo) {
        this.c = qLBSGPSInfo;
    }

    public void setPoiList(List list) {
        this.a = list;
    }

    public void setTotalNum(int i) {
        this.b = i;
    }
}
