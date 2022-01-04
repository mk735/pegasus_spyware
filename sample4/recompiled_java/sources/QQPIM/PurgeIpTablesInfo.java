package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PurgeIpTablesInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!PurgeIpTablesInfo.class.desiredAssertionStatus());
    public String uid;

    public PurgeIpTablesInfo() {
        this.uid = "";
        this.uid = this.uid;
    }

    public PurgeIpTablesInfo(String str) {
        this.uid = "";
        this.uid = str;
    }

    public final String className() {
        return "QQPIM.PurgeIpTablesInfo";
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
        new JceDisplayer(sb, i).display(this.uid, "uid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.uid, ((PurgeIpTablesInfo) obj).uid);
    }

    public final String fullClassName() {
        return "QQPIM.PurgeIpTablesInfo";
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
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uid, 0);
    }
}
