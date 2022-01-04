package com.lenovo.safecenter.lenovoAntiSpam.domain;

public class Contract {
    private String a;
    private String b;
    private int c;
    private String d;
    private int e;
    private String f;
    private boolean g = false;
    private String h;

    public Contract() {
    }

    public Contract(String name, String phoneNumber, int type, String date, int callType) {
        this.a = name;
        this.b = phoneNumber;
        this.c = type;
        this.d = date;
        this.e = callType;
    }

    public Contract(String name, String phoneNumber, int type, String date, String smsContent) {
        this.a = name;
        this.b = phoneNumber;
        this.c = type;
        this.d = date;
        this.f = smsContent;
    }

    public String getName() {
        return this.a;
    }

    public void setName(String name) {
        this.a = name;
    }

    public String getPhoneNumber() {
        return this.b;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.b = phoneNumber;
    }

    public int getType() {
        return this.c;
    }

    public void setType(int type) {
        this.c = type;
    }

    public String getDate() {
        return this.d;
    }

    public void setDate(String date) {
        this.d = date;
    }

    public int getCallType() {
        return this.e;
    }

    public void setCallType(int callType) {
        this.e = callType;
    }

    public String getSmsContent() {
        return this.f;
    }

    public void setSmsContent(String smsContent) {
        this.f = smsContent;
    }

    public boolean isSelect() {
        return this.g;
    }

    public void setSelect(boolean isSelect) {
        this.g = isSelect;
    }

    public String getRealnumber() {
        return this.h;
    }

    public void setRealnumber(String realnumber) {
        this.h = realnumber;
    }
}
