package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class BaseInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!BaseInfo.class.desiredAssertionStatus());
    public String tipsid;

    public BaseInfo() {
        this.tipsid = "";
        this.tipsid = this.tipsid;
    }

    public BaseInfo(String str) {
        this.tipsid = "";
        this.tipsid = str;
    }

    public final String className() {
        return "QQPIM.BaseInfo";
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
        new JceDisplayer(sb, i).display(this.tipsid, "tipsid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.tipsid, ((BaseInfo) obj).tipsid);
    }

    public final String fullClassName() {
        return "QQPIM.BaseInfo";
    }

    public final String getTipsid() {
        return this.tipsid;
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
        this.tipsid = jceInputStream.readString(0, true);
    }

    public final void setTipsid(String str) {
        this.tipsid = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.tipsid, 0);
    }
}
