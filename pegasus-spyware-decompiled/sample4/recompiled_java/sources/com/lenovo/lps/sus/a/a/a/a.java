package com.lenovo.lps.sus.a.a.a;

public enum a {
    BASE64("01"),
    DES("02"),
    AES("03"),
    PBE("04");
    
    private final String e;

    private a(String str) {
        this.e = str;
    }

    public final String a() {
        return this.e;
    }
}
