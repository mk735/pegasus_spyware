package QQPIM;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class KillToolInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!KillToolInfo.class.desiredAssertionStatus());
    public String certmd5;
    public String pkgname;

    public KillToolInfo() {
        this.pkgname = "";
        this.certmd5 = "";
        this.pkgname = this.pkgname;
        this.certmd5 = this.certmd5;
    }

    public KillToolInfo(String str, String str2) {
        this.pkgname = "";
        this.certmd5 = "";
        this.pkgname = str;
        this.certmd5 = str2;
    }

    public final String className() {
        return "QQPIM.KillToolInfo";
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
        jceDisplayer.display(this.pkgname, QueryPermissions.PACKAGENAME);
        jceDisplayer.display(this.certmd5, "certmd5");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        KillToolInfo killToolInfo = (KillToolInfo) obj;
        return JceUtil.equals(this.pkgname, killToolInfo.pkgname) && JceUtil.equals(this.certmd5, killToolInfo.certmd5);
    }

    public final String fullClassName() {
        return "QQPIM.KillToolInfo";
    }

    public final String getCertmd5() {
        return this.certmd5;
    }

    public final String getPkgname() {
        return this.pkgname;
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
        this.pkgname = jceInputStream.readString(0, true);
        this.certmd5 = jceInputStream.readString(1, true);
    }

    public final void setCertmd5(String str) {
        this.certmd5 = str;
    }

    public final void setPkgname(String str) {
        this.pkgname = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pkgname, 0);
        jceOutputStream.write(this.certmd5, 1);
    }
}
