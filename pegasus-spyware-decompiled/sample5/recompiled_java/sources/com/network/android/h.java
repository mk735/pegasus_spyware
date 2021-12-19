package com.network.android;

import com.network.android.c.a.a;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static String f79a = "pookisonpookiwhatefuckookishouldyoumoopiorshouldyounot";
    private static byte[] b;
    private static SecretKeySpec c = null;

    static {
        b = null;
        try {
            byte[] bytes = f79a.getBytes();
            KeyGenerator instance = KeyGenerator.getInstance("AES");
            SecureRandom instance2 = SecureRandom.getInstance("SHA1PRNG", "Crypto");
            instance2.setSeed(bytes);
            instance.init(128, instance2);
            b = instance.generateKey().getEncoded();
        } catch (Exception e) {
            a.a("getRawKey - " + e.getMessage(), e);
        }
    }

    public static byte[] a(String str) {
        try {
            return a(b, str.getBytes());
        } catch (Exception e) {
            a.a("encryptByte- " + e.getMessage(), e);
            return str.getBytes();
        }
    }

    public static byte[] a(byte[] bArr) {
        try {
            return a(b, bArr);
        } catch (Exception e) {
            a.a("encryptByte- " + e.getMessage(), e);
            return bArr;
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        SecretKeySpec d = d(bArr);
        Cipher instance = Cipher.getInstance("AES");
        instance.init(1, d);
        return instance.doFinal(bArr2);
    }

    public static String b(String str) {
        try {
            byte[] a2 = a(b, str.getBytes());
            if (a2 == null) {
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer(a2.length * 2);
            for (byte b2 : a2) {
                stringBuffer.append("0123456789ABCDEF".charAt((b2 >> 4) & 15)).append("0123456789ABCDEF".charAt(b2 & 15));
            }
            return stringBuffer.toString();
        } catch (Throwable th) {
            a.a("encrypt- " + th.getMessage(), th);
            return str;
        }
    }

    public static String b(byte[] bArr) {
        try {
            return new String(b(b, bArr));
        } catch (Throwable th) {
            a.a("decryptByte- " + th.getMessage(), th);
            return new String(bArr);
        }
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        SecretKeySpec d = d(bArr);
        Cipher instance = Cipher.getInstance("AES");
        instance.init(2, d);
        return instance.doFinal(bArr2);
    }

    public static String c(String str) {
        try {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
            }
            return new String(b(b, bArr));
        } catch (Throwable th) {
            a.a("decrypt- " + th.getMessage(), th);
            return str;
        }
    }

    public static byte[] c(byte[] bArr) {
        try {
            return b(b, bArr);
        } catch (Throwable th) {
            a.a("decryptByte- " + th.getMessage(), th);
            return bArr;
        }
    }

    private static SecretKeySpec d(byte[] bArr) {
        try {
            if (c == null) {
                c = new SecretKeySpec(bArr, "AES");
            }
        } catch (Throwable th) {
            a.a("getDefaultSecretKeySpec encrypt exception- " + th.getMessage(), th);
        }
        return c;
    }
}
