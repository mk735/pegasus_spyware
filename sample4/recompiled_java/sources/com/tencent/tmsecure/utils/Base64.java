package com.tencent.tmsecure.utils;

import java.io.UnsupportedEncodingException;

public class Base64 {
    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;
    static final /* synthetic */ boolean a = (!Base64.class.desiredAssertionStatus());

    static abstract class a {
        public byte[] a;
        public int b;

        a() {
        }
    }

    /* access modifiers changed from: package-private */
    public static class b extends a {
        private static final int[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int e;
        private int f;
        private final int[] g;

        public b(int i, byte[] bArr) {
            this.a = bArr;
            this.g = (i & 8) == 0 ? c : d;
            this.e = 0;
            this.f = 0;
        }

        public final boolean a(byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            if (this.e == 6) {
                return false;
            }
            int i5 = i2 + i;
            int i6 = this.e;
            int i7 = this.f;
            int i8 = 0;
            byte[] bArr2 = this.a;
            int[] iArr = this.g;
            int i9 = i;
            while (true) {
                if (i9 < i5) {
                    if (i6 == 0) {
                        while (i9 + 4 <= i5 && (i7 = (iArr[bArr[i9] & 255] << 18) | (iArr[bArr[i9 + 1] & 255] << 12) | (iArr[bArr[i9 + 2] & 255] << 6) | iArr[bArr[i9 + 3] & 255]) >= 0) {
                            bArr2[i8 + 2] = (byte) i7;
                            bArr2[i8 + 1] = (byte) (i7 >> 8);
                            bArr2[i8] = (byte) (i7 >> 16);
                            i8 += 3;
                            i9 += 4;
                        }
                        if (i9 >= i5) {
                            i3 = i7;
                        }
                    }
                    int i10 = i9 + 1;
                    int i11 = iArr[bArr[i9] & 255];
                    switch (i6) {
                        case 0:
                            if (i11 >= 0) {
                                i4 = i6 + 1;
                                i7 = i11;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        case 1:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                i4 = i6 + 1;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        case 2:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                i4 = i6 + 1;
                                continue;
                            } else if (i11 == -2) {
                                bArr2[i8] = (byte) (i7 >> 4);
                                i4 = 4;
                                i8++;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i6 = i4;
                            i9 = i10;
                            break;
                        case 3:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                bArr2[i8 + 2] = (byte) i7;
                                bArr2[i8 + 1] = (byte) (i7 >> 8);
                                bArr2[i8] = (byte) (i7 >> 16);
                                i8 += 3;
                                i4 = 0;
                                continue;
                            } else if (i11 == -2) {
                                bArr2[i8 + 1] = (byte) (i7 >> 2);
                                bArr2[i8] = (byte) (i7 >> 10);
                                i8 += 2;
                                i4 = 5;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i6 = i4;
                            i9 = i10;
                            break;
                        case 4:
                            if (i11 == -2) {
                                i4 = i6 + 1;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                        case 5:
                            if (i11 != -1) {
                                this.e = 6;
                                return false;
                            }
                            break;
                    }
                    i4 = i6;
                    i6 = i4;
                    i9 = i10;
                } else {
                    i3 = i7;
                }
            }
            switch (i6) {
                case 1:
                    this.e = 6;
                    return false;
                case 2:
                    bArr2[i8] = (byte) (i3 >> 4);
                    i8++;
                    break;
                case 3:
                    int i12 = i8 + 1;
                    bArr2[i8] = (byte) (i3 >> 10);
                    i8 = i12 + 1;
                    bArr2[i12] = (byte) (i3 >> 2);
                    break;
                case 4:
                    this.e = 6;
                    return false;
            }
            this.e = i6;
            this.b = i8;
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public static class c extends a {
        static final /* synthetic */ boolean g = (!Base64.class.desiredAssertionStatus());
        private static final byte[] h = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        private static final byte[] i = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        int c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        private final byte[] j;
        private int k;
        private final byte[] l;

        public c(int i2) {
            boolean z = true;
            this.a = null;
            this.d = (i2 & 1) == 0;
            this.e = (i2 & 2) == 0;
            this.f = (i2 & 4) == 0 ? false : z;
            this.l = (i2 & 8) == 0 ? h : i;
            this.j = new byte[2];
            this.c = 0;
            this.k = this.e ? 19 : -1;
        }

        /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
        public final boolean a(byte[] bArr, int i2, int i3) {
            int i4;
            int i5;
            int i6;
            int i7;
            byte b;
            byte b2;
            int i8;
            byte b3;
            int i9;
            byte[] bArr2 = this.l;
            byte[] bArr3 = this.a;
            int i10 = 0;
            int i11 = this.k;
            int i12 = i3 + i2;
            switch (this.c) {
                case 0:
                    i5 = -1;
                    i4 = i2;
                    break;
                case 1:
                    if (i2 + 2 <= i12) {
                        int i13 = i2 + 1;
                        this.c = 0;
                        i5 = ((this.j[0] & 255) << 16) | ((bArr[i2] & 255) << 8) | (bArr[i13] & 255);
                        i4 = i13 + 1;
                        break;
                    }
                    i5 = -1;
                    i4 = i2;
                    break;
                case 2:
                    if (i2 + 1 <= i12) {
                        int i14 = ((this.j[0] & 255) << 16) | ((this.j[1] & 255) << 8);
                        i4 = i2 + 1;
                        this.c = 0;
                        i5 = i14 | (bArr[i2] & 255);
                        break;
                    }
                    i5 = -1;
                    i4 = i2;
                    break;
                default:
                    i5 = -1;
                    i4 = i2;
                    break;
            }
            if (i5 != -1) {
                bArr3[0] = bArr2[(i5 >> 18) & 63];
                bArr3[1] = bArr2[(i5 >> 12) & 63];
                bArr3[2] = bArr2[(i5 >> 6) & 63];
                int i15 = 4;
                bArr3[3] = bArr2[i5 & 63];
                int i16 = i11 - 1;
                if (i16 == 0) {
                    if (this.f) {
                        i15 = 5;
                        bArr3[4] = 13;
                    }
                    i10 = i15 + 1;
                    bArr3[i15] = 10;
                    i6 = 19;
                } else {
                    i6 = i16;
                    i10 = 4;
                }
            } else {
                i6 = i11;
            }
            while (i4 + 3 <= i12) {
                int i17 = ((bArr[i4] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8) | (bArr[i4 + 2] & 255);
                bArr3[i10] = bArr2[(i17 >> 18) & 63];
                bArr3[i10 + 1] = bArr2[(i17 >> 12) & 63];
                bArr3[i10 + 2] = bArr2[(i17 >> 6) & 63];
                bArr3[i10 + 3] = bArr2[i17 & 63];
                i4 += 3;
                int i18 = i10 + 4;
                int i19 = i6 - 1;
                if (i19 == 0) {
                    if (this.f) {
                        i9 = i18 + 1;
                        bArr3[i18] = 13;
                    } else {
                        i9 = i18;
                    }
                    i10 = i9 + 1;
                    bArr3[i9] = 10;
                    i6 = 19;
                } else {
                    i6 = i19;
                    i10 = i18;
                }
            }
            if (i4 - this.c == i12 - 1) {
                int i20 = 0;
                if (this.c > 0) {
                    i20 = 1;
                    b3 = this.j[0];
                } else {
                    b3 = bArr[i4];
                    i4++;
                }
                int i21 = (b3 & 255) << 4;
                this.c -= i20;
                int i22 = i10 + 1;
                bArr3[i10] = bArr2[(i21 >> 6) & 63];
                int i23 = i22 + 1;
                bArr3[i22] = bArr2[i21 & 63];
                if (this.d) {
                    int i24 = i23 + 1;
                    bArr3[i23] = 61;
                    i23 = i24 + 1;
                    bArr3[i24] = 61;
                }
                if (this.e) {
                    if (this.f) {
                        bArr3[i23] = 13;
                        i23++;
                    }
                    bArr3[i23] = 10;
                    i23++;
                }
                i10 = i23;
            } else if (i4 - this.c == i12 - 2) {
                int i25 = 0;
                if (this.c > 1) {
                    i25 = 1;
                    b = this.j[0];
                } else {
                    b = bArr[i4];
                    i4++;
                }
                int i26 = (b & 255) << 10;
                if (this.c > 0) {
                    b2 = this.j[i25];
                    i25++;
                } else {
                    b2 = bArr[i4];
                    i4++;
                }
                int i27 = ((b2 & 255) << 2) | i26;
                this.c -= i25;
                int i28 = i10 + 1;
                bArr3[i10] = bArr2[(i27 >> 12) & 63];
                int i29 = i28 + 1;
                bArr3[i28] = bArr2[(i27 >> 6) & 63];
                int i30 = i29 + 1;
                bArr3[i29] = bArr2[i27 & 63];
                if (this.d) {
                    i8 = i30 + 1;
                    bArr3[i30] = 61;
                } else {
                    i8 = i30;
                }
                if (this.e) {
                    if (this.f) {
                        bArr3[i8] = 13;
                        i8++;
                    }
                    bArr3[i8] = 10;
                    i8++;
                }
                i10 = i8;
            } else if (this.e && i10 > 0 && i6 != 19) {
                if (this.f) {
                    i7 = i10 + 1;
                    bArr3[i10] = 13;
                } else {
                    i7 = i10;
                }
                i10 = i7 + 1;
                bArr3[i7] = 10;
            }
            if (!g && this.c != 0) {
                throw new AssertionError();
            } else if (g || i4 == i12) {
                this.b = i10;
                this.k = i6;
                return true;
            } else {
                throw new AssertionError();
            }
        }
    }

    private Base64() {
    }

    public static byte[] decode(String str, int i) {
        return decode(str.getBytes(), i);
    }

    public static byte[] decode(byte[] bArr, int i) {
        return decode(bArr, 0, bArr.length, i);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        b bVar = new b(i3, new byte[((i2 * 3) / 4)]);
        if (!bVar.a(bArr, i, i2)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (bVar.b == bVar.a.length) {
            return bVar.a;
        } else {
            byte[] bArr2 = new byte[bVar.b];
            System.arraycopy(bVar.a, 0, bArr2, 0, bVar.b);
            return bArr2;
        }
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, bArr.length, i);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        c cVar = new c(i3);
        int i4 = (i2 / 3) * 4;
        if (!cVar.d) {
            switch (i2 % 3) {
                case 1:
                    i4 += 2;
                    break;
                case 2:
                    i4 += 3;
                    break;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (cVar.e && i2 > 0) {
            i4 += (cVar.f ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        cVar.a = new byte[i4];
        cVar.a(bArr, i, i2);
        if (a || cVar.b == i4) {
            return cVar.a;
        }
        throw new AssertionError();
    }

    public static String encodeToString(byte[] bArr, int i) {
        try {
            return new String(encode(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static String encodeToString(byte[] bArr, int i, int i2, int i3) {
        try {
            return new String(encode(bArr, i, i2, i3), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
