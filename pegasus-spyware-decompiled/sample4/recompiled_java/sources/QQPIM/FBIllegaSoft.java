package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBIllegaSoft extends JceStruct implements Cloneable {
    static SoftKey a;
    static final /* synthetic */ boolean b = (!FBIllegaSoft.class.desiredAssertionStatus());
    public String company;
    public int illreason;
    public int reporttype;
    public SoftKey softkey;

    public FBIllegaSoft() {
        this.softkey = null;
        this.company = "";
        this.illreason = 0;
        this.reporttype = FBIReportType.FBI_REPORT.value();
        this.softkey = this.softkey;
        this.company = this.company;
        this.illreason = this.illreason;
        this.reporttype = this.reporttype;
    }

    public FBIllegaSoft(SoftKey softKey, String str, int i, int i2) {
        this.softkey = null;
        this.company = "";
        this.illreason = 0;
        this.reporttype = FBIReportType.FBI_REPORT.value();
        this.softkey = softKey;
        this.company = str;
        this.illreason = i;
        this.reporttype = i2;
    }

    public final String className() {
        return "QQPIM.FBIllegaSoft";
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
        jceDisplayer.display(this.company, "company");
        jceDisplayer.display(this.illreason, "illreason");
        jceDisplayer.display(this.reporttype, "reporttype");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        FBIllegaSoft fBIllegaSoft = (FBIllegaSoft) obj;
        return JceUtil.equals(this.softkey, fBIllegaSoft.softkey) && JceUtil.equals(this.company, fBIllegaSoft.company) && JceUtil.equals(this.illreason, fBIllegaSoft.illreason) && JceUtil.equals(this.reporttype, fBIllegaSoft.reporttype);
    }

    public final String fullClassName() {
        return "QQPIM.FBIllegaSoft";
    }

    public final String getCompany() {
        return this.company;
    }

    public final int getIllreason() {
        return this.illreason;
    }

    public final int getReporttype() {
        return this.reporttype;
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
        this.company = jceInputStream.readString(1, true);
        this.illreason = jceInputStream.read(this.illreason, 2, true);
        this.reporttype = jceInputStream.read(this.reporttype, 3, false);
    }

    public final void setCompany(String str) {
        this.company = str;
    }

    public final void setIllreason(int i) {
        this.illreason = i;
    }

    public final void setReporttype(int i) {
        this.reporttype = i;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        jceOutputStream.write(this.company, 1);
        jceOutputStream.write(this.illreason, 2);
        jceOutputStream.write(this.reporttype, 3);
    }
}
