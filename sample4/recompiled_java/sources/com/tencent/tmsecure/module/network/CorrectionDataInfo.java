package com.tencent.tmsecure.module.network;

public final class CorrectionDataInfo {
    private String a = "";
    private String b = "";

    public CorrectionDataInfo() {
    }

    public CorrectionDataInfo(String str, String str2) {
        setAddress(str);
        setMessage(str2);
    }

    public final String getAddress() {
        return this.a;
    }

    public final String getMessage() {
        return this.b;
    }

    public final void setAddress(String str) {
        if (str == null) {
            str = "";
        }
        this.a = str;
    }

    public final void setMessage(String str) {
        if (str == null) {
            str = "";
        }
        this.b = str;
    }
}
