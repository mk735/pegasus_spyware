package com.tencent.tmsecure.module.aresengine;

import com.tencent.tccdb.MMatchSysResult;

public interface IIntelligentSmsChecker {

    public static final class CheckResult {
        public static final int SUGGESTION_DOUBT = 3;
        public static final int SUGGESTION_ERROR = -1;
        public static final int SUGGESTION_INTERCEPT = 2;
        public static final int SUGGESTION_PASS = 1;
        public static final int SUGGESTION_UNKNOWN = 4;
        public static final int TYPE_12590 = 5;
        public static final int TYPE_ADS = 3;
        public static final int TYPE_EVIL_SOFT = 10;
        public static final int TYPE_FRAUD = 4;
        public static final int TYPE_INIT_ERROR = 0;
        public static final int TYPE_LEGAL_ORGANIZATION = 7;
        public static final int TYPE_MO_CHARGE = 8;
        public static final int TYPE_MT_CHARGE = 9;
        public static final int TYPE_NORMAL = 2;
        public static final int TYPE_SEX = 6;
        public static final int TYPE_UNKOWN = 1;
        public int mContentType;
        public MMatchSysResult mInnterResult;
        public int mSuggestion;

        public static boolean shouldBeBlockedOrNot(CheckResult checkResult) {
            return checkResult != null && (checkResult.mSuggestion == 3 || checkResult.mSuggestion == 2);
        }

        public final int contentType() {
            return this.mContentType % 127;
        }
    }

    CheckResult check(SmsEntity smsEntity);

    boolean isChartSms(SmsEntity smsEntity);
}
