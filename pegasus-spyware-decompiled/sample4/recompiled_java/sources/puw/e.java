package puw;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.HashMap;
import java.util.Map;

public final class e extends JceStruct {
    static byte[] k = null;
    static Map<String, String> l = null;
    static final /* synthetic */ boolean m = (!e.class.desiredAssertionStatus());
    public short a = 0;
    public byte b = 0;
    public int c = 0;
    public int d = 0;
    public String e = null;
    public String f = null;
    public byte[] g;
    public int h = 0;
    public Map<String, String> i;
    public Map<String, String> j;

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e2) {
            if (m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i2) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i2);
        jceDisplayer.display(this.a, "iVersion");
        jceDisplayer.display(this.b, "cPacketType");
        jceDisplayer.display(this.c, "iMessageType");
        jceDisplayer.display(this.d, "iRequestId");
        jceDisplayer.display(this.e, "sServantName");
        jceDisplayer.display(this.f, "sFuncName");
        jceDisplayer.display(this.g, "sBuffer");
        jceDisplayer.display(this.h, "iTimeout");
        jceDisplayer.display((Map) this.i, "context");
        jceDisplayer.display((Map) this.j, "status");
    }

    public final boolean equals(Object obj) {
        e eVar = (e) obj;
        return JceUtil.equals(1, eVar.a) && JceUtil.equals(1, eVar.b) && JceUtil.equals(1, eVar.c) && JceUtil.equals(1, eVar.d) && JceUtil.equals(1, eVar.e) && JceUtil.equals(1, eVar.f) && JceUtil.equals(1, eVar.g) && JceUtil.equals(1, eVar.h) && JceUtil.equals(1, eVar.i) && JceUtil.equals(1, eVar.j);
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        try {
            this.a = jceInputStream.read(this.a, 1, true);
            this.b = jceInputStream.read(this.b, 2, true);
            this.c = jceInputStream.read(this.c, 3, true);
            this.d = jceInputStream.read(this.d, 4, true);
            this.e = jceInputStream.readString(5, true);
            this.f = jceInputStream.readString(6, true);
            if (k == null) {
                k = new byte[]{0};
            }
            this.g = jceInputStream.read(k, 7, true);
            this.h = jceInputStream.read(this.h, 8, true);
            if (l == null) {
                l = new HashMap();
                l.put("", "");
            }
            this.i = (Map) jceInputStream.read((Object) l, 9, true);
            if (l == null) {
                l = new HashMap();
                l.put("", "");
            }
            this.j = (Map) jceInputStream.read((Object) l, 10, true);
        } catch (Exception e2) {
            e2.printStackTrace();
            System.out.println("RequestPacket decode error " + b.a(this.g));
            throw new RuntimeException(e2);
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.a, 1);
        jceOutputStream.write(this.b, 2);
        jceOutputStream.write(this.c, 3);
        jceOutputStream.write(this.d, 4);
        jceOutputStream.write(this.e, 5);
        jceOutputStream.write(this.f, 6);
        jceOutputStream.write(this.g, 7);
        jceOutputStream.write(this.h, 8);
        jceOutputStream.write((Map) this.i, 9);
        jceOutputStream.write((Map) this.j, 10);
    }
}
