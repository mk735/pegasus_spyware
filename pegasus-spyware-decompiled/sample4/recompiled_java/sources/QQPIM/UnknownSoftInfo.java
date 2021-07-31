package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UnknownSoftInfo extends JceStruct implements Cloneable {
    static SoftKey a;
    static final /* synthetic */ boolean b = (!UnknownSoftInfo.class.desiredAssertionStatus());
    public String certissuer;
    public String certsubject;
    public int certversion;
    public SoftKey softkey;
    public String vendorname;

    public UnknownSoftInfo() {
        this.softkey = null;
        this.vendorname = "";
        this.certversion = 0;
        this.certissuer = "";
        this.certsubject = "";
        this.softkey = this.softkey;
        this.vendorname = this.vendorname;
        this.certversion = this.certversion;
        this.certissuer = this.certissuer;
        this.certsubject = this.certsubject;
    }

    public UnknownSoftInfo(SoftKey softKey, String str, int i, String str2, String str3) {
        this.softkey = null;
        this.vendorname = "";
        this.certversion = 0;
        this.certissuer = "";
        this.certsubject = "";
        this.softkey = softKey;
        this.vendorname = str;
        this.certversion = i;
        this.certissuer = str2;
        this.certsubject = str3;
    }

    public final String className() {
        return "QQPIM.UnknownSoftInfo";
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
        jceDisplayer.display(this.vendorname, "vendorname");
        jceDisplayer.display(this.certversion, "certversion");
        jceDisplayer.display(this.certissuer, "certissuer");
        jceDisplayer.display(this.certsubject, "certsubject");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        UnknownSoftInfo unknownSoftInfo = (UnknownSoftInfo) obj;
        return JceUtil.equals(this.softkey, unknownSoftInfo.softkey) && JceUtil.equals(this.vendorname, unknownSoftInfo.vendorname) && JceUtil.equals(this.certversion, unknownSoftInfo.certversion) && JceUtil.equals(this.certissuer, unknownSoftInfo.certissuer) && JceUtil.equals(this.certsubject, unknownSoftInfo.certsubject);
    }

    public final String fullClassName() {
        return "QQPIM.UnknownSoftInfo";
    }

    public final String getCertissuer() {
        return this.certissuer;
    }

    public final String getCertsubject() {
        return this.certsubject;
    }

    public final int getCertversion() {
        return this.certversion;
    }

    public final SoftKey getSoftkey() {
        return this.softkey;
    }

    public final String getVendorname() {
        return this.vendorname;
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
        this.vendorname = jceInputStream.readString(1, false);
        this.certversion = jceInputStream.read(this.certversion, 2, false);
        this.certissuer = jceInputStream.readString(3, false);
        this.certsubject = jceInputStream.readString(4, false);
    }

    public final void setCertissuer(String str) {
        this.certissuer = str;
    }

    public final void setCertsubject(String str) {
        this.certsubject = str;
    }

    public final void setCertversion(int i) {
        this.certversion = i;
    }

    public final void setSoftkey(SoftKey softKey) {
        this.softkey = softKey;
    }

    public final void setVendorname(String str) {
        this.vendorname = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        if (this.vendorname != null) {
            jceOutputStream.write(this.vendorname, 1);
        }
        jceOutputStream.write(this.certversion, 2);
        if (this.certissuer != null) {
            jceOutputStream.write(this.certissuer, 3);
        }
        if (this.certsubject != null) {
            jceOutputStream.write(this.certsubject, 4);
        }
    }
}
