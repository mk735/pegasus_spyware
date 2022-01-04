package com.qq.taf.jce;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import puw.a;

public final class JceDisplayer {
    private StringBuilder a;
    private int b = 0;

    public JceDisplayer(StringBuilder sb) {
        this.a = sb;
    }

    public JceDisplayer(StringBuilder sb, int i) {
        this.a = sb;
        this.b = i;
    }

    private void a(String str) {
        for (int i = 0; i < this.b; i++) {
            this.a.append('\t');
        }
        if (str != null) {
            this.a.append(str).append(": ");
        }
    }

    public static void main(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(1.2d);
        System.out.println(sb.toString());
    }

    public final JceDisplayer display(byte b2, String str) {
        a(str);
        this.a.append((int) b2).append('\n');
        return this;
    }

    public final JceDisplayer display(char c, String str) {
        a(str);
        this.a.append(c).append('\n');
        return this;
    }

    public final JceDisplayer display(double d, String str) {
        a(str);
        this.a.append(d).append('\n');
        return this;
    }

    public final JceDisplayer display(float f, String str) {
        a(str);
        this.a.append(f).append('\n');
        return this;
    }

    public final JceDisplayer display(int i, String str) {
        a(str);
        this.a.append(i).append('\n');
        return this;
    }

    public final JceDisplayer display(long j, String str) {
        a(str);
        this.a.append(j).append('\n');
        return this;
    }

    public final JceDisplayer display(JceStruct jceStruct, String str) {
        display('{', str);
        if (jceStruct == null) {
            this.a.append('\t').append("null");
        } else {
            jceStruct.display(this.a, this.b + 1);
        }
        display('}', (String) null);
        return this;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: com.qq.taf.jce.JceDisplayer */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> JceDisplayer display(T t, String str) {
        if (t == null) {
            this.a.append("null").append('\n');
        } else if (t instanceof Byte) {
            display(t.byteValue(), str);
        } else if (t instanceof Boolean) {
            display(t.booleanValue(), str);
        } else if (t instanceof Short) {
            display(t.shortValue(), str);
        } else if (t instanceof Integer) {
            display(t.intValue(), str);
        } else if (t instanceof Long) {
            display(t.longValue(), str);
        } else if (t instanceof Float) {
            display(t.floatValue(), str);
        } else if (t instanceof Double) {
            display(t.doubleValue(), str);
        } else if (t instanceof String) {
            display((String) t, str);
        } else if (t instanceof Map) {
            display((Map) t, str);
        } else if (t instanceof List) {
            display((Collection) t, str);
        } else if (t instanceof JceStruct) {
            display((JceStruct) t, str);
        } else if (t instanceof byte[]) {
            display((byte[]) t, str);
        } else if (t instanceof boolean[]) {
            display((boolean[]) t, str);
        } else if (t instanceof short[]) {
            display((short[]) t, str);
        } else if (t instanceof int[]) {
            display((int[]) t, str);
        } else if (t instanceof long[]) {
            display((long[]) t, str);
        } else if (t instanceof float[]) {
            display((float[]) t, str);
        } else if (t instanceof double[]) {
            display((double[]) t, str);
        } else if (t.getClass().isArray()) {
            display((Object[]) t, str);
        } else {
            throw new a("write object error: unsupport type.");
        }
        return this;
    }

    public final JceDisplayer display(String str, String str2) {
        a(str2);
        if (str == null) {
            this.a.append("null").append('\n');
        } else {
            this.a.append(str).append('\n');
        }
        return this;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: com.qq.taf.jce.JceDisplayer */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> JceDisplayer display(Collection<T> collection, String str) {
        if (collection != null) {
            return display(collection.toArray(), str);
        }
        a(str);
        this.a.append("null").append('\t');
        return this;
    }

    public final <K, V> JceDisplayer display(Map<K, V> map, String str) {
        a(str);
        if (map == null) {
            this.a.append("null").append('\n');
        } else if (map.isEmpty()) {
            this.a.append(map.size()).append(", {}").append('\n');
        } else {
            this.a.append(map.size()).append(", {").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            JceDisplayer jceDisplayer2 = new JceDisplayer(this.a, this.b + 2);
            for (Map.Entry<K, V> entry : map.entrySet()) {
                jceDisplayer.display('(', (String) null);
                jceDisplayer2.display((Object) entry.getKey(), (String) null);
                jceDisplayer2.display((Object) entry.getValue(), (String) null);
                jceDisplayer.display(')', (String) null);
            }
            display('}', (String) null);
        }
        return this;
    }

    public final JceDisplayer display(short s, String str) {
        a(str);
        this.a.append((int) s).append('\n');
        return this;
    }

    public final JceDisplayer display(boolean z, String str) {
        a(str);
        this.a.append(z ? 'T' : 'F').append('\n');
        return this;
    }

    public final JceDisplayer display(byte[] bArr, String str) {
        a(str);
        if (bArr == null) {
            this.a.append("null").append('\n');
        } else if (bArr.length == 0) {
            this.a.append(bArr.length).append(", []").append('\n');
        } else {
            this.a.append(bArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (byte b2 : bArr) {
                jceDisplayer.display(b2, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public final JceDisplayer display(char[] cArr, String str) {
        a(str);
        if (cArr == null) {
            this.a.append("null").append('\n');
        } else if (cArr.length == 0) {
            this.a.append(cArr.length).append(", []").append('\n');
        } else {
            this.a.append(cArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (char c : cArr) {
                jceDisplayer.display(c, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public final JceDisplayer display(double[] dArr, String str) {
        a(str);
        if (dArr == null) {
            this.a.append("null").append('\n');
        } else if (dArr.length == 0) {
            this.a.append(dArr.length).append(", []").append('\n');
        } else {
            this.a.append(dArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (double d : dArr) {
                jceDisplayer.display(d, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public final JceDisplayer display(float[] fArr, String str) {
        a(str);
        if (fArr == null) {
            this.a.append("null").append('\n');
        } else if (fArr.length == 0) {
            this.a.append(fArr.length).append(", []").append('\n');
        } else {
            this.a.append(fArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (float f : fArr) {
                jceDisplayer.display(f, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public final JceDisplayer display(int[] iArr, String str) {
        a(str);
        if (iArr == null) {
            this.a.append("null").append('\n');
        } else if (iArr.length == 0) {
            this.a.append(iArr.length).append(", []").append('\n');
        } else {
            this.a.append(iArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (int i : iArr) {
                jceDisplayer.display(i, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public final JceDisplayer display(long[] jArr, String str) {
        a(str);
        if (jArr == null) {
            this.a.append("null").append('\n');
        } else if (jArr.length == 0) {
            this.a.append(jArr.length).append(", []").append('\n');
        } else {
            this.a.append(jArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (long j : jArr) {
                jceDisplayer.display(j, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public final <T> JceDisplayer display(T[] tArr, String str) {
        a(str);
        if (tArr == null) {
            this.a.append("null").append('\n');
        } else if (tArr.length == 0) {
            this.a.append(tArr.length).append(", []").append('\n');
        } else {
            this.a.append(tArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (T t : tArr) {
                jceDisplayer.display((Object) t, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public final JceDisplayer display(short[] sArr, String str) {
        a(str);
        if (sArr == null) {
            this.a.append("null").append('\n');
        } else if (sArr.length == 0) {
            this.a.append(sArr.length).append(", []").append('\n');
        } else {
            this.a.append(sArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.a, this.b + 1);
            for (short s : sArr) {
                jceDisplayer.display(s, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }
}
