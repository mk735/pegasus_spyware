package com.network.i;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    static byte[] f152a = new byte[64];
    static String b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    static {
        for (int i = 0; i < 64; i++) {
            f152a[i] = (byte) b.charAt(i);
        }
    }

    public static String a(String str) {
        byte[] bytes = str.getBytes();
        return a(bytes, bytes.length);
    }

    public static String a(byte[] bArr) {
        return a(bArr, bArr.length);
    }

    public static String a(byte[] bArr, int i) {
        int i2;
        int i3;
        byte[] bArr2 = new byte[((((i + 2) / 3) * 4) + (i / 72))];
        int i4 = i + 0;
        int i5 = 0;
        int i6 = 0;
        byte b2 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i5 < i4) {
            byte b3 = bArr[i5];
            int i9 = i7 + 1;
            switch (i9) {
                case 1:
                    i2 = i8 + 1;
                    bArr2[i8] = f152a[(b3 >> 2) & 63];
                    i3 = i9;
                    break;
                case 2:
                    i2 = i8 + 1;
                    bArr2[i8] = f152a[((b2 << 4) & 48) | ((b3 >> 4) & 15)];
                    i3 = i9;
                    break;
                case 3:
                    int i10 = i8 + 1;
                    bArr2[i8] = f152a[((b2 << 2) & 60) | ((b3 >> 6) & 3)];
                    i2 = i10 + 1;
                    bArr2[i10] = f152a[b3 & 63];
                    i3 = 0;
                    break;
                default:
                    i2 = i8;
                    i3 = i9;
                    break;
            }
            int i11 = i6 + 1;
            if (i11 >= 72) {
                bArr2[i2] = 10;
                i2++;
                i11 = 0;
            }
            i5++;
            i6 = i11;
            b2 = b3;
            i7 = i3;
            i8 = i2;
        }
        switch (i7) {
            case 1:
                int i12 = i8 + 1;
                bArr2[i8] = f152a[(b2 << 4) & 48];
                bArr2[i12] = 61;
                bArr2[i12 + 1] = 61;
                break;
            case 2:
                bArr2[i8] = f152a[(b2 << 2) & 60];
                bArr2[i8 + 1] = 61;
                break;
        }
        return new String(bArr2);
    }

    public static byte[] b(String str) {
        int indexOf;
        int i = str.endsWith("=") ? 1 : 0;
        if (str.endsWith("==")) {
            i++;
        }
        byte[] bArr = new byte[((((str.length() + 3) / 4) * 3) - i)];
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length() && (indexOf = b.indexOf(str.charAt(i2))) != -1) {
            try {
                switch (i2 % 4) {
                    case 0:
                        bArr[i3] = (byte) (indexOf << 2);
                        break;
                    case 1:
                        int i4 = i3 + 1;
                        bArr[i3] = (byte) (bArr[i3] | ((byte) ((indexOf >> 4) & 3)));
                        bArr[i4] = (byte) (indexOf << 4);
                        i3 = i4;
                        break;
                    case 2:
                        int i5 = i3 + 1;
                        bArr[i3] = (byte) (bArr[i3] | ((byte) ((indexOf >> 2) & 15)));
                        bArr[i5] = (byte) (indexOf << 6);
                        i3 = i5;
                        break;
                    case 3:
                        int i6 = i3 + 1;
                        bArr[i3] = (byte) (((byte) (indexOf & 63)) | bArr[i3]);
                        i3 = i6;
                        break;
                }
                i2++;
            } catch (ArrayIndexOutOfBoundsException e) {
            }
        }
        return bArr;
    }
}
