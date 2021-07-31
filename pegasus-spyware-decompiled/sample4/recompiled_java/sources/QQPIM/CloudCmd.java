package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudCmd extends JceStruct implements Cloneable {
    static byte[] a;
    static final /* synthetic */ boolean b = (!CloudCmd.class.desiredAssertionStatus());
    public int cmdid;
    public byte[] param;
    public int seqid;

    public CloudCmd() {
        this.cmdid = 0;
        this.param = null;
        this.seqid = 0;
        this.cmdid = this.cmdid;
        this.param = this.param;
        this.seqid = this.seqid;
    }

    public CloudCmd(int i, byte[] bArr, int i2) {
        this.cmdid = 0;
        this.param = null;
        this.seqid = 0;
        this.cmdid = i;
        this.param = bArr;
        this.seqid = i2;
    }

    public final String className() {
        return "QQPIM.CloudCmd";
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
        jceDisplayer.display(this.cmdid, "cmdid");
        jceDisplayer.display(this.param, "param");
        jceDisplayer.display(this.seqid, "seqid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CloudCmd cloudCmd = (CloudCmd) obj;
        return JceUtil.equals(this.cmdid, cloudCmd.cmdid) && JceUtil.equals(this.param, cloudCmd.param) && JceUtil.equals(this.seqid, cloudCmd.seqid);
    }

    public final String fullClassName() {
        return "QQPIM.CloudCmd";
    }

    public final int getCmdid() {
        return this.cmdid;
    }

    public final byte[] getParam() {
        return this.param;
    }

    public final int getSeqid() {
        return this.seqid;
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
        this.cmdid = jceInputStream.read(this.cmdid, 0, true);
        if (a == null) {
            a = new byte[1];
            a[0] = 0;
        }
        this.param = jceInputStream.read(a, 1, true);
        this.seqid = jceInputStream.read(this.seqid, 2, true);
    }

    public final void setCmdid(int i) {
        this.cmdid = i;
    }

    public final void setParam(byte[] bArr) {
        this.param = bArr;
    }

    public final void setSeqid(int i) {
        this.seqid = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.cmdid, 0);
        jceOutputStream.write(this.param, 1);
        jceOutputStream.write(this.seqid, 2);
    }
}
