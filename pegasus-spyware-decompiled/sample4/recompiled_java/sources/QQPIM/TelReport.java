package QQPIM;

import com.lenovo.safecenter.systeminfo.entity.CommonNumber;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TelReport extends JceStruct {
    static final /* synthetic */ boolean a = (!TelReport.class.desiredAssertionStatus());
    public int calltime;
    public String phonenum;
    public int talktime;
    public int teltype;
    public int useraction;

    public TelReport() {
        this.phonenum = "";
        this.useraction = EUserAction.EMUA_MIN.value();
        this.teltype = 0;
        this.talktime = 0;
        this.calltime = 0;
        this.phonenum = this.phonenum;
        this.useraction = this.useraction;
        this.teltype = this.teltype;
        this.talktime = this.talktime;
        this.calltime = this.calltime;
    }

    public TelReport(String str, int i, int i2, int i3, int i4) {
        this.phonenum = "";
        this.useraction = EUserAction.EMUA_MIN.value();
        this.teltype = 0;
        this.talktime = 0;
        this.calltime = 0;
        this.phonenum = str;
        this.useraction = i;
        this.teltype = i2;
        this.talktime = i3;
        this.calltime = i4;
    }

    public final String className() {
        return "QQPIM.TelReport";
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
        jceDisplayer.display(this.phonenum, CommonNumber.COLUMN_PHONENUMBER);
        jceDisplayer.display(this.useraction, "useraction");
        jceDisplayer.display(this.teltype, "teltype");
        jceDisplayer.display(this.talktime, "talktime");
        jceDisplayer.display(this.calltime, "calltime");
    }

    public final boolean equals(Object obj) {
        TelReport telReport = (TelReport) obj;
        return JceUtil.equals(this.phonenum, telReport.phonenum) && JceUtil.equals(this.useraction, telReport.useraction) && JceUtil.equals(this.teltype, telReport.teltype) && JceUtil.equals(this.talktime, telReport.talktime) && JceUtil.equals(this.calltime, telReport.calltime);
    }

    public final int getCalltime() {
        return this.calltime;
    }

    public final String getPhonenum() {
        return this.phonenum;
    }

    public final int getTalktime() {
        return this.talktime;
    }

    public final int getTeltype() {
        return this.teltype;
    }

    public final int getUseraction() {
        return this.useraction;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.phonenum = jceInputStream.readString(0, true);
        this.useraction = jceInputStream.read(this.useraction, 1, true);
        this.teltype = jceInputStream.read(this.teltype, 2, false);
        this.talktime = jceInputStream.read(this.talktime, 3, false);
        this.calltime = jceInputStream.read(this.calltime, 4, false);
    }

    public final void setCalltime(int i) {
        this.calltime = i;
    }

    public final void setPhonenum(String str) {
        this.phonenum = str;
    }

    public final void setTalktime(int i) {
        this.talktime = i;
    }

    public final void setTeltype(int i) {
        this.teltype = i;
    }

    public final void setUseraction(int i) {
        this.useraction = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.phonenum, 0);
        jceOutputStream.write(this.useraction, 1);
        jceOutputStream.write(this.teltype, 2);
        jceOutputStream.write(this.talktime, 3);
        jceOutputStream.write(this.calltime, 4);
    }
}
