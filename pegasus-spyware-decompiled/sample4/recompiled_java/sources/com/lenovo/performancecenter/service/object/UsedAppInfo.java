package com.lenovo.performancecenter.service.object;

public class UsedAppInfo {
    public int memroy;
    public String packageName;

    public UsedAppInfo(String packageName2, int memory) {
        this.packageName = packageName2;
        this.memroy = memory;
    }
}
