package com.tencent.tmsecure.module.phoneservice;

public class UsefulNumberEntity {
    public String name;
    public String number;

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public void setName(String str) {
        if (str != null) {
            this.name = str;
        }
    }

    public void setNumber(String str) {
        if (str != null) {
            this.number = str;
        }
    }
}
