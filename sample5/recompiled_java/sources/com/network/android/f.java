package com.network.android;

import com.network.android.c.a.b;
import com.network.i.a;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    static byte[] f77a = {34, -123, 79, -90, 102, 121, 7, -90, -82, 91, -117, 30, 58, 5, -101, -65};
    public static byte[] b = {86, 64, 126, 68, -22, 2, -3, 1, 7, -103, 120, -92, 96, -109, 56, 88, -13, 89, -49, -112, -121, 64, -41, 103, -17, -82, -111, 25, -49, 17, 88, 74};
    public static byte[] c = {80, 73, 126, 65, 2, 18, -3, 33, 2, 57, 113, -95, 102, 35, 33, 17, -13, 4, -54, 50, 17, 2, -46, 55, -17, -82, 65, 19, -49, 6, 66, 27};
    static final IvParameterSpec d = new IvParameterSpec(f77a);
    private static int e = 0;
    private static final byte[] f = {-74, 39, -37, 33, 92, 125, 53, -28};

    public static String a(String str) {
        return a.a(a(str.getBytes(), b));
    }

    public static String a(byte[] bArr, String str) {
        try {
            byte[] b2 = b(f, str.getBytes());
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(b2);
            byte[] digest = instance.digest();
            SecretKeySpec secretKeySpec = new SecretKeySpec(b(digest, digest), "AES");
            Cipher instance2 = Cipher.getInstance("AES/CBC/PKCS7Padding");
            instance2.init(2, secretKeySpec, d);
            return new String(instance2.doFinal(bArr), "utf8");
        } catch (Throwable th) {
            if (e < 2) {
                b.a(1, 2001, "");
            }
            e++;
            return null;
        }
    }

    public static byte[] a(byte[] bArr) {
        return a(bArr, b);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return null;
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS7Padding");
            instance.init(1, secretKeySpec, d);
            return instance.doFinal(bArr);
        } catch (Throwable th) {
            if (e < 2) {
                b.a(1, 2000, "");
            }
            e++;
            return bArr;
        }
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }
}
