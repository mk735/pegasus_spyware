package com.lenovo.safecenter.encoders;

public class MD5UtilWFL {
    static final byte[] a = {Byte.MIN_VALUE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private long[] b = new long[4];
    private long[] c = new long[2];
    private byte[] d = new byte[64];
    public String digestHexStr;
    private byte[] e = new byte[16];

    public String getMD5ofStr(String inbuf) {
        a();
        a(inbuf.getBytes(), inbuf.length());
        byte[] bArr = new byte[8];
        a(bArr, this.c, 8);
        int i = ((int) (this.c[0] >>> 3)) & 63;
        a(a, i < 56 ? 56 - i : 120 - i);
        a(bArr, 8);
        a(this.e, this.b, 16);
        this.digestHexStr = "";
        for (int i2 = 0; i2 < 16; i2++) {
            this.digestHexStr += byteHEX(this.e[i2]);
        }
        return this.digestHexStr;
    }

    public MD5UtilWFL() {
        a();
    }

    private void a() {
        this.c[0] = 0;
        this.c[1] = 0;
        this.b[0] = 1732584193;
        this.b[1] = 4023233417L;
        this.b[2] = 2562383102L;
        this.b[3] = 271733878;
    }

    private static long a(long a2, long b2, long c2, long d2, long x, long s, long ac) {
        long a3 = a2 + ((b2 & c2) | ((-1 ^ b2) & d2)) + x + ac;
        return ((long) ((((int) a3) << ((int) s)) | (((int) a3) >>> ((int) (32 - s))))) + b2;
    }

    private static long b(long a2, long b2, long c2, long d2, long x, long s, long ac) {
        long a3 = a2 + ((b2 & d2) | ((-1 ^ d2) & c2)) + x + ac;
        return ((long) ((((int) a3) << ((int) s)) | (((int) a3) >>> ((int) (32 - s))))) + b2;
    }

    private static long c(long a2, long b2, long c2, long d2, long x, long s, long ac) {
        long a3 = a2 + ((b2 ^ c2) ^ d2) + x + ac;
        return ((long) ((((int) a3) << ((int) s)) | (((int) a3) >>> ((int) (32 - s))))) + b2;
    }

    private static long d(long a2, long b2, long c2, long d2, long x, long s, long ac) {
        long a3 = a2 + (((-1 ^ d2) | b2) ^ c2) + x + ac;
        return ((long) ((((int) a3) << ((int) s)) | (((int) a3) >>> ((int) (32 - s))))) + b2;
    }

    private void a(byte[] inbuf, int inputLen) {
        int i;
        byte[] block = new byte[64];
        int index = ((int) (this.c[0] >>> 3)) & 63;
        long[] jArr = this.c;
        long j = jArr[0] + ((long) (inputLen << 3));
        jArr[0] = j;
        if (j < ((long) (inputLen << 3))) {
            long[] jArr2 = this.c;
            jArr2[1] = jArr2[1] + 1;
        }
        long[] jArr3 = this.c;
        jArr3[1] = jArr3[1] + ((long) (inputLen >>> 29));
        int partLen = 64 - index;
        if (inputLen >= partLen) {
            a(this.d, inbuf, index, 0, partLen);
            a(this.d);
            i = partLen;
            while (i + 63 < inputLen) {
                a(block, inbuf, 0, i, 64);
                a(block);
                i += 64;
            }
            index = 0;
        } else {
            i = 0;
        }
        a(this.d, inbuf, index, i, inputLen - i);
    }

    private static void a(byte[] output, byte[] input, int outpos, int inpos, int len) {
        for (int i = 0; i < len; i++) {
            output[outpos + i] = input[inpos + i];
        }
    }

    private void a(byte[] block) {
        long a2 = this.b[0];
        long b2 = this.b[1];
        long c2 = this.b[2];
        long d2 = this.b[3];
        long[] x = new long[16];
        int i = 0;
        for (int i2 = 0; i2 < 64; i2 += 4) {
            x[i] = b2iu(block[i2]) | (b2iu(block[i2 + 1]) << 8) | (b2iu(block[i2 + 2]) << 16) | (b2iu(block[i2 + 3]) << 24);
            i++;
        }
        long a3 = a(a2, b2, c2, d2, x[0], 7, 3614090360L);
        long d3 = a(d2, a3, b2, c2, x[1], 12, 3905402710L);
        long c3 = a(c2, d3, a3, b2, x[2], 17, 606105819);
        long b3 = a(b2, c3, d3, a3, x[3], 22, 3250441966L);
        long a4 = a(a3, b3, c3, d3, x[4], 7, 4118548399L);
        long d4 = a(d3, a4, b3, c3, x[5], 12, 1200080426);
        long c4 = a(c3, d4, a4, b3, x[6], 17, 2821735955L);
        long b4 = a(b3, c4, d4, a4, x[7], 22, 4249261313L);
        long a5 = a(a4, b4, c4, d4, x[8], 7, 1770035416);
        long d5 = a(d4, a5, b4, c4, x[9], 12, 2336552879L);
        long c5 = a(c4, d5, a5, b4, x[10], 17, 4294925233L);
        long b5 = a(b4, c5, d5, a5, x[11], 22, 2304563134L);
        long a6 = a(a5, b5, c5, d5, x[12], 7, 1804603682);
        long d6 = a(d5, a6, b5, c5, x[13], 12, 4254626195L);
        long c6 = a(c5, d6, a6, b5, x[14], 17, 2792965006L);
        long b6 = a(b5, c6, d6, a6, x[15], 22, 1236535329);
        long a7 = b(a6, b6, c6, d6, x[1], 5, 4129170786L);
        long d7 = b(d6, a7, b6, c6, x[6], 9, 3225465664L);
        long c7 = b(c6, d7, a7, b6, x[11], 14, 643717713);
        long b7 = b(b6, c7, d7, a7, x[0], 20, 3921069994L);
        long a8 = b(a7, b7, c7, d7, x[5], 5, 3593408605L);
        long d8 = b(d7, a8, b7, c7, x[10], 9, 38016083);
        long c8 = b(c7, d8, a8, b7, x[15], 14, 3634488961L);
        long b8 = b(b7, c8, d8, a8, x[4], 20, 3889429448L);
        long a9 = b(a8, b8, c8, d8, x[9], 5, 568446438);
        long d9 = b(d8, a9, b8, c8, x[14], 9, 3275163606L);
        long c9 = b(c8, d9, a9, b8, x[3], 14, 4107603335L);
        long b9 = b(b8, c9, d9, a9, x[8], 20, 1163531501);
        long a10 = b(a9, b9, c9, d9, x[13], 5, 2850285829L);
        long d10 = b(d9, a10, b9, c9, x[2], 9, 4243563512L);
        long c10 = b(c9, d10, a10, b9, x[7], 14, 1735328473);
        long b10 = b(b9, c10, d10, a10, x[12], 20, 2368359562L);
        long a11 = c(a10, b10, c10, d10, x[5], 4, 4294588738L);
        long d11 = c(d10, a11, b10, c10, x[8], 11, 2272392833L);
        long c11 = c(c10, d11, a11, b10, x[11], 16, 1839030562);
        long b11 = c(b10, c11, d11, a11, x[14], 23, 4259657740L);
        long a12 = c(a11, b11, c11, d11, x[1], 4, 2763975236L);
        long d12 = c(d11, a12, b11, c11, x[4], 11, 1272893353);
        long c12 = c(c11, d12, a12, b11, x[7], 16, 4139469664L);
        long b12 = c(b11, c12, d12, a12, x[10], 23, 3200236656L);
        long a13 = c(a12, b12, c12, d12, x[13], 4, 681279174);
        long d13 = c(d12, a13, b12, c12, x[0], 11, 3936430074L);
        long c13 = c(c12, d13, a13, b12, x[3], 16, 3572445317L);
        long b13 = c(b12, c13, d13, a13, x[6], 23, 76029189);
        long a14 = c(a13, b13, c13, d13, x[9], 4, 3654602809L);
        long d14 = c(d13, a14, b13, c13, x[12], 11, 3873151461L);
        long c14 = c(c13, d14, a14, b13, x[15], 16, 530742520);
        long b14 = c(b13, c14, d14, a14, x[2], 23, 3299628645L);
        long a15 = d(a14, b14, c14, d14, x[0], 6, 4096336452L);
        long d15 = d(d14, a15, b14, c14, x[7], 10, 1126891415);
        long c15 = d(c14, d15, a15, b14, x[14], 15, 2878612391L);
        long b15 = d(b14, c15, d15, a15, x[5], 21, 4237533241L);
        long a16 = d(a15, b15, c15, d15, x[12], 6, 1700485571);
        long d16 = d(d15, a16, b15, c15, x[3], 10, 2399980690L);
        long c16 = d(c15, d16, a16, b15, x[10], 15, 4293915773L);
        long b16 = d(b15, c16, d16, a16, x[1], 21, 2240044497L);
        long a17 = d(a16, b16, c16, d16, x[8], 6, 1873313359);
        long d17 = d(d16, a17, b16, c16, x[15], 10, 4264355552L);
        long c17 = d(c16, d17, a17, b16, x[6], 15, 2734768916L);
        long b17 = d(b16, c17, d17, a17, x[13], 21, 1309151649);
        long a18 = d(a17, b17, c17, d17, x[4], 6, 4149444226L);
        long d18 = d(d17, a18, b17, c17, x[11], 10, 3174756917L);
        long c18 = d(c17, d18, a18, b17, x[2], 15, 718787259);
        long b18 = d(b17, c18, d18, a18, x[9], 21, 3951481745L);
        long[] jArr = this.b;
        jArr[0] = jArr[0] + a18;
        long[] jArr2 = this.b;
        jArr2[1] = jArr2[1] + b18;
        long[] jArr3 = this.b;
        jArr3[2] = jArr3[2] + c18;
        long[] jArr4 = this.b;
        jArr4[3] = jArr4[3] + d18;
    }

    private static void a(byte[] output, long[] input, int len) {
        int i = 0;
        for (int j = 0; j < len; j += 4) {
            output[j] = (byte) ((int) (input[i] & 255));
            output[j + 1] = (byte) ((int) ((input[i] >>> 8) & 255));
            output[j + 2] = (byte) ((int) ((input[i] >>> 16) & 255));
            output[j + 3] = (byte) ((int) ((input[i] >>> 24) & 255));
            i++;
        }
    }

    public static long b2iu(byte b2) {
        return b2 < 0 ? (long) (b2 & 255) : (long) b2;
    }

    public static String byteHEX(byte ib) {
        char[] Digit = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        return new String(new char[]{Digit[(ib >>> 4) & 15], Digit[ib & 15]});
    }
}
