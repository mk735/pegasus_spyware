package a.a.a.a.a.a.c;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f5a = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".toCharArray();

    private static final long a(byte[] bArr, int i, int i2) {
        int i3 = 0;
        long j = 0;
        while (i2 > 0) {
            i2--;
            int i4 = i + 1;
            byte b = bArr[i];
            long j2 = b == 47 ? 1 : 0;
            if (b >= 48 && b <= 57) {
                j2 = (long) ((b + 2) - 48);
            }
            if (b >= 65 && b <= 90) {
                j2 = (long) ((b + 12) - 65);
            }
            if (b >= 97 && b <= 122) {
                j2 = (long) ((b + 38) - 97);
            }
            j += j2 << i3;
            i3 += 6;
            i = i4;
        }
        return j;
    }

    private static final String a(long j, int i) {
        StringBuffer stringBuffer = new StringBuffer(i);
        while (i > 0) {
            i--;
            stringBuffer.append(f5a[(int) (63 & j)]);
            j >>= 6;
        }
        return stringBuffer.toString();
    }

    public static String a(byte[] bArr) {
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer(((length + 2) / 3) * 4);
        int i = 0;
        while (length >= 3) {
            stringBuffer.append(a((long) (((bArr[i] & 255) << 16) | ((bArr[i + 1] & 255) << 8) | (bArr[i + 2] & 255)), 4));
            i += 3;
            length -= 3;
        }
        if (length == 2) {
            stringBuffer.append(a((long) (((bArr[i] & 255) << 8) | (bArr[i + 1] & 255)), 3));
        }
        if (length == 1) {
            stringBuffer.append(a((long) (bArr[i] & 255), 2));
        }
        return stringBuffer.toString();
    }

    public static byte[] a(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = new byte[((length * 3) / 4)];
        int i = 0;
        int i2 = 0;
        int i3 = length;
        while (i3 >= 4) {
            long a2 = a(bytes, i2, 4);
            i3 -= 4;
            i2 += 4;
            for (int i4 = 2; i4 >= 0; i4--) {
                bArr[i + i4] = (byte) ((int) (255 & a2));
                a2 >>= 8;
            }
            i += 3;
        }
        if (i3 == 3) {
            long a3 = a(bytes, i2, 3);
            for (int i5 = 1; i5 >= 0; i5--) {
                bArr[i + i5] = (byte) ((int) (255 & a3));
                a3 >>= 8;
            }
        }
        if (i3 == 2) {
            bArr[i] = (byte) ((int) (a(bytes, i2, 2) & 255));
        }
        return bArr;
    }
}
