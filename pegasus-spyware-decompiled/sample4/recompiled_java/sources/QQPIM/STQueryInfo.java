package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STQueryInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!STQueryInfo.class.desiredAssertionStatus());
    public int nQuerytype;
    public String strCode;
    public String strPort;

    public STQueryInfo() {
        this.nQuerytype = 0;
        this.strPort = "";
        this.strCode = "";
        this.nQuerytype = this.nQuerytype;
        this.strPort = this.strPort;
        this.strCode = this.strCode;
    }

    public STQueryInfo(int i, String str, String str2) {
        this.nQuerytype = 0;
        this.strPort = "";
        this.strCode = "";
        this.nQuerytype = i;
        this.strPort = str;
        this.strCode = str2;
    }

    public final String className() {
        return "QQPIM.STQueryInfo";
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
        jceDisplayer.display(this.nQuerytype, "nQuerytype");
        jceDisplayer.display(this.strPort, "strPort");
        jceDisplayer.display(this.strCode, "strCode");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        STQueryInfo sTQueryInfo = (STQueryInfo) obj;
        return JceUtil.equals(this.nQuerytype, sTQueryInfo.nQuerytype) && JceUtil.equals(this.strPort, sTQueryInfo.strPort) && JceUtil.equals(this.strCode, sTQueryInfo.strCode);
    }

    public final String fullClassName() {
        return "QQPIM.STQueryInfo";
    }

    public final int getNQuerytype() {
        return this.nQuerytype;
    }

    public final String getStrCode() {
        return this.strCode;
    }

    public final String getStrPort() {
        return this.strPort;
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
        this.nQuerytype = jceInputStream.read(this.nQuerytype, 0, true);
        this.strPort = jceInputStream.readString(1, true);
        this.strCode = jceInputStream.readString(2, true);
    }

    public final void setNQuerytype(int i) {
        this.nQuerytype = i;
    }

    public final void setStrCode(String str) {
        this.strCode = str;
    }

    public final void setStrPort(String str) {
        this.strPort = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nQuerytype, 0);
        jceOutputStream.write(this.strPort, 1);
        jceOutputStream.write(this.strCode, 2);
    }
}
