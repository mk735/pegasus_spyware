package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MalSoftType extends JceStruct implements Cloneable {
    static SoftKey a;
    static final /* synthetic */ boolean b = (!MalSoftType.class.desiredAssertionStatus());
    public int malsofttype;
    public SoftKey softkey;

    public MalSoftType() {
        this.softkey = null;
        this.malsofttype = 0;
        this.softkey = this.softkey;
        this.malsofttype = this.malsofttype;
    }

    public MalSoftType(SoftKey softKey, int i) {
        this.softkey = null;
        this.malsofttype = 0;
        this.softkey = softKey;
        this.malsofttype = i;
    }

    public final String className() {
        return "QQPIM.MalSoftType";
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
        jceDisplayer.display((JceStruct) this.softkey, "softkey");
        jceDisplayer.display(this.malsofttype, "malsofttype");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        MalSoftType malSoftType = (MalSoftType) obj;
        return JceUtil.equals(this.softkey, malSoftType.softkey) && JceUtil.equals(this.malsofttype, malSoftType.malsofttype);
    }

    public final String fullClassName() {
        return "QQPIM.MalSoftType";
    }

    public final int getMalsofttype() {
        return this.malsofttype;
    }

    public final SoftKey getSoftkey() {
        return this.softkey;
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
        if (a == null) {
            a = new SoftKey();
        }
        this.softkey = (SoftKey) jceInputStream.read((JceStruct) a, 0, true);
        this.malsofttype = jceInputStream.read(this.malsofttype, 1, true);
    }

    public final void setMalsofttype(int i) {
        this.malsofttype = i;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        jceOutputStream.write(this.malsofttype, 1);
    }
}
