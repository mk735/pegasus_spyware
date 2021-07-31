package com.tencent.tccdb;

public class MMatchSysResult {
    public static final int EM_FINAL_ACTION_DOUBT = 3;
    public static final int EM_FINAL_ACTION_INTERCEPT = 2;
    public static final int EM_FINAL_ACTION_NEXT_STEP = 4;
    public static final int EM_FINAL_ACTION_PASS = 1;
    public int actionReason;
    public int contentType;
    public int finalAction;
    public int matchCnt;
    public int minusMark;
    public MRuleTypeID[] ruleTypeID;

    public MMatchSysResult(int i, int i2, int i3, int i4, int i5, MRuleTypeID[] mRuleTypeIDArr) {
        this.finalAction = i;
        this.contentType = i2;
        this.matchCnt = i3;
        this.minusMark = i4;
        this.actionReason = i5;
        this.ruleTypeID = mRuleTypeIDArr;
    }
}
