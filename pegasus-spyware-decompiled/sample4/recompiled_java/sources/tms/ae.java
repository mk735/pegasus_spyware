package tms;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ae {
    private static final char[] a = "0123456789abcdef".toCharArray();

    public static byte[] a(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static byte[] a(String str) {
        return a(str.getBytes());
    }

    public static byte[] a(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 3);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append(a[i >> 4]);
            sb.append(a[i & 15]);
        }
        return sb.toString().toUpperCase();
    }

    public static String c(byte[] bArr) {
        return b(a(bArr));
    }
}
