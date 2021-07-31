package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class OpenUIInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!OpenUIInfo.class.desiredAssertionStatus());
    public int uiid;

    public OpenUIInfo() {
        this.uiid = 0;
        this.uiid = this.uiid;
    }

    public OpenUIInfo(int i) {
        this.uiid = 0;
        this.uiid = i;
    }

    public final String className() {
        return "QQPIM.OpenUIInfo";
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
        new JceDisplayer(sb, i).display(this.uiid, "uiid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.uiid, ((OpenUIInfo) obj).uiid);
    }

    public final String fullClassName() {
        return "QQPIM.OpenUIInfo";
    }

    public final int getUiid() {
        return this.uiid;
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
        this.uiid = jceInputStream.read(this.uiid, 0, true);
    }

    public final void setUiid(int i) {
        this.uiid = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uiid, 0);
    }
}
