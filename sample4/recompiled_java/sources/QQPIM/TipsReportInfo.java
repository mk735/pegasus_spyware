package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipsReportInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!TipsReportInfo.class.desiredAssertionStatus());
    public String description;
    public String tipsid;
    public int useraction;

    public TipsReportInfo() {
        this.tipsid = "";
        this.useraction = 0;
        this.description = "";
        this.tipsid = this.tipsid;
        this.useraction = this.useraction;
        this.description = this.description;
    }

    public TipsReportInfo(String str, int i, String str2) {
        this.tipsid = "";
        this.useraction = 0;
        this.description = "";
        this.tipsid = str;
        this.useraction = i;
        this.description = str2;
    }

    public final String className() {
        return "QQPIM.TipsReportInfo";
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
        jceDisplayer.display(this.tipsid, "tipsid");
        jceDisplayer.display(this.useraction, "useraction");
        jceDisplayer.display(this.description, "description");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        TipsReportInfo tipsReportInfo = (TipsReportInfo) obj;
        return JceUtil.equals(this.tipsid, tipsReportInfo.tipsid) && JceUtil.equals(this.useraction, tipsReportInfo.useraction) && JceUtil.equals(this.description, tipsReportInfo.description);
    }

    public final String fullClassName() {
        return "QQPIM.TipsReportInfo";
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getTipsid() {
        return this.tipsid;
    }

    public final int getUseraction() {
        return this.useraction;
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
        this.useraction = jceInputStream.read(this.useraction, 1, true);
        this.description = jceInputStream.readString(2, true);
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setTipsid(String str) {
        this.tipsid = str;
    }

    public final void setUseraction(int i) {
        this.useraction = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.tipsid, 0);
        jceOutputStream.write(this.useraction, 1);
        jceOutputStream.write(this.description, 2);
    }
}
