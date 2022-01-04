package com.qq.jce.wup;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceUtil;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import puw.e;

public class UniPacket extends UniAttribute {
    static HashMap<String, byte[]> c = null;
    static HashMap<String, HashMap<String, byte[]>> e = null;
    protected e a = new e();
    private int j = 0;

    public UniPacket() {
        this.a.a = 2;
    }

    public UniPacket(boolean z) {
        if (z) {
            useVersion3();
        } else {
            this.a.a = 2;
        }
    }

    public byte[] createOldRespEncode() {
        JceOutputStream jceOutputStream = new JceOutputStream(0);
        jceOutputStream.setServerEncoding(this.h);
        jceOutputStream.write((Map) this.f, 0);
        byte[] jceBufArray = JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
        JceOutputStream jceOutputStream2 = new JceOutputStream(0);
        jceOutputStream2.setServerEncoding(this.h);
        jceOutputStream2.write(this.a.a, 1);
        jceOutputStream2.write(this.a.b, 2);
        jceOutputStream2.write(this.a.d, 3);
        jceOutputStream2.write(this.a.c, 4);
        jceOutputStream2.write(this.j, 5);
        jceOutputStream2.write(jceBufArray, 6);
        jceOutputStream2.write((Map) this.a.j, 7);
        return JceUtil.getJceBufArray(jceOutputStream2.getByteBuffer());
    }

    public UniPacket createResponse() {
        UniPacket uniPacket = new UniPacket();
        uniPacket.setRequestId(getRequestId());
        uniPacket.setServantName(getServantName());
        uniPacket.setFuncName(getFuncName());
        uniPacket.setEncodeName(this.h);
        return uniPacket;
    }

    @Override // com.qq.jce.wup.UniAttribute, puw.f
    public void decode(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            JceInputStream jceInputStream = new JceInputStream(bArr, 4);
            jceInputStream.setServerEncoding(this.h);
            readFrom(jceInputStream);
            if (this.a.a == 3) {
                JceInputStream jceInputStream2 = new JceInputStream(this.a.g);
                jceInputStream2.setServerEncoding(this.h);
                if (c == null) {
                    c = new HashMap<>();
                    c.put("", new byte[0]);
                }
                this.d = jceInputStream2.readMap(c, 0, false);
                return;
            }
            JceInputStream jceInputStream3 = new JceInputStream(this.a.g);
            jceInputStream3.setServerEncoding(this.h);
            if (e == null) {
                e = new HashMap<>();
                HashMap<String, byte[]> hashMap = new HashMap<>();
                hashMap.put("", new byte[0]);
                e.put("", hashMap);
            }
            this.f = jceInputStream3.readMap(e, 0, false);
            this.g = new HashMap();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.qq.jce.wup.UniAttribute
    public void decodeVersion2(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            JceInputStream jceInputStream = new JceInputStream(bArr, 4);
            jceInputStream.setServerEncoding(this.h);
            readFrom(jceInputStream);
            JceInputStream jceInputStream2 = new JceInputStream(this.a.g);
            jceInputStream2.setServerEncoding(this.h);
            if (e == null) {
                e = new HashMap<>();
                HashMap<String, byte[]> hashMap = new HashMap<>();
                hashMap.put("", new byte[0]);
                e.put("", hashMap);
            }
            this.f = jceInputStream2.readMap(e, 0, false);
            this.g = new HashMap();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.qq.jce.wup.UniAttribute
    public void decodeVersion3(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            JceInputStream jceInputStream = new JceInputStream(bArr, 4);
            jceInputStream.setServerEncoding(this.h);
            readFrom(jceInputStream);
            JceInputStream jceInputStream2 = new JceInputStream(this.a.g);
            jceInputStream2.setServerEncoding(this.h);
            if (c == null) {
                c = new HashMap<>();
                c.put("", new byte[0]);
            }
            this.d = jceInputStream2.readMap(c, 0, false);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public void display(StringBuilder sb, int i) {
        this.a.display(sb, i);
    }

    @Override // com.qq.jce.wup.UniAttribute, puw.f
    public byte[] encode() {
        if (this.a.a != 2) {
            if (this.a.e == null) {
                this.a.e = "";
            }
            if (this.a.f == null) {
                this.a.f = "";
            }
        } else if (this.a.e.equals("")) {
            throw new IllegalArgumentException("servantName can not is null");
        } else if (this.a.f.equals("")) {
            throw new IllegalArgumentException("funcName can not is null");
        }
        JceOutputStream jceOutputStream = new JceOutputStream(0);
        jceOutputStream.setServerEncoding(this.h);
        if (this.a.a == 2) {
            jceOutputStream.write((Map) this.f, 0);
        } else {
            jceOutputStream.write((Map) this.d, 0);
        }
        this.a.g = JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
        JceOutputStream jceOutputStream2 = new JceOutputStream(0);
        jceOutputStream2.setServerEncoding(this.h);
        writeTo(jceOutputStream2);
        byte[] jceBufArray = JceUtil.getJceBufArray(jceOutputStream2.getByteBuffer());
        int length = jceBufArray.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 4);
        allocate.putInt(length + 4).put(jceBufArray).flip();
        return allocate.array();
    }

    public String getFuncName() {
        return this.a.f;
    }

    public int getOldRespIret() {
        return this.j;
    }

    public int getRequestId() {
        return this.a.d;
    }

    public String getServantName() {
        return this.a.e;
    }

    @Override // com.qq.jce.wup.UniAttribute, puw.f
    public <T> void put(String str, T t) {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
        super.put(str, t);
    }

    public void readFrom(JceInputStream jceInputStream) {
        this.a.readFrom(jceInputStream);
    }

    public void setFuncName(String str) {
        this.a.f = str;
    }

    public void setOldRespIret(int i) {
        this.j = i;
    }

    public void setRequestId(int i) {
        this.a.d = i;
    }

    public void setServantName(String str) {
        this.a.e = str;
    }

    @Override // com.qq.jce.wup.UniAttribute
    public void useVersion3() {
        super.useVersion3();
        this.a.a = 3;
    }

    public void writeTo(JceOutputStream jceOutputStream) {
        this.a.writeTo(jceOutputStream);
    }
}
