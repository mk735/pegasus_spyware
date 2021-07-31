package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudCmdRes extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!CloudCmdRes.class.desiredAssertionStatus());
    public int res;
    public int seqid;

    public CloudCmdRes() {
        this.seqid = 0;
        this.res = 0;
        this.seqid = this.seqid;
        this.res = this.res;
    }

    public CloudCmdRes(int i, int i2) {
        this.seqid = 0;
        this.res = 0;
        this.seqid = i;
        this.res = i2;
    }

    public final String className() {
        return "QQPIM.CloudCmdRes";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (a) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.seqid, "seqid");
        jceDisplayer.display(this.res, "res");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        CloudCmdRes cloudCmdRes = (CloudCmdRes) obj;
        return JceUtil.equals(this.seqid, cloudCmdRes.seqid) && JceUtil.equals(this.res, cloudCmdRes.res);
    }

    public final String fullClassName() {
        return "QQPIM.CloudCmdRes";
    }

    public final int getRes() {
        return this.res;
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
        this.seqid = jceInputStream.read(this.seqid, 1, true);
        this.res = jceInputStream.read(this.res, 2, true);
    }

    public final void setRes(int i) {
        this.res = i;
    }

    public final void setSeqid(int i) {
        this.seqid = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.seqid, 1);
        jceOutputStream.write(this.res, 2);
    }
}
