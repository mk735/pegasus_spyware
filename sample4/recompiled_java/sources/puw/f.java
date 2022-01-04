package puw;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class f {
    private HashMap<String, Object> a = new HashMap<>();
    protected HashMap<String, HashMap<String, byte[]>> f = new HashMap<>();
    protected HashMap<String, Object> g = new HashMap<>();
    protected String h = "GBK";
    JceInputStream i = new JceInputStream();

    private Object a(String str) {
        if (this.g.containsKey(str)) {
            return this.g.get(str);
        }
        Object b = c.b(str);
        this.g.put(str, b);
        return b;
    }

    private void a(String str, Object obj) {
        this.a.put(str, obj);
    }

    private void a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals("byte")) {
                throw new IllegalArgumentException("only byte[] is supported");
            } else if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                a(arrayList, Array.get(obj, 0));
            } else {
                arrayList.add("Array");
                arrayList.add("?");
            }
        } else if (obj instanceof Array) {
            throw new IllegalArgumentException("can not support Array, please use List");
        } else if (obj instanceof List) {
            arrayList.add("java.util.List");
            List list = (List) obj;
            if (list.size() > 0) {
                a(arrayList, list.get(0));
            } else {
                arrayList.add("?");
            }
        } else if (obj instanceof Map) {
            arrayList.add("java.util.Map");
            Map map = (Map) obj;
            if (map.size() > 0) {
                Object next = map.keySet().iterator().next();
                Object obj2 = map.get(next);
                arrayList.add(next.getClass().getName());
                a(arrayList, obj2);
                return;
            }
            arrayList.add("?");
            arrayList.add("?");
        } else {
            arrayList.add(obj.getClass().getName());
        }
    }

    public void clearCacheData() {
        this.a.clear();
    }

    public boolean containsKey(String str) {
        return this.f.containsKey(str);
    }

    public void decode(byte[] bArr) {
        this.i.warp(bArr);
        this.i.setServerEncoding(this.h);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.f = this.i.readMap(hashMap, 0, false);
    }

    public byte[] encode() {
        JceOutputStream jceOutputStream = new JceOutputStream(0);
        jceOutputStream.setServerEncoding(this.h);
        jceOutputStream.write((Map) this.f, 0);
        return JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v13, resolved type: com.qq.taf.jce.JceInputStream */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T get(String str) throws g {
        byte[] bArr;
        String str2 = null;
        if (!this.f.containsKey(str)) {
            return null;
        }
        if (this.a.containsKey(str)) {
            return (T) this.a.get(str);
        }
        byte[] bArr2 = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f.get(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            str2 = next.getKey();
            bArr = next.getValue();
        } else {
            bArr = bArr2;
        }
        try {
            Object a2 = a(str2);
            this.i.warp(bArr);
            this.i.setServerEncoding(this.h);
            T t = (T) this.i.read(a2, 0, true);
            a(str, t);
            return t;
        } catch (Exception e) {
            e.printStackTrace();
            throw new g(e);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r0v13, resolved type: com.qq.taf.jce.JceInputStream */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T get(String str, Object obj) {
        byte[] bArr;
        String str2;
        if (!this.f.containsKey(str)) {
            return obj;
        }
        if (this.a.containsKey(str)) {
            return (T) this.a.get(str);
        }
        byte[] bArr2 = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f.get(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            str2 = next.getKey();
            bArr = next.getValue();
        } else {
            bArr = bArr2;
            str2 = "";
        }
        try {
            Object a2 = a(str2);
            this.i.warp(bArr);
            this.i.setServerEncoding(this.h);
            T t = (T) this.i.read(a2, 0, true);
            a(str, t);
            return t;
        } catch (Exception e) {
            e.printStackTrace();
            a(str, obj);
            return obj;
        }
    }

    public String getEncodeName() {
        return this.h;
    }

    public <T> T getJceStruct(String str) throws g {
        String str2;
        byte[] bArr;
        if (!this.f.containsKey(str)) {
            return null;
        }
        if (this.a.containsKey(str)) {
            return (T) this.a.get(str);
        }
        byte[] bArr2 = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f.get(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            byte[] value = next.getValue();
            str2 = next.getKey();
            bArr = value;
        } else {
            str2 = null;
            bArr = bArr2;
        }
        try {
            Object a2 = a(str2);
            this.i.warp(bArr);
            this.i.setServerEncoding(this.h);
            T t = (T) this.i.directRead((JceStruct) a2, 0, true);
            a(str, t);
            return t;
        } catch (Exception e) {
            e.printStackTrace();
            throw new g(e);
        }
    }

    public Set<String> getKeySet() {
        return Collections.unmodifiableSet(this.f.keySet());
    }

    public boolean isEmpty() {
        return this.f.isEmpty();
    }

    public <T> void put(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        } else if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        } else if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        } else {
            JceOutputStream jceOutputStream = new JceOutputStream();
            jceOutputStream.setServerEncoding(this.h);
            jceOutputStream.write((Object) t, 0);
            byte[] jceBufArray = JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
            HashMap<String, byte[]> hashMap = new HashMap<>(1);
            ArrayList<String> arrayList = new ArrayList<>(1);
            a(arrayList, t);
            hashMap.put(c.a(arrayList), jceBufArray);
            this.a.remove(str);
            this.f.put(str, hashMap);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v11, resolved type: com.qq.taf.jce.JceInputStream */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T remove(String str) throws g {
        byte[] bArr;
        String str2;
        if (!this.f.containsKey(str)) {
            return null;
        }
        byte[] bArr2 = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f.remove(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            str2 = next.getKey();
            bArr = next.getValue();
        } else {
            bArr = bArr2;
            str2 = "";
        }
        try {
            Object b = c.b(str2);
            this.i.warp(bArr);
            this.i.setServerEncoding(this.h);
            return (T) this.i.read(b, 0, true);
        } catch (Exception e) {
            e.printStackTrace();
            throw new g(e);
        }
    }

    public void setEncodeName(String str) {
        this.h = str;
    }

    public int size() {
        return this.f.size();
    }
}
