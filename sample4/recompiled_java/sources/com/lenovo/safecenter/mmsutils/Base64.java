package com.lenovo.safecenter.mmsutils;

public class Base64 {
    public static final String ERR_TAG = "Base64.java";
    private static byte[] a = new byte[255];

    static {
        for (int i = 0; i < 255; i++) {
            a[i] = -1;
        }
        for (int i2 = 90; i2 >= 65; i2--) {
            a[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 122; i3 >= 97; i3--) {
            a[i3] = (byte) ((i3 - 97) + 26);
        }
        for (int i4 = 57; i4 >= 48; i4--) {
            a[i4] = (byte) ((i4 - 48) + 52);
        }
        a[43] = 62;
        a[47] = 63;
    }

    public static byte[] decodeBase64(byte[] base64Data) {
        byte[] bArr = new byte[base64Data.length];
        int i = 0;
        for (int i2 = 0; i2 < base64Data.length; i2++) {
            byte b = base64Data[i2];
            if (b == 61 ? true : a[b] != -1) {
                bArr[i] = base64Data[i2];
                i++;
            }
        }
        byte[] base64Data2 = new byte[i];
        System.arraycopy(bArr, 0, base64Data2, 0, i);
        if (base64Data2.length == 0) {
            return new byte[0];
        }
        int numberQuadruple = base64Data2.length / 4;
        int encodedIndex = 0;
        int lastData = base64Data2.length;
        while (base64Data2[lastData - 1] == 61) {
            lastData--;
            if (lastData == 0) {
                return new byte[0];
            }
        }
        byte[] decodedData = new byte[(lastData - numberQuadruple)];
        for (int i3 = 0; i3 < numberQuadruple; i3++) {
            int dataIndex = i3 * 4;
            byte marker0 = base64Data2[dataIndex + 2];
            byte marker1 = base64Data2[dataIndex + 3];
            byte b1 = a[base64Data2[dataIndex]];
            byte b2 = a[base64Data2[dataIndex + 1]];
            if (marker0 != 61 && marker1 != 61) {
                byte b3 = a[marker0];
                byte b4 = a[marker1];
                decodedData[encodedIndex] = (byte) ((b1 << 2) | (b2 >> 4));
                decodedData[encodedIndex + 1] = (byte) (((b2 & 15) << 4) | ((b3 >> 2) & 15));
                decodedData[encodedIndex + 2] = (byte) ((b3 << 6) | b4);
            } else if (marker0 == 61) {
                decodedData[encodedIndex] = (byte) ((b1 << 2) | (b2 >> 4));
            } else if (marker1 == 61) {
                byte b32 = a[marker0];
                decodedData[encodedIndex] = (byte) ((b1 << 2) | (b2 >> 4));
                decodedData[encodedIndex + 1] = (byte) (((b2 & 15) << 4) | ((b32 >> 2) & 15));
            }
            encodedIndex += 3;
        }
        return decodedData;
    }
}
