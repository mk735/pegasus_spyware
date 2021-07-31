package com.lenovo.safecenter.antivirus.domain;

public class Virus {
    private String a;
    private String b;
    private boolean c;
    private String d;
    private String e;
    private int f;
    private boolean g;
    private String h;

    public String getVirusDesc() {
        return this.e;
    }

    public void setVirusDesc(String virusDesc) {
        this.e = virusDesc;
    }

    public Virus() {
    }

    public Virus(String packageName, String appName, boolean operate) {
        this.a = packageName;
        this.b = appName;
        this.c = operate;
    }

    public String getPackageName() {
        return this.a;
    }

    public void setPackageName(String packageName) {
        this.a = packageName;
    }

    public String getAppName() {
        return this.b;
    }

    public void setAppName(String appName) {
        this.b = appName;
    }

    public boolean isOperate() {
        return this.c;
    }

    public void setOperate(boolean operate) {
        this.c = operate;
    }

    public String getVirusName() {
        return this.d;
    }

    public void setVirusName(String virusName) {
        this.d = virusName;
    }

    public int getType() {
        return this.f;
    }

    public void setType(int type) {
        this.f = type;
    }

    public boolean isSD() {
        return this.g;
    }

    public void setSD(boolean isSD) {
        this.g = isSD;
    }

    public String getFilePath() {
        return this.h;
    }

    public void setFilePath(String filePath) {
        this.h = filePath;
    }
}
