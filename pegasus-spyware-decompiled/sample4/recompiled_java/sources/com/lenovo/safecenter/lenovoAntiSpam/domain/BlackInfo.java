package com.lenovo.safecenter.lenovoAntiSpam.domain;

public class BlackInfo {
    private int a;
    private String b;
    private String c;
    private int d;
    private int e = 0;
    private boolean f = false;
    private int g = 0;
    private String h;

    public BlackInfo() {
    }

    public BlackInfo(String name, String phoneNumber, int type, int isUpload) {
        this.b = name;
        this.c = phoneNumber;
        this.d = type;
        this.e = isUpload;
    }

    public BlackInfo(int id, String name, String phoneNumber, int type, int isUpload) {
        this.a = id;
        this.b = name;
        this.c = phoneNumber;
        this.d = type;
        this.e = isUpload;
    }

    public int getId() {
        return this.a;
    }

    public void setId(int id) {
        this.a = id;
    }

    public String getName() {
        return this.b;
    }

    public void setName(String name) {
        this.b = name;
    }

    public String getPhoneNumber() {
        return this.c;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.c = phoneNumber;
    }

    public int getType() {
        return this.d;
    }

    public void setType(int type) {
        this.d = type;
    }

    public int getIsUpload() {
        return this.e;
    }

    public void setIsUpload(int isUpload) {
        this.e = isUpload;
    }

    public boolean isSelect() {
        return this.f;
    }

    public void setSelect(boolean isSelect) {
        this.f = isSelect;
    }

    public int getIntercepttype() {
        return this.g;
    }

    public void setIntercepttype(int intercepttype) {
        this.g = intercepttype;
    }

    public String getRealnumber() {
        return this.h;
    }

    public void setRealnumber(String realnumber) {
        this.h = realnumber;
    }
}
