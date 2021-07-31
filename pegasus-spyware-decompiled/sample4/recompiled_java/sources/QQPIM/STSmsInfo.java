package QQPIM;

import com.lenovo.safecenter.safemode.SofeModeMain;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STSmsInfo extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!STSmsInfo.class.desiredAssertionStatus());
    public boolean bAuto;
    public int nCollocateNum;
    public int nrework;
    public int ntime;
    public int ntrafficnum;
    public String sender;
    public String sms;
    public String strHardInfo;
    public String strarea;
    public String strqueryorder;
    public String strsimtype;

    public STSmsInfo() {
        this.ntime = 0;
        this.sender = "";
        this.sms = "";
        this.strarea = "";
        this.strsimtype = "";
        this.strqueryorder = "";
        this.nrework = 0;
        this.ntrafficnum = 0;
        this.strHardInfo = "";
        this.nCollocateNum = 0;
        this.bAuto = true;
        this.ntime = this.ntime;
        this.sender = this.sender;
        this.sms = this.sms;
        this.strarea = this.strarea;
        this.strsimtype = this.strsimtype;
        this.strqueryorder = this.strqueryorder;
        this.nrework = this.nrework;
        this.ntrafficnum = this.ntrafficnum;
        this.strHardInfo = this.strHardInfo;
        this.nCollocateNum = this.nCollocateNum;
        this.bAuto = this.bAuto;
    }

    public STSmsInfo(int i, String str, String str2, String str3, String str4, String str5, int i2, int i3, String str6, int i4, boolean z) {
        this.ntime = 0;
        this.sender = "";
        this.sms = "";
        this.strarea = "";
        this.strsimtype = "";
        this.strqueryorder = "";
        this.nrework = 0;
        this.ntrafficnum = 0;
        this.strHardInfo = "";
        this.nCollocateNum = 0;
        this.bAuto = true;
        this.ntime = i;
        this.sender = str;
        this.sms = str2;
        this.strarea = str3;
        this.strsimtype = str4;
        this.strqueryorder = str5;
        this.nrework = i2;
        this.ntrafficnum = i3;
        this.strHardInfo = str6;
        this.nCollocateNum = i4;
        this.bAuto = z;
    }

    public final String className() {
        return "QQPIM.STSmsInfo";
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
        jceDisplayer.display(this.ntime, "ntime");
        jceDisplayer.display(this.sender, "sender");
        jceDisplayer.display(this.sms, SofeModeMain.TS_SMS);
        jceDisplayer.display(this.strarea, "strarea");
        jceDisplayer.display(this.strsimtype, "strsimtype");
        jceDisplayer.display(this.strqueryorder, "strqueryorder");
        jceDisplayer.display(this.nrework, "nrework");
        jceDisplayer.display(this.ntrafficnum, "ntrafficnum");
        jceDisplayer.display(this.strHardInfo, "strHardInfo");
        jceDisplayer.display(this.nCollocateNum, "nCollocateNum");
        jceDisplayer.display(this.bAuto, "bAuto");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        STSmsInfo sTSmsInfo = (STSmsInfo) obj;
        return JceUtil.equals(this.ntime, sTSmsInfo.ntime) && JceUtil.equals(this.sender, sTSmsInfo.sender) && JceUtil.equals(this.sms, sTSmsInfo.sms) && JceUtil.equals(this.strarea, sTSmsInfo.strarea) && JceUtil.equals(this.strsimtype, sTSmsInfo.strsimtype) && JceUtil.equals(this.strqueryorder, sTSmsInfo.strqueryorder) && JceUtil.equals(this.nrework, sTSmsInfo.nrework) && JceUtil.equals(this.ntrafficnum, sTSmsInfo.ntrafficnum) && JceUtil.equals(this.strHardInfo, sTSmsInfo.strHardInfo) && JceUtil.equals(this.nCollocateNum, sTSmsInfo.nCollocateNum) && JceUtil.equals(this.bAuto, sTSmsInfo.bAuto);
    }

    public final String fullClassName() {
        return "QQPIM.STSmsInfo";
    }

    public final boolean getBAuto() {
        return this.bAuto;
    }

    public final int getNCollocateNum() {
        return this.nCollocateNum;
    }

    public final int getNrework() {
        return this.nrework;
    }

    public final int getNtime() {
        return this.ntime;
    }

    public final int getNtrafficnum() {
        return this.ntrafficnum;
    }

    public final String getSender() {
        return this.sender;
    }

    public final String getSms() {
        return this.sms;
    }

    public final String getStrHardInfo() {
        return this.strHardInfo;
    }

    public final String getStrarea() {
        return this.strarea;
    }

    public final String getStrqueryorder() {
        return this.strqueryorder;
    }

    public final String getStrsimtype() {
        return this.strsimtype;
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
        this.ntime = jceInputStream.read(this.ntime, 0, true);
        this.sender = jceInputStream.readString(1, true);
        this.sms = jceInputStream.readString(2, true);
        this.strarea = jceInputStream.readString(3, false);
        this.strsimtype = jceInputStream.readString(4, false);
        this.strqueryorder = jceInputStream.readString(5, false);
        this.nrework = jceInputStream.read(this.nrework, 6, false);
        this.ntrafficnum = jceInputStream.read(this.ntrafficnum, 7, false);
        this.strHardInfo = jceInputStream.readString(8, false);
        this.nCollocateNum = jceInputStream.read(this.nCollocateNum, 9, false);
        this.bAuto = jceInputStream.read(this.bAuto, 10, false);
    }

    public final void setBAuto(boolean z) {
        this.bAuto = z;
    }

    public final void setNCollocateNum(int i) {
        this.nCollocateNum = i;
    }

    public final void setNrework(int i) {
        this.nrework = i;
    }

    public final void setNtime(int i) {
        this.ntime = i;
    }

    public final void setNtrafficnum(int i) {
        this.ntrafficnum = i;
    }

    public final void setSender(String str) {
        this.sender = str;
    }

    public final void setSms(String str) {
        this.sms = str;
    }

    public final void setStrHardInfo(String str) {
        this.strHardInfo = str;
    }

    public final void setStrarea(String str) {
        this.strarea = str;
    }

    public final void setStrqueryorder(String str) {
        this.strqueryorder = str;
    }

    public final void setStrsimtype(String str) {
        this.strsimtype = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.ntime, 0);
        jceOutputStream.write(this.sender, 1);
        jceOutputStream.write(this.sms, 2);
        if (this.strarea != null) {
            jceOutputStream.write(this.strarea, 3);
        }
        if (this.strsimtype != null) {
            jceOutputStream.write(this.strsimtype, 4);
        }
        if (this.strqueryorder != null) {
            jceOutputStream.write(this.strqueryorder, 5);
        }
        jceOutputStream.write(this.nrework, 6);
        jceOutputStream.write(this.ntrafficnum, 7);
        if (this.strHardInfo != null) {
            jceOutputStream.write(this.strHardInfo, 8);
        }
        jceOutputStream.write(this.nCollocateNum, 9);
        jceOutputStream.write(this.bAuto, 10);
    }
}
