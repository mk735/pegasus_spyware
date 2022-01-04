package com.lenovo.safecenter.lenovoAntiSpam.domain;

public class SignCall {
    private int a;
    private String b;
    private int c;
    private int d;
    private int e = 0;
    private int f = 0;
    private String g;
    private int h = -1;

    public int getId() {
        return this.a;
    }

    public SignCall() {
    }

    public int getTotalCall() {
        return this.f;
    }

    public SignCall(String number, int sType, int totalCall) {
        this.b = number;
        this.d = sType;
        this.f = totalCall;
    }

    public void setTotalCall(int totalCall) {
        this.f = totalCall;
    }

    public SignCall(int id, String number, int bType, int sType, int isUpload, String addTime) {
        this.a = id;
        this.b = number;
        this.c = bType;
        this.d = sType;
        this.e = isUpload;
        this.g = addTime;
    }

    public SignCall(String number, int bType, int sType, int isUpload, String addTime) {
        this.b = number;
        this.c = bType;
        this.d = sType;
        this.e = isUpload;
        this.g = addTime;
    }

    public void setId(int id) {
        this.a = id;
    }

    public String getNumber() {
        return this.b;
    }

    public void setNumber(String number) {
        this.b = number;
    }

    public int getbType() {
        return this.c;
    }

    public void setbType(int bType) {
        this.c = bType;
    }

    public int getsType() {
        return this.d;
    }

    public void setsType(int sType) {
        this.d = sType;
    }

    public int getIsUpload() {
        return this.e;
    }

    public void setIsUpload(int isUpload) {
        this.e = isUpload;
    }

    public String getAddTime() {
        return this.g;
    }

    public void setAddTime(String addTime) {
        this.g = addTime;
    }

    public int getCallDur() {
        return this.h;
    }

    public void setCallDur(int callDur) {
        this.h = callDur;
    }
}
