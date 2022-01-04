package puw;

public class d {
    public static final byte[] a = new byte[0];
    private static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static byte a(char c) {
        if (c >= '0' && c <= '9') {
            return (byte) (c - '0');
        }
        if (c >= 'a' && c <= 'f') {
            return (byte) ((c - 'a') + 10);
        }
        if (c < 'A' || c > 'F') {
            return 0;
        }
        return (byte) ((c - 'A') + 10);
    }

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            cArr[(i * 2) + 1] = b[b2 & 15];
            cArr[(i * 2) + 0] = b[((byte) (b2 >>> 4)) & 15];
        }
        return new String(cArr);
    }

    public static byte[] a(String str) {
        if (str == null || str.equals("")) {
            return a;
        }
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((a(str.charAt(i * 2)) * 16) + a(str.charAt((i * 2) + 1)));
        }
        return bArr;
    }
}
