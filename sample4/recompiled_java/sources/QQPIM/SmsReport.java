package QQPIM;

import com.lenovo.safecenter.safemode.SofeModeMain;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;
import org.apache.commons.httpclient.cookie.Cookie2;

public final class SmsReport extends JceStruct {
    static ArrayList<RuleTypeID> a;
    static ArrayList<UserActionTime> b;
    static final /* synthetic */ boolean c = (!SmsReport.class.desiredAssertionStatus());
    public String comment;
    public int matchTime;
    public String sender;
    public String sms;
    public int smsType;
    public int ucAction;
    public int ucActionReason;
    public int ucContentType;
    public int ucMinusMark;
    public ArrayList<RuleTypeID> vecHitRule;
    public ArrayList<UserActionTime> vecUserAction;

    public SmsReport() {
        this.sender = "";
        this.sms = "";
        this.matchTime = 0;
        this.ucAction = 0;
        this.ucActionReason = 0;
        this.ucContentType = 0;
        this.vecHitRule = null;
        this.ucMinusMark = 0;
        this.vecUserAction = null;
        this.comment = "";
        this.smsType = 0;
        this.sender = this.sender;
        this.sms = this.sms;
        this.matchTime = this.matchTime;
        this.ucAction = this.ucAction;
        this.ucActionReason = this.ucActionReason;
        this.ucContentType = this.ucContentType;
        this.vecHitRule = this.vecHitRule;
        this.ucMinusMark = this.ucMinusMark;
        this.vecUserAction = this.vecUserAction;
        this.comment = this.comment;
        this.smsType = this.smsType;
    }

    public SmsReport(String str, String str2, int i, int i2, int i3, int i4, ArrayList<RuleTypeID> arrayList, int i5, ArrayList<UserActionTime> arrayList2, String str3, int i6) {
        this.sender = "";
        this.sms = "";
        this.matchTime = 0;
        this.ucAction = 0;
        this.ucActionReason = 0;
        this.ucContentType = 0;
        this.vecHitRule = null;
        this.ucMinusMark = 0;
        this.vecUserAction = null;
        this.comment = "";
        this.smsType = 0;
        this.sender = str;
        this.sms = str2;
        this.matchTime = i;
        this.ucAction = i2;
        this.ucActionReason = i3;
        this.ucContentType = i4;
        this.vecHitRule = arrayList;
        this.ucMinusMark = i5;
        this.vecUserAction = arrayList2;
        this.comment = str3;
        this.smsType = i6;
    }

    public final String className() {
        return "QQPIM.SmsReport";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (c) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.sender, "sender");
        jceDisplayer.display(this.sms, SofeModeMain.TS_SMS);
        jceDisplayer.display(this.matchTime, "matchTime");
        jceDisplayer.display(this.ucAction, "ucAction");
        jceDisplayer.display(this.ucActionReason, "ucActionReason");
        jceDisplayer.display(this.ucContentType, "ucContentType");
        jceDisplayer.display((Collection) this.vecHitRule, "vecHitRule");
        jceDisplayer.display(this.ucMinusMark, "ucMinusMark");
        jceDisplayer.display((Collection) this.vecUserAction, "vecUserAction");
        jceDisplayer.display(this.comment, Cookie2.COMMENT);
        jceDisplayer.display(this.smsType, "smsType");
    }

    public final boolean equals(Object obj) {
        SmsReport smsReport = (SmsReport) obj;
        return JceUtil.equals(this.sender, smsReport.sender) && JceUtil.equals(this.sms, smsReport.sms) && JceUtil.equals(this.matchTime, smsReport.matchTime) && JceUtil.equals(this.ucAction, smsReport.ucAction) && JceUtil.equals(this.ucActionReason, smsReport.ucActionReason) && JceUtil.equals(this.ucContentType, smsReport.ucContentType) && JceUtil.equals(this.vecHitRule, smsReport.vecHitRule) && JceUtil.equals(this.ucMinusMark, smsReport.ucMinusMark) && JceUtil.equals(this.vecUserAction, smsReport.vecUserAction) && JceUtil.equals(this.comment, smsReport.comment) && JceUtil.equals(this.smsType, smsReport.smsType);
    }

    public final String getComment() {
        return this.comment;
    }

    public final int getMatchTime() {
        return this.matchTime;
    }

    public final String getSender() {
        return this.sender;
    }

    public final String getSms() {
        return this.sms;
    }

    public final int getSmsType() {
        return this.smsType;
    }

    public final int getUcAction() {
        return this.ucAction;
    }

    public final int getUcActionReason() {
        return this.ucActionReason;
    }

    public final int getUcContentType() {
        return this.ucContentType;
    }

    public final int getUcMinusMark() {
        return this.ucMinusMark;
    }

    public final ArrayList<RuleTypeID> getVecHitRule() {
        return this.vecHitRule;
    }

    public final ArrayList<UserActionTime> getVecUserAction() {
        return this.vecUserAction;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.sender = jceInputStream.readString(0, true);
        this.sms = jceInputStream.readString(1, true);
        this.matchTime = jceInputStream.read(this.matchTime, 2, true);
        this.ucAction = jceInputStream.read(this.ucAction, 3, true);
        this.ucActionReason = jceInputStream.read(this.ucActionReason, 4, true);
        this.ucContentType = jceInputStream.read(this.ucContentType, 5, false);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new RuleTypeID());
        }
        setVecHitRule((ArrayList) jceInputStream.read((Object) a, 6, false));
        setUcMinusMark(jceInputStream.read(this.ucMinusMark, 7, false));
        if (b == null) {
            b = new ArrayList<>();
            b.add(new UserActionTime());
        }
        setVecUserAction((ArrayList) jceInputStream.read((Object) b, 8, false));
        setComment(jceInputStream.readString(9, false));
        setSmsType(jceInputStream.read(this.smsType, 10, false));
    }

    public final void setComment(String str) {
        this.comment = str;
    }

    public final void setMatchTime(int i) {
        this.matchTime = i;
    }

    public final void setSender(String str) {
        this.sender = str;
    }

    public final void setSms(String str) {
        this.sms = str;
    }

    public final void setSmsType(int i) {
        this.smsType = i;
    }

    public final void setUcAction(int i) {
        this.ucAction = i;
    }

    public final void setUcActionReason(int i) {
        this.ucActionReason = i;
    }

    public final void setUcContentType(int i) {
        this.ucContentType = i;
    }

    public final void setUcMinusMark(int i) {
        this.ucMinusMark = i;
    }

    public final void setVecHitRule(ArrayList<RuleTypeID> arrayList) {
        this.vecHitRule = arrayList;
    }

    public final void setVecUserAction(ArrayList<UserActionTime> arrayList) {
        this.vecUserAction = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.sender, 0);
        jceOutputStream.write(this.sms, 1);
        jceOutputStream.write(this.matchTime, 2);
        jceOutputStream.write(this.ucAction, 3);
        jceOutputStream.write(this.ucActionReason, 4);
        jceOutputStream.write(this.ucContentType, 5);
        if (this.vecHitRule != null) {
            jceOutputStream.write((Collection) this.vecHitRule, 6);
        }
        jceOutputStream.write(this.ucMinusMark, 7);
        if (this.vecUserAction != null) {
            jceOutputStream.write((Collection) this.vecUserAction, 8);
        }
        if (this.comment != null) {
            jceOutputStream.write(this.comment, 9);
        }
        jceOutputStream.write(this.smsType, 10);
    }
}
