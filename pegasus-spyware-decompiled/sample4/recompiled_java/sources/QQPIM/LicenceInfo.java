package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LicenceInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!LicenceInfo.class.desiredAssertionStatus());
    public String strchannel;
    public String strsignature;

    public LicenceInfo() {
        this.strsignature = "";
        this.strchannel = "";
        this.strsignature = this.strsignature;
        this.strchannel = this.strchannel;
    }

    public LicenceInfo(String str, String str2) {
        this.strsignature = "";
        this.strchannel = "";
        this.strsignature = str;
        this.strchannel = str2;
    }

    public final String className() {
        return "QQPIM.LicenceInfo";
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
        jceDisplayer.display(this.strsignature, "strsignature");
        jceDisplayer.display(this.strchannel, "strchannel");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        LicenceInfo licenceInfo = (LicenceInfo) obj;
        return JceUtil.equals(this.strsignature, licenceInfo.strsignature) && JceUtil.equals(this.strchannel, licenceInfo.strchannel);
    }

    public final String fullClassName() {
        return "QQPIM.LicenceInfo";
    }

    public final String getStrchannel() {
        return this.strchannel;
    }

    public final String getStrsignature() {
        return this.strsignature;
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
        this.strsignature = jceInputStream.readString(0, true);
        this.strchannel = jceInputStream.readString(1, false);
    }

    public final void setStrchannel(String str) {
        this.strchannel = str;
    }

    public final void setStrsignature(String str) {
        this.strsignature = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.strsignature, 0);
        if (this.strchannel != null) {
            jceOutputStream.write(this.strchannel, 1);
        }
    }
}
