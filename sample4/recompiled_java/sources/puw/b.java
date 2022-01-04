package puw;

public class b {
    public static final byte[] a = new byte[0];
    private static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

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
}
