package com.qq.taf.jce;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import puw.d;
import puw.h;

public final class JceInputStream {
    protected String a = "GBK";
    private ByteBuffer b;

    public static class a {
        public byte a;
        public int b;
    }

    public JceInputStream() {
    }

    public JceInputStream(ByteBuffer byteBuffer) {
        this.b = byteBuffer;
    }

    public JceInputStream(byte[] bArr) {
        this.b = ByteBuffer.wrap(bArr);
    }

    public JceInputStream(byte[] bArr, int i) {
        this.b = ByteBuffer.wrap(bArr);
        this.b.position(i);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r9v0, resolved type: java.util.Map<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> Map<K, V> a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 8:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new h("size invalid: " + read);
                    }
                    for (int i2 = 0; i2 < read; i2++) {
                        map.put(read((Object) key, 0, true), read((Object) value, 1, true));
                    }
                    return map;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return map;
        } else {
            throw new h("require field not exist.");
        }
    }

    private void a() {
        a aVar = new a();
        readHead(aVar);
        a(aVar.a);
    }

    private void a(byte b2) {
        int i = 0;
        switch (b2) {
            case 0:
                a(1);
                return;
            case 1:
                a(2);
                return;
            case 2:
                a(4);
                return;
            case 3:
                a(8);
                return;
            case 4:
                a(4);
                return;
            case 5:
                a(8);
                return;
            case 6:
                int i2 = this.b.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                a(i2);
                return;
            case 7:
                a(this.b.getInt());
                return;
            case 8:
                int read = read(0, 0, true);
                while (i < read * 2) {
                    a();
                    i++;
                }
                return;
            case 9:
                int read2 = read(0, 0, true);
                while (i < read2) {
                    a();
                    i++;
                }
                return;
            case 10:
                skipToStructEnd();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar = new a();
                readHead(aVar);
                if (aVar.a != 0) {
                    throw new h("skipField with invalid type, type value: " + ((int) b2) + ", " + ((int) aVar.a));
                }
                a(read(0, 0, true));
                return;
            default:
                throw new h("invalid type.");
        }
    }

    private void a(int i) {
        this.b.position(this.b.position() + i);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v8, resolved type: T[] */
    /* JADX WARN: Multi-variable type inference failed */
    private <T> T[] a(T t, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new h("size invalid: " + read);
                    }
                    T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), read));
                    for (int i2 = 0; i2 < read; i2++) {
                        tArr[i2] = read((Object) t, 0, true);
                    }
                    return tArr;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new h("require field not exist.");
        }
    }

    public static void main(String[] strArr) {
    }

    public static int readHead(a aVar, ByteBuffer byteBuffer) {
        byte b2 = byteBuffer.get();
        aVar.a = (byte) (b2 & 15);
        aVar.b = (b2 & 240) >> 4;
        if (aVar.b != 15) {
            return 1;
        }
        aVar.b = byteBuffer.get();
        return 2;
    }

    public final JceStruct directRead(JceStruct jceStruct, int i, boolean z) {
        JceStruct jceStruct2 = null;
        if (skipToTag(i)) {
            try {
                jceStruct2 = jceStruct.newInit();
                a aVar = new a();
                readHead(aVar);
                if (aVar.a != 10) {
                    throw new h("type mismatch.");
                }
                jceStruct2.readFrom(this);
                skipToStructEnd();
            } catch (Exception e) {
                throw new h(e.getMessage());
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return jceStruct2;
    }

    public final ByteBuffer getBs() {
        return this.b;
    }

    public final byte read(byte b2, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 0:
                    return this.b.get();
                case 12:
                    return 0;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return b2;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final double read(double d, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 4:
                    return (double) this.b.getFloat();
                case 5:
                    return this.b.getDouble();
                case 12:
                    return 0.0d;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return d;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final float read(float f, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 4:
                    return this.b.getFloat();
                case 12:
                    return 0.0f;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return f;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final int read(int i, int i2, boolean z) {
        if (skipToTag(i2)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 0:
                    return this.b.get();
                case 1:
                    return this.b.getShort();
                case 2:
                    return this.b.getInt();
                case 12:
                    return 0;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return i;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final long read(long j, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 0:
                    return (long) this.b.get();
                case 1:
                    return (long) this.b.getShort();
                case 2:
                    return (long) this.b.getInt();
                case 3:
                    return this.b.getLong();
                case 12:
                    return 0;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return j;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final JceStruct read(JceStruct jceStruct, int i, boolean z) {
        JceStruct jceStruct2 = null;
        if (skipToTag(i)) {
            try {
                jceStruct2 = (JceStruct) jceStruct.getClass().newInstance();
                a aVar = new a();
                readHead(aVar);
                if (aVar.a != 10) {
                    throw new h("type mismatch.");
                }
                jceStruct2.readFrom(this);
                skipToStructEnd();
            } catch (Exception e) {
                throw new h(e.getMessage());
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return jceStruct2;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: com.qq.taf.jce.JceInputStream */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> Object read(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(read((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(read(false, i, z));
        }
        if (t instanceof Short) {
            return Short.valueOf(read((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(read(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(read(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(read(0.0f, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(read(0.0d, i, z));
        }
        if (t instanceof String) {
            return String.valueOf(readString(i, z));
        }
        if (t instanceof Map) {
            return readMap(t, i, z);
        }
        if (t instanceof List) {
            return readArray(t, i, z);
        }
        if (t instanceof JceStruct) {
            return read((JceStruct) t, i, z);
        }
        if (t.getClass().isArray()) {
            return ((t instanceof byte[]) || (t instanceof Byte[])) ? read((byte[]) null, i, z) : t instanceof boolean[] ? read((boolean[]) null, i, z) : t instanceof short[] ? read((short[]) null, i, z) : t instanceof int[] ? read((int[]) null, i, z) : t instanceof long[] ? read((long[]) null, i, z) : t instanceof float[] ? read((float[]) null, i, z) : t instanceof double[] ? read((double[]) null, i, z) : readArray((Object[]) t, i, z);
        }
        throw new h("read object error: unsupport type.");
    }

    public final String read(String str, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 6:
                    int i2 = this.b.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.b.get(bArr);
                    try {
                        return new String(bArr, this.a);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.b.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new h("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.b.get(bArr2);
                    try {
                        return new String(bArr2, this.a);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return str;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final short read(short s, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 0:
                    return (short) this.b.get();
                case 1:
                    return this.b.getShort();
                case 12:
                    return 0;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return s;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final boolean read(boolean z, int i, boolean z2) {
        return read((byte) 0, i, z2) != 0;
    }

    public final byte[] read(byte[] bArr, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new h("size invalid: " + read);
                    }
                    byte[] bArr2 = new byte[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        bArr2[i2] = read(bArr2[0], 0, true);
                    }
                    return bArr2;
                case 13:
                    a aVar2 = new a();
                    readHead(aVar2);
                    if (aVar2.a != 0) {
                        throw new h("type mismatch, tag: " + i + ", type: " + ((int) aVar.a) + ", " + ((int) aVar2.a));
                    }
                    int read2 = read(0, 0, true);
                    if (read2 < 0) {
                        throw new h("invalid size, tag: " + i + ", type: " + ((int) aVar.a) + ", " + ((int) aVar2.a) + ", size: " + read2);
                    }
                    byte[] bArr3 = new byte[read2];
                    this.b.get(bArr3);
                    return bArr3;
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final double[] read(double[] dArr, int i, boolean z) {
        double[] dArr2 = null;
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        dArr2 = new double[read];
                        for (int i2 = 0; i2 < read; i2++) {
                            dArr2[i2] = read(dArr2[0], 0, true);
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return dArr2;
    }

    public final float[] read(float[] fArr, int i, boolean z) {
        float[] fArr2 = null;
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        fArr2 = new float[read];
                        for (int i2 = 0; i2 < read; i2++) {
                            fArr2[i2] = read(fArr2[0], 0, true);
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return fArr2;
    }

    public final int[] read(int[] iArr, int i, boolean z) {
        int[] iArr2 = null;
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        iArr2 = new int[read];
                        for (int i2 = 0; i2 < read; i2++) {
                            iArr2[i2] = read(iArr2[0], 0, true);
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return iArr2;
    }

    public final long[] read(long[] jArr, int i, boolean z) {
        long[] jArr2 = null;
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        jArr2 = new long[read];
                        for (int i2 = 0; i2 < read; i2++) {
                            jArr2[i2] = read(jArr2[0], 0, true);
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return jArr2;
    }

    public final JceStruct[] read(JceStruct[] jceStructArr, int i, boolean z) {
        return (JceStruct[]) readArray(jceStructArr, i, z);
    }

    public final String[] read(String[] strArr, int i, boolean z) {
        return (String[]) readArray(strArr, i, z);
    }

    public final short[] read(short[] sArr, int i, boolean z) {
        short[] sArr2 = null;
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        sArr2 = new short[read];
                        for (int i2 = 0; i2 < read; i2++) {
                            sArr2[i2] = read(sArr2[0], 0, true);
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return sArr2;
    }

    public final boolean[] read(boolean[] zArr, int i, boolean z) {
        boolean[] zArr2 = null;
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        zArr2 = new boolean[read];
                        for (int i2 = 0; i2 < read; i2++) {
                            zArr2[i2] = read(zArr2[0], 0, true);
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return zArr2;
    }

    public final <T> List<T> readArray(List<T> list, int i, boolean z) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        Object[] a2 = a(list.get(0), i, z);
        if (a2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : a2) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    public final <T> T[] readArray(T[] tArr, int i, boolean z) {
        if (tArr != null && tArr.length != 0) {
            return (T[]) a(tArr[0], i, z);
        }
        throw new h("unable to get type of key and value.");
    }

    public final String readByteString(String str, int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 6:
                    int i2 = this.b.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.b.get(bArr);
                    return d.a(bArr);
                case 7:
                    int i3 = this.b.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new h("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.b.get(bArr2);
                    return d.a(bArr2);
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return str;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final void readHead(a aVar) {
        readHead(aVar, this.b);
    }

    public final List readList(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        for (int i2 = 0; i2 < read; i2++) {
                            a aVar2 = new a();
                            readHead(aVar2);
                            switch (aVar2.a) {
                                case 0:
                                    a(1);
                                    break;
                                case 1:
                                    a(2);
                                    break;
                                case 2:
                                    a(4);
                                    break;
                                case 3:
                                    a(8);
                                    break;
                                case 4:
                                    a(4);
                                    break;
                                case 5:
                                    a(8);
                                    break;
                                case 6:
                                    int i3 = this.b.get();
                                    if (i3 < 0) {
                                        i3 += 256;
                                    }
                                    a(i3);
                                    break;
                                case 7:
                                    a(this.b.getInt());
                                    break;
                                case 8:
                                case 9:
                                    break;
                                case 10:
                                    try {
                                        JceStruct jceStruct = (JceStruct) Class.forName(JceStruct.class.getName()).getConstructor(new Class[0]).newInstance(new Object[0]);
                                        jceStruct.readFrom(this);
                                        skipToStructEnd();
                                        arrayList.add(jceStruct);
                                        break;
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        throw new h("type mismatch." + e);
                                    }
                                case 11:
                                default:
                                    throw new h("type mismatch.");
                                case 12:
                                    arrayList.add(new Integer(0));
                                    break;
                            }
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return arrayList;
    }

    public final <K, V> HashMap<K, V> readMap(Map<K, V> map, int i, boolean z) {
        return (HashMap) a(new HashMap(), map, i, z);
    }

    public final String readString(int i, boolean z) {
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                case 6:
                    int i2 = this.b.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.b.get(bArr);
                    try {
                        return new String(bArr, this.a);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.b.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new h("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.b.get(bArr2);
                    try {
                        return new String(bArr2, this.a);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                default:
                    throw new h("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new h("require field not exist.");
        }
    }

    public final Map<String, String> readStringMap(int i, boolean z) {
        HashMap hashMap = new HashMap();
        if (skipToTag(i)) {
            a aVar = new a();
            readHead(aVar);
            switch (aVar.a) {
                default:
                    throw new h("type mismatch.");
                case 8:
                    int read = read(0, 0, true);
                    if (read >= 0) {
                        for (int i2 = 0; i2 < read; i2++) {
                            hashMap.put(readString(0, true), readString(1, true));
                        }
                        break;
                    } else {
                        throw new h("size invalid: " + read);
                    }
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return hashMap;
    }

    public final int setServerEncoding(String str) {
        this.a = str;
        return 0;
    }

    public final void skipToStructEnd() {
        a aVar = new a();
        do {
            readHead(aVar);
            a(aVar.a);
        } while (aVar.a != 11);
    }

    public final boolean skipToTag(int i) {
        try {
            a aVar = new a();
            while (true) {
                int readHead = readHead(aVar, this.b.duplicate());
                if (i > aVar.b && aVar.a != 11) {
                    a(readHead);
                    a(aVar.a);
                }
            }
            return i == aVar.b;
        } catch (BufferUnderflowException | h e) {
            return false;
        }
    }

    public final void warp(byte[] bArr) {
        if (this.b != null) {
            this.b.clear();
        }
        this.b = ByteBuffer.wrap(bArr);
    }
}
