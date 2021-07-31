package com.tencent.lbsapi.model;

public class QLBSCellInfo {
    private int a;
    private int b;
    private int c;
    private int d;

    public QLBSCellInfo() {
    }

    public QLBSCellInfo(int i, int i2, int i3, int i4) {
        this.b = i;
        this.a = i2;
        this.c = i3;
        this.d = i4;
    }

    public int getCellid() {
        return this.d;
    }

    public int getLac() {
        return this.c;
    }

    public int getMcc() {
        return this.a;
    }

    public int getMnc() {
        return this.b;
    }

    public void setCellid(int i) {
        this.d = i;
    }

    public void setLac(int i) {
        this.c = i;
    }

    public void setMcc(int i) {
        this.a = i;
    }

    public void setMnc(int i) {
        this.b = i;
    }
}
