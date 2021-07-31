package com.tendcloud.tenddata;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class p {
    protected byte[] a = new byte[9];
    protected OutputStream b;

    public p(OutputStream outputStream) {
        this.b = outputStream;
    }

    public static int b(double d) {
        return 9;
    }

    public static int b(float f) {
        return 5;
    }

    public static int b(boolean z) {
        return 1;
    }

    public static int b(byte[] bArr) {
        if (bArr == null) {
            return 1;
        }
        return c(bArr.length) + bArr.length;
    }

    public static int c(int i) {
        if (i < 16) {
            return 1;
        }
        return i < 65536 ? 3 : 5;
    }

    public static int c(long j) {
        if (j < -32) {
            return j < -32768 ? j < -2147483648L ? 9 : 5 : j < -128 ? 3 : 2;
        }
        if (j < 128) {
            return 1;
        }
        return j < 65536 ? j < 256 ? 2 : 3 : j < 4294967296L ? 5 : 9;
    }

    public static int c(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return bytes.length + c(bytes.length);
        } catch (Exception e) {
            return 0;
        }
    }

    public p a() {
        this.b.write(-62);
        return this;
    }

    public p a(byte b2) {
        return b(b2);
    }

    public p a(double d) {
        return c(d);
    }

    public p a(float f) {
        return c(f);
    }

    public p a(int i) {
        return d(i);
    }

    public p a(long j) {
        return b(j);
    }

    public p a(h hVar) {
        if (hVar == null) {
            return b();
        }
        hVar.a(this);
        return this;
    }

    public p a(Boolean bool) {
        return bool == null ? b() : bool.booleanValue() ? c() : a();
    }

    public p a(Byte b2) {
        return b2 == null ? b() : b(b2.byteValue());
    }

    public p a(Double d) {
        return d == null ? b() : c(d.doubleValue());
    }

    public p a(Float f) {
        return f == null ? b() : c(f.floatValue());
    }

    public p a(Integer num) {
        return num == null ? b() : d(num.intValue());
    }

    public p a(Long l) {
        return l == null ? b() : b(l.longValue());
    }

    public p a(Short sh) {
        return sh == null ? b() : b(sh.shortValue());
    }

    public p a(String str) {
        return str == null ? b("") : b(str);
    }

    public p a(BigInteger bigInteger) {
        return bigInteger == null ? b() : b(bigInteger);
    }

    public p a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return b();
        }
        f(byteBuffer.remaining());
        return b(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
    }

    public p a(List list) {
        if (list == null) {
            return b();
        }
        b(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((String) it.next());
        }
        return this;
    }

    public p a(Map map) {
        if (map == null) {
            return b();
        }
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof String) {
                hashMap.put(str, obj.toString());
            } else if (obj instanceof Number) {
                hashMap.put(str, Double.valueOf(((Number) obj).doubleValue()));
            }
        }
        e(hashMap.size());
        for (Map.Entry entry : hashMap.entrySet()) {
            a((String) entry.getKey());
            Object value = entry.getValue();
            if (value instanceof Number) {
                a(((Number) value).doubleValue());
            } else if (value instanceof String) {
                a(value.toString());
            }
        }
        return this;
    }

    public p a(short s) {
        return b(s);
    }

    public p a(boolean z) {
        return z ? c() : a();
    }

    public p a(byte[] bArr) {
        if (bArr == null) {
            return b();
        }
        f(bArr.length);
        return d(bArr);
    }

    public p a(byte[] bArr, int i, int i2) {
        f(i2);
        return b(bArr, i, i2);
    }

    public p a(Long[] lArr) {
        if (lArr == null || lArr.length == 0) {
            return b();
        }
        b(lArr.length);
        for (Long l : lArr) {
            a(l.longValue());
        }
        return this;
    }

    public p b() {
        this.b.write(-64);
        return this;
    }

    public p b(byte b2) {
        if (b2 < -32) {
            this.a[0] = -48;
            this.a[1] = b2;
            this.b.write(this.a, 0, 2);
        } else {
            this.b.write(b2);
        }
        return this;
    }

    public p b(int i) {
        if (i < 16) {
            this.b.write((byte) (i | 144));
        } else if (i < 65536) {
            this.a[0] = -36;
            this.a[1] = (byte) (i >> 8);
            this.a[2] = (byte) (i >> 0);
            this.b.write(this.a, 0, 3);
        } else {
            this.a[0] = -35;
            this.a[1] = (byte) (i >> 24);
            this.a[2] = (byte) (i >> 16);
            this.a[3] = (byte) (i >> 8);
            this.a[4] = (byte) (i >> 0);
            this.b.write(this.a, 0, 5);
        }
        return this;
    }

    public p b(long j) {
        if (j < -32) {
            if (j < -32768) {
                if (j < -2147483648L) {
                    this.a[0] = -45;
                    this.a[1] = (byte) ((int) (j >> 56));
                    this.a[2] = (byte) ((int) (j >> 48));
                    this.a[3] = (byte) ((int) (j >> 40));
                    this.a[4] = (byte) ((int) (j >> 32));
                    this.a[5] = (byte) ((int) (j >> 24));
                    this.a[6] = (byte) ((int) (j >> 16));
                    this.a[7] = (byte) ((int) (j >> 8));
                    this.a[8] = (byte) ((int) (j >> 0));
                    this.b.write(this.a, 0, 9);
                } else {
                    this.a[0] = -46;
                    this.a[1] = (byte) ((int) (j >> 24));
                    this.a[2] = (byte) ((int) (j >> 16));
                    this.a[3] = (byte) ((int) (j >> 8));
                    this.a[4] = (byte) ((int) (j >> 0));
                    this.b.write(this.a, 0, 5);
                }
            } else if (j < -128) {
                this.a[0] = -47;
                this.a[1] = (byte) ((int) (j >> 8));
                this.a[2] = (byte) ((int) (j >> 0));
                this.b.write(this.a, 0, 3);
            } else {
                this.a[0] = -48;
                this.a[1] = (byte) ((int) j);
                this.b.write(this.a, 0, 2);
            }
        } else if (j < 128) {
            this.b.write((byte) ((int) j));
        } else if (j < 65536) {
            if (j < 256) {
                this.a[0] = -52;
                this.a[1] = (byte) ((int) j);
                this.b.write(this.a, 0, 2);
            } else {
                this.a[0] = -51;
                this.a[1] = (byte) ((int) ((65280 & j) >> 8));
                this.a[2] = (byte) ((int) ((255 & j) >> 0));
                this.b.write(this.a, 0, 3);
            }
        } else if (j < 4294967296L) {
            this.a[0] = -50;
            this.a[1] = (byte) ((int) ((-16777216 & j) >> 24));
            this.a[2] = (byte) ((int) ((16711680 & j) >> 16));
            this.a[3] = (byte) ((int) ((65280 & j) >> 8));
            this.a[4] = (byte) ((int) ((255 & j) >> 0));
            this.b.write(this.a, 0, 5);
        } else {
            this.a[0] = -49;
            this.a[1] = (byte) ((int) (j >> 56));
            this.a[2] = (byte) ((int) (j >> 48));
            this.a[3] = (byte) ((int) (j >> 40));
            this.a[4] = (byte) ((int) (j >> 32));
            this.a[5] = (byte) ((int) (j >> 24));
            this.a[6] = (byte) ((int) (j >> 16));
            this.a[7] = (byte) ((int) (j >> 8));
            this.a[8] = (byte) ((int) (j >> 0));
            this.b.write(this.a, 0, 9);
        }
        return this;
    }

    public p b(String str) {
        byte[] bytes = str.getBytes("UTF-8");
        f(bytes.length);
        return d(bytes);
    }

    public p b(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return b(bigInteger.longValue());
        }
        if (bigInteger.bitLength() > 64 || bigInteger.signum() < 0) {
            throw new IOException("can't pack BigInteger larger than 0xffffffffffffffff");
        }
        this.a[0] = -49;
        byte[] byteArray = bigInteger.toByteArray();
        this.a[1] = byteArray[byteArray.length - 8];
        this.a[2] = byteArray[byteArray.length - 7];
        this.a[3] = byteArray[byteArray.length - 6];
        this.a[4] = byteArray[byteArray.length - 5];
        this.a[5] = byteArray[byteArray.length - 4];
        this.a[6] = byteArray[byteArray.length - 3];
        this.a[7] = byteArray[byteArray.length - 2];
        this.a[8] = byteArray[byteArray.length - 1];
        this.b.write(this.a, 0, 9);
        return this;
    }

    public p b(ByteBuffer byteBuffer) {
        f(byteBuffer.remaining());
        return b(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
    }

    public p b(short s) {
        if (s < -32) {
            if (s < -128) {
                this.a[0] = -47;
                this.a[1] = (byte) (s >> 8);
                this.a[2] = (byte) (s >> 0);
                this.b.write(this.a, 0, 3);
            } else {
                this.a[0] = -48;
                this.a[1] = (byte) s;
                this.b.write(this.a, 0, 2);
            }
        } else if (s < 128) {
            this.b.write((byte) s);
        } else if (s < 256) {
            this.a[0] = -52;
            this.a[1] = (byte) s;
            this.b.write(this.a, 0, 2);
        } else {
            this.a[0] = -51;
            this.a[1] = (byte) (s >> 8);
            this.a[2] = (byte) (s >> 0);
            this.b.write(this.a, 0, 3);
        }
        return this;
    }

    public p b(byte[] bArr, int i, int i2) {
        this.b.write(bArr, i, i2);
        return this;
    }

    public p c() {
        this.b.write(-61);
        return this;
    }

    public p c(double d) {
        this.a[0] = -53;
        long doubleToRawLongBits = Double.doubleToRawLongBits(d);
        this.a[1] = (byte) ((int) (doubleToRawLongBits >> 56));
        this.a[2] = (byte) ((int) (doubleToRawLongBits >> 48));
        this.a[3] = (byte) ((int) (doubleToRawLongBits >> 40));
        this.a[4] = (byte) ((int) (doubleToRawLongBits >> 32));
        this.a[5] = (byte) ((int) (doubleToRawLongBits >> 24));
        this.a[6] = (byte) ((int) (doubleToRawLongBits >> 16));
        this.a[7] = (byte) ((int) (doubleToRawLongBits >> 8));
        this.a[8] = (byte) ((int) (doubleToRawLongBits >> 0));
        this.b.write(this.a, 0, 9);
        return this;
    }

    public p c(float f) {
        this.a[0] = -54;
        int floatToRawIntBits = Float.floatToRawIntBits(f);
        this.a[1] = (byte) (floatToRawIntBits >> 24);
        this.a[2] = (byte) (floatToRawIntBits >> 16);
        this.a[3] = (byte) (floatToRawIntBits >> 8);
        this.a[4] = (byte) (floatToRawIntBits >> 0);
        this.b.write(this.a, 0, 5);
        return this;
    }

    public p c(boolean z) {
        return z ? c() : a();
    }

    public p c(byte[] bArr) {
        f(bArr.length);
        return b(bArr, 0, bArr.length);
    }

    public p d(int i) {
        if (i < -32) {
            if (i < -32768) {
                this.a[0] = -46;
                this.a[1] = (byte) (i >> 24);
                this.a[2] = (byte) (i >> 16);
                this.a[3] = (byte) (i >> 8);
                this.a[4] = (byte) (i >> 0);
                this.b.write(this.a, 0, 5);
            } else if (i < -128) {
                this.a[0] = -47;
                this.a[1] = (byte) (i >> 8);
                this.a[2] = (byte) (i >> 0);
                this.b.write(this.a, 0, 3);
            } else {
                this.a[0] = -48;
                this.a[1] = (byte) i;
                this.b.write(this.a, 0, 2);
            }
        } else if (i < 128) {
            this.b.write((byte) i);
        } else if (i < 256) {
            this.a[0] = -52;
            this.a[1] = (byte) i;
            this.b.write(this.a, 0, 2);
        } else if (i < 65536) {
            this.a[0] = -51;
            this.a[1] = (byte) (i >> 8);
            this.a[2] = (byte) (i >> 0);
            this.b.write(this.a, 0, 3);
        } else {
            this.a[0] = -50;
            this.a[1] = (byte) (i >> 24);
            this.a[2] = (byte) (i >> 16);
            this.a[3] = (byte) (i >> 8);
            this.a[4] = (byte) (i >> 0);
            this.b.write(this.a, 0, 5);
        }
        return this;
    }

    public p d(byte[] bArr) {
        this.b.write(bArr);
        return this;
    }

    public p e(int i) {
        if (i < 16) {
            this.b.write((byte) (i | 128));
        } else if (i < 65536) {
            this.a[0] = -34;
            this.a[1] = (byte) (i >> 8);
            this.a[2] = (byte) (i >> 0);
            this.b.write(this.a, 0, 3);
        } else {
            this.a[0] = -33;
            this.a[1] = (byte) (i >> 24);
            this.a[2] = (byte) (i >> 16);
            this.a[3] = (byte) (i >> 8);
            this.a[4] = (byte) (i >> 0);
            this.b.write(this.a, 0, 5);
        }
        return this;
    }

    public p f(int i) {
        if (i < 32) {
            this.b.write((byte) (i | 160));
        } else if (i < 65536) {
            this.a[0] = -38;
            this.a[1] = (byte) (i >> 8);
            this.a[2] = (byte) (i >> 0);
            this.b.write(this.a, 0, 3);
        } else {
            this.a[0] = -37;
            this.a[1] = (byte) (i >> 24);
            this.a[2] = (byte) (i >> 16);
            this.a[3] = (byte) (i >> 8);
            this.a[4] = (byte) (i >> 0);
            this.b.write(this.a, 0, 5);
        }
        return this;
    }
}
