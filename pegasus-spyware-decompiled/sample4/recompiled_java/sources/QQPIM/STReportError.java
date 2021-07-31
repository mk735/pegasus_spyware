package QQPIM;

import com.lenovo.safecenter.safemode.SofeModeMain;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STReportError extends JceStruct implements Cloneable {
    static final /* synthetic */ boolean a = (!STReportError.class.desiredAssertionStatus());
    public int nCollocateNum;
    public int nUsedNum;
    public int nerrorcode;
    public int noptype;
    public int ntime;
    public String sms;
    public String strHardInfo;
    public String strarea;
    public String strqueryorder;
    public String strsimtype;
    public String strversion;

    public STReportError() {
        this.nerrorcode = 0;
        this.ntime = 0;
        this.strarea = "";
        this.strsimtype = "";
        this.strqueryorder = "";
        this.sms = "";
        this.noptype = 0;
        this.strversion = "";
        this.strHardInfo = "";
        this.nCollocateNum = 0;
        this.nUsedNum = 0;
        this.nerrorcode = this.nerrorcode;
        this.ntime = this.ntime;
        this.strarea = this.strarea;
        this.strsimtype = this.strsimtype;
        this.strqueryorder = this.strqueryorder;
        this.sms = this.sms;
        this.noptype = this.noptype;
        this.strversion = this.strversion;
        this.strHardInfo = this.strHardInfo;
        this.nCollocateNum = this.nCollocateNum;
        this.nUsedNum = this.nUsedNum;
    }

    public STReportError(int i, int i2, String str, String str2, String str3, String str4, int i3, String str5, String str6, int i4, int i5) {
        this.nerrorcode = 0;
        this.ntime = 0;
        this.strarea = "";
        this.strsimtype = "";
        this.strqueryorder = "";
        this.sms = "";
        this.noptype = 0;
        this.strversion = "";
        this.strHardInfo = "";
        this.nCollocateNum = 0;
        this.nUsedNum = 0;
        this.nerrorcode = i;
        this.ntime = i2;
        this.strarea = str;
        this.strsimtype = str2;
        this.strqueryorder = str3;
        this.sms = str4;
        this.noptype = i3;
        this.strversion = str5;
        this.strHardInfo = str6;
        this.nCollocateNum = i4;
        this.nUsedNum = i5;
    }

    public final String className() {
        return "QQPIM.STReportError";
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
        jceDisplayer.display(this.nerrorcode, "nerrorcode");
        jceDisplayer.display(this.ntime, "ntime");
        jceDisplayer.display(this.strarea, "strarea");
        jceDisplayer.display(this.strsimtype, "strsimtype");
        jceDisplayer.display(this.strqueryorder, "strqueryorder");
        jceDisplayer.display(this.sms, SofeModeMain.TS_SMS);
        jceDisplayer.display(this.noptype, "noptype");
        jceDisplayer.display(this.strversion, "strversion");
        jceDisplayer.display(this.strHardInfo, "strHardInfo");
        jceDisplayer.display(this.nCollocateNum, "nCollocateNum");
        jceDisplayer.display(this.nUsedNum, "nUsedNum");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        STReportError sTReportError = (STReportError) obj;
        return JceUtil.equals(this.nerrorcode, sTReportError.nerrorcode) && JceUtil.equals(this.ntime, sTReportError.ntime) && JceUtil.equals(this.strarea, sTReportError.strarea) && JceUtil.equals(this.strsimtype, sTReportError.strsimtype) && JceUtil.equals(this.strqueryorder, sTReportError.strqueryorder) && JceUtil.equals(this.sms, sTReportError.sms) && JceUtil.equals(this.noptype, sTReportError.noptype) && JceUtil.equals(this.strversion, sTReportError.strversion) && JceUtil.equals(this.strHardInfo, sTReportError.strHardInfo) && JceUtil.equals(this.nCollocateNum, sTReportError.nCollocateNum) && JceUtil.equals(this.nUsedNum, sTReportError.nUsedNum);
    }

    public final String fullClassName() {
        return "QQPIM.STReportError";
    }

    public final int getNCollocateNum() {
        return this.nCollocateNum;
    }

    public final int getNUsedNum() {
        return this.nUsedNum;
    }

    public final int getNerrorcode() {
        return this.nerrorcode;
    }

    public final int getNoptype() {
        return this.noptype;
    }

    public final int getNtime() {
        return this.ntime;
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

    public final String getStrversion() {
        return this.strversion;
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
        this.nerrorcode = jceInputStream.read(this.nerrorcode, 0, true);
        this.ntime = jceInputStream.read(this.ntime, 1, true);
        this.strarea = jceInputStream.readString(2, true);
        this.strsimtype = jceInputStream.readString(3, true);
        this.strqueryorder = jceInputStream.readString(4, true);
        this.sms = jceInputStream.readString(5, true);
        this.noptype = jceInputStream.read(this.noptype, 6, true);
        this.strversion = jceInputStream.readString(7, true);
        this.strHardInfo = jceInputStream.readString(8, false);
        this.nCollocateNum = jceInputStream.read(this.nCollocateNum, 9, false);
        this.nUsedNum = jceInputStream.read(this.nUsedNum, 10, false);
    }

    public final void setNCollocateNum(int i) {
        this.nCollocateNum = i;
    }

    public final void setNUsedNum(int i) {
        this.nUsedNum = i;
    }

    public final void setNerrorcode(int i) {
        this.nerrorcode = i;
    }

    public final void setNoptype(int i) {
        this.noptype = i;
    }

    public final void setNtime(int i) {
        this.ntime = i;
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

    public final void setStrversion(String str) {
        this.strversion = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nerrorcode, 0);
        jceOutputStream.write(this.ntime, 1);
        jceOutputStream.write(this.strarea, 2);
        jceOutputStream.write(this.strsimtype, 3);
        jceOutputStream.write(this.strqueryorder, 4);
        jceOutputStream.write(this.sms, 5);
        jceOutputStream.write(this.noptype, 6);
        jceOutputStream.write(this.strversion, 7);
        if (this.strHardInfo != null) {
            jceOutputStream.write(this.strHardInfo, 8);
        }
        jceOutputStream.write(this.nCollocateNum, 9);
        jceOutputStream.write(this.nUsedNum, 10);
    }
}
