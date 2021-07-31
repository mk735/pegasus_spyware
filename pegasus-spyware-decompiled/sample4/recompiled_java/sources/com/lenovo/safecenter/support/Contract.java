package com.lenovo.safecenter.support;

public class Contract {
    private int a;
    private String b;
    private String c;
    private String d;
    private int e;
    private int f;
    private String g;
    private boolean h = false;
    private int i;
    private int j;
    private int k;
    private String l;
    public int noreadCount = 0;

    public Contract() {
    }

    public Contract(String name, String phoneNumber, String date, int callType) {
        this.b = name;
        this.c = phoneNumber;
        this.d = date;
        this.e = callType;
    }

    public Contract(String name, String phoneNumber, String date, String smsContent) {
        this.b = name;
        this.c = phoneNumber;
        this.d = date;
        this.g = smsContent;
    }

    public Contract(String name, String phoneNumber, String date, int smstype, String smsContent) {
        this.f = smstype;
        this.b = name;
        this.c = phoneNumber;
        this.d = date;
        this.g = smsContent;
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
        return this.g;
    }

    public void setSmsContent(String smsContent) {
        this.g = smsContent;
    }

    public int getSmstype() {
        return this.f;
    }

    public void setSmstype(int smstype) {
        this.f = smstype;
    }

    public boolean isSelect() {
        return this.h;
    }

    public void setSelect(boolean isSelect) {
        this.h = isSelect;
    }

    public int getCount() {
        return this.j;
    }

    public void setCount(int count) {
        this.j = count;
    }

    public int getId() {
        return this.a;
    }

    public void setId(int id) {
        this.a = id;
    }

    public int getIsRead() {
        return this.k;
    }

    public void setIsRead(int isRead) {
        this.k = isRead;
    }

    public int getFromtype() {
        return this.i;
    }

    public void setFromtype(int fromtype) {
        this.i = fromtype;
    }

    public String getRealnumber() {
        return this.l;
    }

    public void setRealnumber(String realnumber) {
        this.l = realnumber;
    }
}
