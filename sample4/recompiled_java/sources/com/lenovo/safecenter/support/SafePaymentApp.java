package com.lenovo.safecenter.support;

public class SafePaymentApp {
    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;

    public SafePaymentApp() {
    }

    public SafePaymentApp(int id, String app_name, String app_packagename, String app_md5, String app_file_size, String app_sha1, String app_state, String app_protection) {
        this.a = id;
        this.b = app_name;
        this.c = app_packagename;
        this.d = app_md5;
        this.e = app_file_size;
        this.f = app_sha1;
        this.g = app_state;
        this.h = app_protection;
    }

    public int getId() {
        return this.a;
    }

    public void setId(int id) {
        this.a = id;
    }

    public String getApp_name() {
        return this.b;
    }

    public void setApp_name(String app_name) {
        this.b = app_name;
    }

    public String getApp_packagename() {
        return this.c;
    }

    public void setApp_packagename(String app_packagename) {
        this.c = app_packagename;
    }

    public String getApp_md5() {
        return this.d;
    }

    public void setApp_md5(String app_md5) {
        this.d = app_md5;
    }

    public String getApp_file_size() {
        return this.e;
    }

    public void setApp_file_size(String app_file_size) {
        this.e = app_file_size;
    }

    public String getApp_sha1() {
        return this.f;
    }

    public void setApp_sha1(String app_sha1) {
        this.f = app_sha1;
    }

    public String getApp_state() {
        return this.g;
    }

    public void setApp_state(String app_state) {
        this.g = app_state;
    }

    public String getApp_protection() {
        return this.h;
    }

    public void setApp_protection(String app_protection) {
        this.h = app_protection;
    }
}
