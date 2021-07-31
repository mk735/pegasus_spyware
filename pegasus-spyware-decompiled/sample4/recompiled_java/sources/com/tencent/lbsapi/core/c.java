package com.tencent.lbsapi.core;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Random;

public class c {
    public static final int a = 79764919;
    public static final int b = 2;
    public static final int c = 7;
    private byte[] d;
    private byte[] e;
    private byte[] f;
    private int g;
    private int h;
    private int i;
    private int j;
    private byte[] k;
    private boolean l = true;
    private int m;
    private Random n = new Random();

    public static long a(byte[] bArr, int i2, int i3) {
        long j2 = 0;
        int i4 = i3 > 8 ? i2 + 8 : i2 + i3;
        while (i2 < i4) {
            j2 = (j2 << 8) | ((long) (bArr[i2] & 255));
            i2++;
        }
        return (j2 >>> 32) | (4294967295L & j2);
    }

    private void a() {
        this.i = 0;
        while (this.i < 8) {
            if (this.l) {
                byte[] bArr = this.d;
                int i2 = this.i;
                bArr[i2] = (byte) (bArr[i2] ^ this.e[this.i]);
            } else {
                byte[] bArr2 = this.d;
                int i3 = this.i;
                bArr2[i3] = (byte) (bArr2[i3] ^ this.f[this.h + this.i]);
            }
            this.i++;
        }
        System.arraycopy(a(this.d), 0, this.f, this.g, 8);
        this.i = 0;
        while (this.i < 8) {
            byte[] bArr3 = this.f;
            int i4 = this.g + this.i;
            bArr3[i4] = (byte) (bArr3[i4] ^ this.e[this.i]);
            this.i++;
        }
        System.arraycopy(this.d, 0, this.e, 0, 8);
        this.h = this.g;
        this.g += 8;
        this.i = 0;
        this.l = false;
    }

    private byte[] a(byte[] bArr) {
        int i2 = 16;
        try {
            long a2 = a(bArr, 0, 4);
            long a3 = a(bArr, 4, 4);
            long a4 = a(this.k, 0, 4);
            long a5 = a(this.k, 4, 4);
            long a6 = a(this.k, 8, 4);
            long a7 = a(this.k, 12, 4);
            long j2 = 0;
            while (true) {
                int i3 = i2 - 1;
                if (i2 > 0) {
                    j2 = (j2 + 2654435769L) & 4294967295L;
                    a2 = (a2 + ((((a3 << 4) + a4) ^ (a3 + j2)) ^ ((a3 >>> 5) + a5))) & 4294967295L;
                    a3 = (a3 + ((((a2 << 4) + a6) ^ (a2 + j2)) ^ ((a2 >>> 5) + a7))) & 4294967295L;
                    i2 = i3;
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8);
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeInt((int) a2);
                    dataOutputStream.writeInt((int) a3);
                    dataOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e2) {
            return null;
        }
    }

    private byte[] a(byte[] bArr, int i2) {
        int i3 = 16;
        try {
            long a2 = a(bArr, i2, 4);
            long a3 = a(bArr, i2 + 4, 4);
            long a4 = a(this.k, 0, 4);
            long a5 = a(this.k, 4, 4);
            long a6 = a(this.k, 8, 4);
            long a7 = a(this.k, 12, 4);
            long j2 = 3816266640L;
            while (true) {
                int i4 = i3 - 1;
                if (i3 > 0) {
                    a3 = (a3 - ((((a2 << 4) + a6) ^ (a2 + j2)) ^ ((a2 >>> 5) + a7))) & 4294967295L;
                    a2 = (a2 - ((((a3 << 4) + a4) ^ (a3 + j2)) ^ ((a3 >>> 5) + a5))) & 4294967295L;
                    j2 = (j2 - 2654435769L) & 4294967295L;
                    i3 = i4;
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8);
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeInt((int) a2);
                    dataOutputStream.writeInt((int) a3);
                    dataOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e2) {
            return null;
        }
    }

    private boolean b(byte[] bArr, int i2, int i3) {
        this.i = 0;
        while (this.i < 8) {
            if (this.m + this.i >= i3) {
                return true;
            }
            byte[] bArr2 = this.e;
            int i4 = this.i;
            bArr2[i4] = (byte) (bArr2[i4] ^ bArr[(this.g + i2) + this.i]);
            this.i++;
        }
        this.e = a(this.e, 0);
        if (this.e == null) {
            return false;
        }
        this.m += 8;
        this.g += 8;
        this.i = 0;
        return true;
    }

    public byte[] a(byte[] bArr, int i2, int i3, byte[] bArr2) {
        this.h = 0;
        this.g = 0;
        this.k = bArr2;
        byte[] bArr3 = new byte[(i2 + 8)];
        if (i3 % 8 != 0 || i3 < 16) {
            return null;
        }
        this.e = a(bArr, i2);
        this.i = this.e[0] & 7;
        int i4 = (i3 - this.i) - 10;
        if (i4 < 0) {
            return null;
        }
        for (int i5 = i2; i5 < bArr3.length; i5++) {
            bArr3[i5] = 0;
        }
        this.f = new byte[i4];
        this.h = 0;
        this.g = 8;
        this.m = 8;
        this.i++;
        this.j = 1;
        byte[] bArr4 = bArr3;
        while (this.j <= 2) {
            if (this.i < 8) {
                this.i++;
                this.j++;
            }
            if (this.i == 8) {
                if (!b(bArr, i2, i3)) {
                    return null;
                }
                bArr4 = bArr;
            }
        }
        int i6 = i4;
        int i7 = 0;
        byte[] bArr5 = bArr4;
        while (i6 != 0) {
            if (this.i < 8) {
                this.f[i7] = (byte) (bArr5[(this.h + i2) + this.i] ^ this.e[this.i]);
                i7++;
                i6--;
                this.i++;
            }
            if (this.i == 8) {
                this.h = this.g - 8;
                if (!b(bArr, i2, i3)) {
                    return null;
                }
                bArr5 = bArr;
            }
        }
        this.j = 1;
        byte[] bArr6 = bArr5;
        while (this.j < 8) {
            if (this.i < 8) {
                if ((bArr6[(this.h + i2) + this.i] ^ this.e[this.i]) != 0) {
                    return null;
                }
                this.i++;
            }
            if (this.i == 8) {
                this.h = this.g;
                if (!b(bArr, i2, i3)) {
                    return null;
                }
                bArr6 = bArr;
            }
            this.j++;
        }
        return this.f;
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        return a(bArr, 0, bArr.length, bArr2);
    }

    public byte[] b(byte[] bArr, int i2, int i3, byte[] bArr2) {
        int i4;
        int i5;
        this.d = new byte[8];
        this.e = new byte[8];
        this.i = 1;
        this.j = 0;
        this.h = 0;
        this.g = 0;
        this.k = bArr2;
        this.l = true;
        this.i = (i3 + 10) % 8;
        if (this.i != 0) {
            this.i = 8 - this.i;
        }
        this.f = new byte[(this.i + i3 + 10)];
        this.d[0] = (byte) ((this.n.nextInt() & 248) | this.i);
        for (int i6 = 1; i6 <= this.i; i6++) {
            this.d[i6] = (byte) (this.n.nextInt() & 255);
        }
        this.i++;
        for (int i7 = 0; i7 < 8; i7++) {
            this.e[i7] = 0;
        }
        this.j = 1;
        while (this.j <= 2) {
            if (this.i < 8) {
                byte[] bArr3 = this.d;
                int i8 = this.i;
                this.i = i8 + 1;
                bArr3[i8] = (byte) (this.n.nextInt() & 255);
                this.j++;
            }
            if (this.i == 8) {
                a();
            }
        }
        int i9 = i2;
        int i10 = i3;
        while (i10 > 0) {
            if (this.i < 8) {
                byte[] bArr4 = this.d;
                int i11 = this.i;
                this.i = i11 + 1;
                i4 = i9 + 1;
                bArr4[i11] = bArr[i9];
                i5 = i10 - 1;
            } else {
                i4 = i9;
                i5 = i10;
            }
            if (this.i == 8) {
                a();
                i10 = i5;
                i9 = i4;
            } else {
                i10 = i5;
                i9 = i4;
            }
        }
        this.j = 1;
        while (this.j <= 7) {
            if (this.i < 8) {
                byte[] bArr5 = this.d;
                int i12 = this.i;
                this.i = i12 + 1;
                bArr5[i12] = 0;
                this.j++;
            }
            if (this.i == 8) {
                a();
            }
        }
        return this.f;
    }

    public byte[] b(byte[] bArr, byte[] bArr2) {
        return b(bArr, 0, bArr.length, bArr2);
    }
}
