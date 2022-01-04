package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;

public interface IntelligentSmsHandler {
    boolean handleCheckResult(SmsEntity smsEntity, IIntelligentSmsChecker.CheckResult checkResult, boolean z);
}
