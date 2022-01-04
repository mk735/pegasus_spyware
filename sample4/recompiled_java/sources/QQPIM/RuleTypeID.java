package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RuleTypeID extends JceStruct {
    static final /* synthetic */ boolean a = (!RuleTypeID.class.desiredAssertionStatus());
    public int ucRuleType;
    public int uiRuleID;

    public RuleTypeID() {
        this.ucRuleType = 0;
        this.uiRuleID = 0;
        this.ucRuleType = this.ucRuleType;
        this.uiRuleID = this.uiRuleID;
    }

    public RuleTypeID(int i, int i2) {
        this.ucRuleType = 0;
        this.uiRuleID = 0;
        this.ucRuleType = i;
        this.uiRuleID = i2;
    }

    public final String className() {
        return "QQPIM.RuleTypeID";
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
        jceDisplayer.display(this.ucRuleType, "ucRuleType");
        jceDisplayer.display(this.uiRuleID, "uiRuleID");
    }

    public final boolean equals(Object obj) {
        RuleTypeID ruleTypeID = (RuleTypeID) obj;
        return JceUtil.equals(this.ucRuleType, ruleTypeID.ucRuleType) && JceUtil.equals(this.uiRuleID, ruleTypeID.uiRuleID);
    }

    public final int getUcRuleType() {
        return this.ucRuleType;
    }

    public final int getUiRuleID() {
        return this.uiRuleID;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.ucRuleType = jceInputStream.read(this.ucRuleType, 0, true);
        this.uiRuleID = jceInputStream.read(this.uiRuleID, 1, true);
    }

    public final void setUcRuleType(int i) {
        this.ucRuleType = i;
    }

    public final void setUiRuleID(int i) {
        this.uiRuleID = i;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.ucRuleType, 0);
        jceOutputStream.write(this.uiRuleID, 1);
    }
}
