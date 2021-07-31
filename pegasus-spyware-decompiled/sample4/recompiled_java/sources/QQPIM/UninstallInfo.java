package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UninstallInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!UninstallInfo.class.desiredAssertionStatus());
    public int option;
    public String uid;

    public UninstallInfo() {
        this.option = 0;
        this.uid = "";
        this.option = this.option;
        this.uid = this.uid;
    }

    public UninstallInfo(int i, String str) {
        this.option = 0;
        this.uid = "";
        this.option = i;
        this.uid = str;
    }

    public final String className() {
        return "QQPIM.UninstallInfo";
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
        jceDisplayer.display(this.option, "option");
        jceDisplayer.display(this.uid, "uid");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        UninstallInfo uninstallInfo = (UninstallInfo) obj;
        return JceUtil.equals(this.option, uninstallInfo.option) && JceUtil.equals(this.uid, uninstallInfo.uid);
    }

    public final String fullClassName() {
        return "QQPIM.UninstallInfo";
    }

    public final int getOption() {
        return this.option;
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
        this.option = jceInputStream.read(this.option, 0, true);
        this.uid = jceInputStream.readString(1, true);
    }

    public final void setOption(int i) {
        this.option = i;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.option, 0);
        jceOutputStream.write(this.uid, 1);
    }
}
