package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SwitchSet extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!SwitchSet.class.desiredAssertionStatus());
    public byte isopen;
    public int switchid;

    public SwitchSet() {
        this.switchid = 0;
        this.isopen = 0;
        this.switchid = this.switchid;
        this.isopen = this.isopen;
    }

    public SwitchSet(int i, byte b) {
        this.switchid = 0;
        this.isopen = 0;
        this.switchid = i;
        this.isopen = b;
    }

    public final String className() {
        return "QQPIM.SwitchSet";
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
        jceDisplayer.display(this.switchid, "switchid");
        jceDisplayer.display(this.isopen, "isopen");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SwitchSet switchSet = (SwitchSet) obj;
        return JceUtil.equals(this.switchid, switchSet.switchid) && JceUtil.equals(this.isopen, switchSet.isopen);
    }

    public final String fullClassName() {
        return "QQPIM.SwitchSet";
    }

    public final byte getIsopen() {
        return this.isopen;
    }

    public final int getSwitchid() {
        return this.switchid;
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
        this.switchid = jceInputStream.read(this.switchid, 0, true);
        this.isopen = jceInputStream.read(this.isopen, 1, true);
    }

    public final void setIsopen(byte b) {
        this.isopen = b;
    }

    public final void setSwitchid(int i) {
        this.switchid = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.switchid, 0);
        jceOutputStream.write(this.isopen, 1);
    }
}
