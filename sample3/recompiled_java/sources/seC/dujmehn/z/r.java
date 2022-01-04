package seC.dujmehn.z;

public final class r {
    private static char q = '=';
    private static final char[] r = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    public static String q(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = new char[(((bArr.length + 2) / 3) * 4)];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length - 2; i2 += 3) {
            int i3 = ((bArr[i2] & 255) << 16) + ((bArr[i2 + 1] & 255) << 8) + (bArr[i2 + 2] & 255);
            int i4 = i + 1;
            cArr[i] = r[i3 >> 18];
            int i5 = i4 + 1;
            cArr[i4] = r[(i3 >> 12) & 63];
            int i6 = i5 + 1;
            cArr[i5] = r[(i3 >> 6) & 63];
            i = i6 + 1;
            cArr[i6] = r[i3 & 63];
        }
        switch (bArr.length % 3) {
            case 1:
                int i7 = (bArr[bArr.length - 1] & 255) << 16;
                int i8 = i + 1;
                cArr[i] = r[i7 >> 18];
                int i9 = i8 + 1;
                cArr[i8] = r[(i7 >> 12) & 63];
                cArr[i9] = q;
                cArr[i9 + 1] = q;
                break;
            case 2:
                int i10 = ((bArr[bArr.length - 2] & 255) << 16) + ((bArr[bArr.length - 1] & 255) << 8);
                int i11 = i + 1;
                cArr[i] = r[i10 >> 18];
                int i12 = i11 + 1;
                cArr[i11] = r[(i10 >> 12) & 63];
                cArr[i12] = r[(i10 >> 6) & 63];
                cArr[i12 + 1] = q;
                break;
        }
        return new String(cArr);
    }
}
