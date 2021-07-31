package com.lenovo.safecenter.support;

public class BlackDemo {
    private int a;
    private String b;
    private String c;

    public BlackDemo() {
    }

    public BlackDemo(int uid, String name, String number) {
        this.a = uid;
        this.b = name;
        this.c = number;
    }

    public int getUid() {
        return this.a;
    }

    public void setUid(int uid) {
        this.a = uid;
    }

    public String getName() {
        return this.b;
    }

    public void setName(String name) {
        this.b = name;
    }

    public String getNumber() {
        return this.c;
    }

    public void setNumber(String number) {
        this.c = number;
    }
}
