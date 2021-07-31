package QQPIM;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftElementInfo extends JceStruct {
    static final /* synthetic */ boolean a = (!SoftElementInfo.class.desiredAssertionStatus());
    public String cert;
    public String pkgname;
    public int softsize;

    public SoftElementInfo() {
        this.pkgname = "";
        this.cert = "";
        this.softsize = 0;
        this.pkgname = this.pkgname;
        this.cert = this.cert;
        this.softsize = this.softsize;
    }

    public SoftElementInfo(String str, String str2, int i) {
        this.pkgname = "";
        this.cert = "";
        this.softsize = 0;
        this.pkgname = str;
        this.cert = str2;
        this.softsize = i;
    }

    public final String className() {
        return "QQPIM.SoftElementInfo";
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
        jceDisplayer.display(this.cert, "cert");
        jceDisplayer.display(this.softsize, "softsize");
    }

    public final boolean equals(Object obj) {
        SoftElementInfo softElementInfo = (SoftElementInfo) obj;
        return JceUtil.equals(this.pkgname, softElementInfo.pkgname) && JceUtil.equals(this.cert, softElementInfo.cert) && JceUtil.equals(this.softsize, softElementInfo.softsize);
    }

    public final String getCert() {
        return this.cert;
    }

    public final String getPkgname() {
        return this.pkgname;
    }

    public final int getSoftsize() {
        return this.softsize;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.pkgname = jceInputStream.readString(0, true);
        this.cert = jceInputStream.readString(1, true);
        this.softsize = jceInputStream.read(this.softsize, 3, false);
    }

    public final void setCert(String str) {
        this.cert = str;
    }

    public final void setPkgname(String str) {
        this.pkgname = str;
    }

    public final void setSoftsize(int i) {
        this.softsize = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pkgname, 0);
        jceOutputStream.write(this.cert, 1);
        jceOutputStream.write(this.softsize, 3);
    }
}
