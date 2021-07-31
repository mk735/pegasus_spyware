package com.tencent.tccdb;

import android.text.TextUtils;

public class MCheckInput {
    public static final int CHECK_INPUT_SENDER = 1;
    public static final int CHECK_INPUT_SMS = 2;
    public static final int SMS_IN = 0;
    public static final int SMS_OUT = 1;
    public static final int SMS_TYPE_COLOR = 1;
    public static final int SMS_TYPE_COMMON = 0;
    public static final int SMS_TYPE_WAP_PUSH = 2;
    public int checkFlag;
    public String sender;
    public String sms;
    public int smsInOut;
    public int smsType;

    public MCheckInput(String str, String str2, int i, int i2, int i3) {
        this.sender = TextUtils.isEmpty(str) ? "" : str;
        this.sms = TextUtils.isEmpty(str2) ? "" : str2;
        this.checkFlag = i;
        this.smsType = i2;
        this.smsInOut = i3;
    }
}
