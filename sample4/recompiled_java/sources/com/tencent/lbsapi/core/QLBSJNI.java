package com.tencent.lbsapi.core;

import java.security.MessageDigest;

public class QLBSJNI {
    static {
        System.loadLibrary("lbs");
    }

    public static byte[] md5String(String str) {
        try {
            byte[] bytes = str.getBytes();
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bytes);
            return instance.digest();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public native byte[] decode(byte[] bArr, String str, String str2);

    public native byte[] encode(byte[] bArr, String str, String str2);
}
