package com.qq.taf.jce;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import puw.a;
import puw.d;

public class JceOutputStream {
    protected String a;
    private ByteBuffer b;

    public JceOutputStream() {
        this(128);
    }

    public JceOutputStream(int i) {
        this.a = "GBK";
        this.b = ByteBuffer.allocate(i);
    }

    public JceOutputStream(ByteBuffer byteBuffer) {
        this.a = "GBK";
        this.b = byteBuffer;
    }

    private void a(Object[] objArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(objArr.length, 0);
        for (Object obj : objArr) {
            write(obj, 0);
        }
    }

    public static void main(String[] strArr) {
        JceOutputStream jceOutputStream = new JceOutputStream();
        jceOutputStream.write(1311768467283714885L, 0);
        System.out.println(d.a(jceOutputStream.getByteBuffer().array()));
        System.out.println(Arrays.toString(jceOutputStream.toByteArray()));
    }

    public ByteBuffer getByteBuffer() {
        return this.b;
    }

    public void reserve(int i) {
        if (this.b.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.b.capacity() + i) * 2);
            allocate.put(this.b.array(), 0, this.b.position());
            this.b = allocate;
        }
    }

    public int setServerEncoding(String str) {
        this.a = str;
        return 0;
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[this.b.position()];
        System.arraycopy(this.b.array(), 0, bArr, 0, this.b.position());
        return bArr;
    }

    public void write(byte b2, int i) {
        reserve(3);
        if (b2 == 0) {
            writeHead((byte) 12, i);
            return;
        }
        writeHead((byte) 0, i);
        this.b.put(b2);
    }

    public void write(double d, int i) {
        reserve(10);
        writeHead((byte) 5, i);
        this.b.putDouble(d);
    }

    public void write(float f, int i) {
        reserve(6);
        writeHead((byte) 4, i);
        this.b.putFloat(f);
    }

    public void write(int i, int i2) {
        reserve(6);
        if (i < -32768 || i > 32767) {
            writeHead((byte) 2, i2);
            this.b.putInt(i);
            return;
        }
        write((short) i, i2);
    }

    public void write(long j, int i) {
        reserve(10);
        if (j < -2147483648L || j > 2147483647L) {
            writeHead((byte) 3, i);
            this.b.putLong(j);
            return;
        }
        write((int) j, i);
    }

    public void write(JceStruct jceStruct, int i) {
        reserve(2);
        writeHead((byte) 10, i);
        jceStruct.writeTo(this);
        reserve(2);
        writeHead((byte) 11, 0);
    }

    public void write(Boolean bool, int i) {
        write(bool.booleanValue(), i);
    }

    public void write(Byte b2, int i) {
        write(b2.byteValue(), i);
    }

    public void write(Double d, int i) {
        write(d.doubleValue(), i);
    }

    public void write(Float f, int i) {
        write(f.floatValue(), i);
    }

    public void write(Integer num, int i) {
        write(num.intValue(), i);
    }

    public void write(Long l, int i) {
        write(l.longValue(), i);
    }

    public void write(Object obj, int i) {
        if (obj instanceof Byte) {
            write(((Byte) obj).byteValue(), i);
        } else if (obj instanceof Boolean) {
            write(((Boolean) obj).booleanValue(), i);
        } else if (obj instanceof Short) {
            write(((Short) obj).shortValue(), i);
        } else if (obj instanceof Integer) {
            write(((Integer) obj).intValue(), i);
        } else if (obj instanceof Long) {
            write(((Long) obj).longValue(), i);
        } else if (obj instanceof Float) {
            write(((Float) obj).floatValue(), i);
        } else if (obj instanceof Double) {
            write(((Double) obj).doubleValue(), i);
        } else if (obj instanceof String) {
            write((String) obj, i);
        } else if (obj instanceof Map) {
            write((Map) obj, i);
        } else if (obj instanceof List) {
            write((Collection) ((List) obj), i);
        } else if (obj instanceof JceStruct) {
            write((JceStruct) obj, i);
        } else if (obj instanceof byte[]) {
            write((byte[]) obj, i);
        } else if (obj instanceof boolean[]) {
            write((boolean[]) obj, i);
        } else if (obj instanceof short[]) {
            write((short[]) obj, i);
        } else if (obj instanceof int[]) {
            write((int[]) obj, i);
        } else if (obj instanceof long[]) {
            write((long[]) obj, i);
        } else if (obj instanceof float[]) {
            write((float[]) obj, i);
        } else if (obj instanceof double[]) {
            write((double[]) obj, i);
        } else if (obj.getClass().isArray()) {
            a((Object[]) obj, i);
        } else if (obj instanceof Collection) {
            write((Collection) obj, i);
        } else {
            throw new a("write object error: unsupport type. " + obj.getClass());
        }
    }

    public void write(Short sh, int i) {
        write(sh.shortValue(), i);
    }

    public void write(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.a);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        reserve(bytes.length + 10);
        if (bytes.length > 255) {
            writeHead((byte) 7, i);
            this.b.putInt(bytes.length);
            this.b.put(bytes);
            return;
        }
        writeHead((byte) 6, i);
        this.b.put((byte) bytes.length);
        this.b.put(bytes);
    }

    public <T> void write(Collection<T> collection, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t : collection) {
                write((Object) t, 0);
            }
        }
    }

    public <K, V> void write(Map<K, V> map, int i) {
        reserve(8);
        writeHead((byte) 8, i);
        write(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                write((Object) entry.getKey(), 0);
                write((Object) entry.getValue(), 1);
            }
        }
    }

    public void write(short s, int i) {
        reserve(4);
        if (s < -128 || s > 127) {
            writeHead((byte) 1, i);
            this.b.putShort(s);
            return;
        }
        write((byte) s, i);
    }

    public void write(boolean z, int i) {
        write((byte) (z ? 1 : 0), i);
    }

    public void write(byte[] bArr, int i) {
        reserve(bArr.length + 8);
        writeHead((byte) 13, i);
        writeHead((byte) 0, 0);
        write(bArr.length, 0);
        this.b.put(bArr);
    }

    public void write(double[] dArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(dArr.length, 0);
        for (double d : dArr) {
            write(d, 0);
        }
    }

    public void write(float[] fArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(fArr.length, 0);
        for (float f : fArr) {
            write(f, 0);
        }
    }

    public void write(int[] iArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(iArr.length, 0);
        for (int i2 : iArr) {
            write(i2, 0);
        }
    }

    public void write(long[] jArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(jArr.length, 0);
        for (long j : jArr) {
            write(j, 0);
        }
    }

    public <T> void write(T[] tArr, int i) {
        a(tArr, i);
    }

    public void write(short[] sArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(sArr.length, 0);
        for (short s : sArr) {
            write(s, 0);
        }
    }

    public void write(boolean[] zArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(zArr.length, 0);
        for (boolean z : zArr) {
            write(z, 0);
        }
    }

    public void writeByteString(String str, int i) {
        reserve(str.length() + 10);
        byte[] a2 = d.a(str);
        if (a2.length > 255) {
            writeHead((byte) 7, i);
            this.b.putInt(a2.length);
            this.b.put(a2);
            return;
        }
        writeHead((byte) 6, i);
        this.b.put((byte) a2.length);
        this.b.put(a2);
    }

    public void writeHead(byte b2, int i) {
        if (i < 15) {
            this.b.put((byte) ((i << 4) | b2));
        } else if (i < 256) {
            this.b.put((byte) (b2 | 240));
            this.b.put((byte) i);
        } else {
            throw new a("tag is too large: " + i);
        }
    }

    public void writeStringByte(String str, int i) {
        byte[] a2 = d.a(str);
        reserve(a2.length + 10);
        if (a2.length > 255) {
            writeHead((byte) 7, i);
            this.b.putInt(a2.length);
            this.b.put(a2);
            return;
        }
        writeHead((byte) 6, i);
        this.b.put((byte) a2.length);
        this.b.put(a2);
    }
}
