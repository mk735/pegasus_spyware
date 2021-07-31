package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftName extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!SoftName.class.desiredAssertionStatus());
    public String softname;
    public String uid;

    public SoftName() {
        this.uid = "";
        this.softname = "";
        this.uid = this.uid;
        this.softname = this.softname;
    }

    public SoftName(String str, String str2) {
        this.uid = "";
        this.softname = "";
        this.uid = str;
        this.softname = str2;
    }

    public final String className() {
        return "QQPIM.SoftName";
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
        jceDisplayer.display(this.uid, "uid");
        jceDisplayer.display(this.softname, "softname");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        SoftName softName = (SoftName) obj;
        return JceUtil.equals(this.uid, softName.uid) && JceUtil.equals(this.softname, softName.softname);
    }

    public final String fullClassName() {
        return "QQPIM.SoftName";
    }

    public final String getSoftname() {
        return this.softname;
    }

    public final String getUid() {
        return this.uid;
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
        this.uid = jceInputStream.readString(0, true);
        this.softname = jceInputStream.readString(1, true);
    }

    public final void setSoftname(String str) {
        this.softname = str;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uid, 0);
        jceOutputStream.write(this.softname, 1);
    }
}
