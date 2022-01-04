package com.qq.taf.jce;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public final class JceUtil {
    private static final byte[] a;
    private static final byte[] b;

    static {
        byte[] bArr = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
        byte[] bArr2 = new byte[256];
        byte[] bArr3 = new byte[256];
        for (int i = 0; i < 256; i++) {
            bArr2[i] = bArr[i >>> 4];
            bArr3[i] = bArr[i & 15];
        }
        a = bArr2;
        b = bArr3;
    }

    public static int compareTo(byte b2, byte b3) {
        if (b2 < b3) {
            return -1;
        }
        return b2 > b3 ? 1 : 0;
    }

    public static int compareTo(char c, char c2) {
        if (c < c2) {
            return -1;
        }
        return c > c2 ? 1 : 0;
    }

    public static int compareTo(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        return d > d2 ? 1 : 0;
    }

    public static int compareTo(float f, float f2) {
        if (f < f2) {
            return -1;
        }
        return f > f2 ? 1 : 0;
    }

    public static int compareTo(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public static int compareTo(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    public static <T extends Comparable<T>> int compareTo(T t, T t2) {
        return t.compareTo(t2);
    }

    public static <T extends Comparable<T>> int compareTo(List<T> list, List<T> list2) {
        Iterator<T> it = list.iterator();
        Iterator<T> it2 = list2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compareTo = it.next().compareTo(it2.next());
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return compareTo(it.hasNext(), it2.hasNext());
    }

    public static int compareTo(short s, short s2) {
        if (s < s2) {
            return -1;
        }
        return s > s2 ? 1 : 0;
    }

    public static int compareTo(boolean z, boolean z2) {
        int i = 1;
        int i2 = z ? 1 : 0;
        if (!z2) {
            i = 0;
        }
        return i2 - i;
    }

    public static int compareTo(byte[] bArr, byte[] bArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < bArr.length && i < bArr2.length) {
            int compareTo = compareTo(bArr[i2], bArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(bArr.length, bArr2.length);
    }

    public static int compareTo(char[] cArr, char[] cArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < cArr.length && i < cArr2.length) {
            int compareTo = compareTo(cArr[i2], cArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(cArr.length, cArr2.length);
    }

    public static int compareTo(double[] dArr, double[] dArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < dArr.length && i < dArr2.length) {
            int compareTo = compareTo(dArr[i2], dArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(dArr.length, dArr2.length);
    }

    public static int compareTo(float[] fArr, float[] fArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < fArr.length && i < fArr2.length) {
            int compareTo = compareTo(fArr[i2], fArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(fArr.length, fArr2.length);
    }

    public static int compareTo(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < iArr.length && i < iArr2.length) {
            int compareTo = compareTo(iArr[i2], iArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(iArr.length, iArr2.length);
    }

    public static int compareTo(long[] jArr, long[] jArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < jArr.length && i < jArr2.length) {
            int compareTo = compareTo(jArr[i2], jArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(jArr.length, jArr2.length);
    }

    public static <T extends Comparable<T>> int compareTo(T[] tArr, T[] tArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < tArr.length && i < tArr2.length) {
            int compareTo = tArr[i2].compareTo(tArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(tArr.length, tArr2.length);
    }

    public static int compareTo(short[] sArr, short[] sArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < sArr.length && i < sArr2.length) {
            int compareTo = compareTo(sArr[i2], sArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(sArr.length, sArr2.length);
    }

    public static int compareTo(boolean[] zArr, boolean[] zArr2) {
        int i = 0;
        int i2 = 0;
        while (i2 < zArr.length && i < zArr2.length) {
            int compareTo = compareTo(zArr[i2], zArr2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            i2++;
            i++;
        }
        return compareTo(zArr.length, zArr2.length);
    }

    public static boolean equals(byte b2, byte b3) {
        return b2 == b3;
    }

    public static boolean equals(char c, char c2) {
        return c == c2;
    }

    public static boolean equals(double d, double d2) {
        return d == d2;
    }

    public static boolean equals(float f, float f2) {
        return f == f2;
    }

    public static boolean equals(int i, int i2) {
        return i == i2;
    }

    public static boolean equals(long j, long j2) {
        return j == j2;
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    public static boolean equals(short s, short s2) {
        return s == s2;
    }

    public static boolean equals(boolean z, boolean z2) {
        return z == z2;
    }

    public static String getHexdump(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return "empty";
        }
        StringBuffer stringBuffer = new StringBuffer((byteBuffer.remaining() * 3) - 1);
        int position = byteBuffer.position();
        int i = byteBuffer.get() & 255;
        stringBuffer.append((char) a[i]);
        stringBuffer.append((char) b[i]);
        for (int i2 = remaining - 1; i2 > 0; i2--) {
            stringBuffer.append(' ');
            int i3 = byteBuffer.get() & 255;
            stringBuffer.append((char) a[i3]);
            stringBuffer.append((char) b[i3]);
        }
        byteBuffer.position(position);
        return stringBuffer.toString();
    }

    public static String getHexdump(byte[] bArr) {
        return getHexdump(ByteBuffer.wrap(bArr));
    }

    public static byte[] getJceBufArray(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.position()];
        System.arraycopy(byteBuffer.array(), 0, bArr, 0, bArr.length);
        return bArr;
    }

    public static int hashCode(byte b2) {
        return b2 + 629;
    }

    public static int hashCode(char c) {
        return c + 629;
    }

    public static int hashCode(double d) {
        return hashCode(Double.doubleToLongBits(d));
    }

    public static int hashCode(float f) {
        return Float.floatToIntBits(f) + 629;
    }

    public static int hashCode(int i) {
        return i + 629;
    }

    public static int hashCode(long j) {
        return ((int) ((j >> 32) ^ j)) + 629;
    }

    public static int hashCode(Object obj) {
        for (Object[] objArr = obj; objArr != null; objArr = (Object[]) objArr) {
            if (!objArr.getClass().isArray()) {
                return objArr instanceof JceStruct ? objArr.hashCode() : objArr.hashCode() + 629;
            }
            if (objArr instanceof long[]) {
                return hashCode((long[]) objArr);
            }
            if (objArr instanceof int[]) {
                return hashCode((int[]) objArr);
            }
            if (objArr instanceof short[]) {
                return hashCode((short[]) objArr);
            }
            if (objArr instanceof char[]) {
                return hashCode((char[]) objArr);
            }
            if (objArr instanceof byte[]) {
                return hashCode((byte[]) objArr);
            }
            if (objArr instanceof double[]) {
                return hashCode((double[]) objArr);
            }
            if (objArr instanceof float[]) {
                return hashCode((float[]) objArr);
            }
            if (objArr instanceof boolean[]) {
                return hashCode((boolean[]) objArr);
            }
            if (objArr instanceof JceStruct[]) {
                return hashCode((JceStruct[]) objArr);
            }
        }
        return 629;
    }

    public static int hashCode(short s) {
        return s + 629;
    }

    public static int hashCode(boolean z) {
        return (z ? 0 : 1) + 629;
    }

    public static int hashCode(byte[] bArr) {
        if (bArr == null) {
            return 629;
        }
        int i = 17;
        for (byte b2 : bArr) {
            i = (i * 37) + b2;
        }
        return i;
    }

    public static int hashCode(char[] cArr) {
        if (cArr == null) {
            return 629;
        }
        int i = 17;
        for (char c : cArr) {
            i = (i * 37) + c;
        }
        return i;
    }

    public static int hashCode(double[] dArr) {
        if (dArr == null) {
            return 629;
        }
        int i = 17;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            i = (i * 37) + ((int) (Double.doubleToLongBits(dArr[i2]) ^ (Double.doubleToLongBits(dArr[i2]) >> 32)));
        }
        return i;
    }

    public static int hashCode(float[] fArr) {
        if (fArr == null) {
            return 629;
        }
        int i = 17;
        for (float f : fArr) {
            i = (i * 37) + Float.floatToIntBits(f);
        }
        return i;
    }

    public static int hashCode(int[] iArr) {
        if (iArr == null) {
            return 629;
        }
        int i = 17;
        for (int i2 : iArr) {
            i = (i * 37) + i2;
        }
        return i;
    }

    public static int hashCode(long[] jArr) {
        if (jArr == null) {
            return 629;
        }
        int i = 17;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            i = (i * 37) + ((int) (jArr[i2] ^ (jArr[i2] >> 32)));
        }
        return i;
    }

    public static int hashCode(JceStruct[] jceStructArr) {
        if (jceStructArr == null) {
            return 629;
        }
        int i = 17;
        for (JceStruct jceStruct : jceStructArr) {
            i = (i * 37) + jceStruct.hashCode();
        }
        return i;
    }

    public static int hashCode(short[] sArr) {
        if (sArr == null) {
            return 629;
        }
        int i = 17;
        for (short s : sArr) {
            i = (i * 37) + s;
        }
        return i;
    }

    public static int hashCode(boolean[] zArr) {
        if (zArr == null) {
            return 629;
        }
        int i = 17;
        for (int i2 = 0; i2 < zArr.length; i2++) {
            i = (zArr[i2] ? 0 : 1) + (i * 37);
        }
        return i;
    }
}
