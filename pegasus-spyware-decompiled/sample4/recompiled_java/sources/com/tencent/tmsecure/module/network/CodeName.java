package com.tencent.tmsecure.module.network;

public final class CodeName {
    public String mCode;
    public String mName;

    public CodeName() {
        this.mCode = "";
        this.mName = "";
    }

    public CodeName(CodeName codeName) {
        this.mCode = codeName.mCode;
        this.mName = codeName.mName;
    }

    public CodeName(String str, String str2) {
        this.mCode = str;
        this.mName = str2;
    }
}
