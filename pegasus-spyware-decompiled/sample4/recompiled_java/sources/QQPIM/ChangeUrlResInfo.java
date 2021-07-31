package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ChangeUrlResInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!ChangeUrlResInfo.class.desiredAssertionStatus());
    public String changeurl;

    public ChangeUrlResInfo() {
        this.changeurl = "";
        this.changeurl = this.changeurl;
    }

    public ChangeUrlResInfo(String str) {
        this.changeurl = "";
        this.changeurl = str;
    }

    public final String className() {
        return "QQPIM.ChangeUrlResInfo";
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
        new JceDisplayer(sb, i).display(this.changeurl, "changeurl");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.changeurl, ((ChangeUrlResInfo) obj).changeurl);
    }

    public final String fullClassName() {
        return "QQPIM.ChangeUrlResInfo";
    }

    public final String getChangeurl() {
        return this.changeurl;
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
        this.changeurl = jceInputStream.readString(0, true);
    }

    public final void setChangeurl(String str) {
        this.changeurl = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.changeurl, 0);
    }
}
