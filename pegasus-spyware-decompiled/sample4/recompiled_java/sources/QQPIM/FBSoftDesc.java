package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBSoftDesc extends JceStruct implements Cloneable {
    static SoftKey a;
    static final /* synthetic */ boolean b = (!FBSoftDesc.class.desiredAssertionStatus());
    public String desc;
    public SoftKey softkey;

    public FBSoftDesc() {
        this.softkey = null;
        this.desc = "";
        this.softkey = this.softkey;
        this.desc = this.desc;
    }

    public FBSoftDesc(SoftKey softKey, String str) {
        this.softkey = null;
        this.desc = "";
        this.softkey = softKey;
        this.desc = str;
    }

    public final String className() {
        return "QQPIM.FBSoftDesc";
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
        jceDisplayer.display(this.desc, "desc");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FBSoftDesc fBSoftDesc = (FBSoftDesc) obj;
        return JceUtil.equals(this.softkey, fBSoftDesc.softkey) && JceUtil.equals(this.desc, fBSoftDesc.desc);
    }

    public final String fullClassName() {
        return "QQPIM.FBSoftDesc";
    }

    public final String getDesc() {
        return this.desc;
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
        this.desc = jceInputStream.readString(1, true);
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        jceOutputStream.write(this.desc, 1);
    }
}
