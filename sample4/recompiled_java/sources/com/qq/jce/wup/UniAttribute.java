package com.qq.jce.wup;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import puw.f;
import puw.g;

public class UniAttribute extends f {
    private HashMap<String, Object> a = new HashMap<>();
    JceInputStream b = new JceInputStream();
    protected HashMap<String, byte[]> d = null;

    private Object a(byte[] bArr, Object obj) {
        this.b.warp(bArr);
        this.b.setServerEncoding(this.h);
        return this.b.read(obj, 0, true);
    }

    private void a(String str, Object obj) {
        this.a.put(str, obj);
    }

    @Override // puw.f
    public void clearCacheData() {
        this.a.clear();
    }

    @Override // puw.f
    public boolean containsKey(String str) {
        return this.d != null ? this.d.containsKey(str) : this.f.containsKey(str);
    }

    @Override // puw.f
    public void decode(byte[] bArr) {
        try {
            super.decode(bArr);
        } catch (Exception e) {
            this.b.warp(bArr);
            this.b.setServerEncoding(this.h);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.d = this.b.readMap(hashMap, 0, false);
        }
    }

    public void decodeVersion2(byte[] bArr) {
        super.decode(bArr);
    }

    public void decodeVersion3(byte[] bArr) {
        this.b.warp(bArr);
        this.b.setServerEncoding(this.h);
        HashMap hashMap = new HashMap(1);
        hashMap.put("", new byte[0]);
        this.d = this.b.readMap(hashMap, 0, false);
    }

    @Override // puw.f
    public byte[] encode() {
        if (this.d == null) {
            return super.encode();
        }
        JceOutputStream jceOutputStream = new JceOutputStream(0);
        jceOutputStream.setServerEncoding(this.h);
        jceOutputStream.write((Map) this.d, 0);
        return JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
    }

    @Override // puw.f
    public <T> T get(String str) throws g {
        if (this.d == null) {
            return (T) super.get(str);
        }
        throw new RuntimeException("data is encoded by new version, please use getByClass(String name, T proxy)");
    }

    @Override // puw.f
    public <T> T get(String str, Object obj) {
        if (this.d == null) {
            return (T) super.get(str, obj);
        }
        throw new RuntimeException("data is encoded by new version, please use get(String name, T proxy, Object defaultValue)");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T get(String str, T t, Object obj) {
        return !this.d.containsKey(str) ? obj : (T) getByClass(str, t);
    }

    public <T> T getByClass(String str, T t) throws g {
        byte[] bArr;
        if (this.d != null) {
            if (!this.d.containsKey(str)) {
                return null;
            }
            if (this.a.containsKey(str)) {
                return (T) this.a.get(str);
            }
            try {
                T t2 = (T) a(this.d.get(str), t);
                if (t2 == null) {
                    return t2;
                }
                a(str, t2);
                return t2;
            } catch (Exception e) {
                throw new g(e);
            }
        } else if (!this.f.containsKey(str)) {
            return null;
        } else {
            if (this.a.containsKey(str)) {
                return (T) this.a.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator it = ((HashMap) this.f.get(str)).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                entry.getKey();
                bArr = (byte[]) entry.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.b.warp(bArr);
                this.b.setServerEncoding(this.h);
                T t3 = (T) this.b.read((Object) t, 0, true);
                a(str, t3);
                return t3;
            } catch (Exception e2) {
                throw new g(e2);
            }
        }
    }

    public <T> T getByClass(String str, T t, T t2) throws g {
        byte[] bArr;
        if (this.d != null) {
            if (!this.d.containsKey(str)) {
                return t2;
            }
            if (this.a.containsKey(str)) {
                return (T) this.a.get(str);
            }
            try {
                T t3 = (T) a(this.d.get(str), t);
                if (t3 == null) {
                    return t3;
                }
                a(str, t3);
                return t3;
            } catch (Exception e) {
                throw new g(e);
            }
        } else if (!this.f.containsKey(str)) {
            return t2;
        } else {
            if (this.a.containsKey(str)) {
                return (T) this.a.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator it = ((HashMap) this.f.get(str)).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                entry.getKey();
                bArr = (byte[]) entry.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.b.warp(bArr);
                this.b.setServerEncoding(this.h);
                T t4 = (T) this.b.read((Object) t, 0, true);
                a(str, t4);
                return t4;
            } catch (Exception e2) {
                throw new g(e2);
            }
        }
    }

    @Override // puw.f
    public /* bridge */ /* synthetic */ String getEncodeName() {
        return super.getEncodeName();
    }

    @Override // puw.f
    public <T> T getJceStruct(String str) throws g {
        if (this.d == null) {
            return (T) super.getJceStruct(str);
        }
        throw new RuntimeException("data is encoded by new version, please use getJceStruct(String name,T proxy)");
    }

    public <T> T getJceStruct(String str, T t) throws g {
        if (!this.d.containsKey(str)) {
            return null;
        }
        if (this.a.containsKey(str)) {
            return (T) this.a.get(str);
        }
        try {
            T t2 = (T) a(this.d.get(str), t);
            if (t2 == null) {
                return t2;
            }
            a(str, t2);
            return t2;
        } catch (Exception e) {
            throw new g(e);
        }
    }

    @Override // puw.f
    public Set<String> getKeySet() {
        return this.d != null ? Collections.unmodifiableSet(this.d.keySet()) : Collections.unmodifiableSet(this.f.keySet());
    }

    @Override // puw.f
    public boolean isEmpty() {
        return this.d != null ? this.d.isEmpty() : this.f.isEmpty();
    }

    @Override // puw.f
    public <T> void put(String str, T t) {
        if (this.d == null) {
            super.put(str, t);
        } else if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        } else if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        } else if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        } else {
            JceOutputStream jceOutputStream = new JceOutputStream();
            jceOutputStream.setServerEncoding(this.h);
            jceOutputStream.write((Object) t, 0);
            this.d.put(str, JceUtil.getJceBufArray(jceOutputStream.getByteBuffer()));
        }
    }

    @Override // puw.f
    public <T> T remove(String str) throws g {
        if (this.d == null) {
            return (T) super.remove(str);
        }
        if (!this.d.containsKey(str)) {
            return null;
        }
        this.d.remove(str);
        return null;
    }

    public <T> T remove(String str, T t) throws g {
        if (!this.d.containsKey(str)) {
            return null;
        }
        if (t != null) {
            return (T) a(this.d.remove(str), t);
        }
        this.d.remove(str);
        return null;
    }

    @Override // puw.f
    public /* bridge */ /* synthetic */ void setEncodeName(String str) {
        super.setEncodeName(str);
    }

    @Override // puw.f
    public int size() {
        return this.d != null ? this.d.size() : this.f.size();
    }

    public void useVersion3() {
        this.d = new HashMap<>();
    }
}
