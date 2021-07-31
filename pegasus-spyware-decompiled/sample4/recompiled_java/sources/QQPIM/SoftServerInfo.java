package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.market.MarketManager;

public final class SoftServerInfo extends JceStruct implements Cloneable {
    static byte[] a;
    static final /* synthetic */ boolean b = (!SoftServerInfo.class.desiredAssertionStatus());
    public byte[] expand;
    public int status;

    public SoftServerInfo() {
        this.status = 0;
        this.expand = null;
        this.status = this.status;
        this.expand = this.expand;
    }

    public SoftServerInfo(int i, byte[] bArr) {
        this.status = 0;
        this.expand = null;
        this.status = i;
        this.expand = bArr;
    }

    public final String className() {
        return "QQPIM.SoftServerInfo";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (b) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.status, "status");
        jceDisplayer.display(this.expand, MarketManager.JCE_EXPAND_KEY);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftServerInfo softServerInfo = (SoftServerInfo) obj;
        return JceUtil.equals(this.status, softServerInfo.status) && JceUtil.equals(this.expand, softServerInfo.expand);
    }

    public final String fullClassName() {
        return "QQPIM.SoftServerInfo";
    }

    public final byte[] getExpand() {
        return this.expand;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.status = jceInputStream.read(this.status, 0, true);
        if (a == null) {
            a = new byte[1];
            a[0] = 0;
        }
        this.expand = jceInputStream.read(a, 1, false);
    }

    public final void setExpand(byte[] bArr) {
        this.expand = bArr;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.status, 0);
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 1);
        }
    }
}
