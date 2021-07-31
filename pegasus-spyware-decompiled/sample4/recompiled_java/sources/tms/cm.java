package tms;

import com.tencent.tccdb.MMatchSysResult;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

public final class cm implements IIntelligentSmsChecker {
    IIntelligentSmsChecker.CheckResult a = new IIntelligentSmsChecker.CheckResult();

    public cm() {
        this.a.mContentType = 1;
        this.a.mSuggestion = 4;
        this.a.mInnterResult = new MMatchSysResult(0, 0, 0, 0, 0, null);
    }

    @Override // com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker
    public final IIntelligentSmsChecker.CheckResult check(SmsEntity smsEntity) {
        return this.a;
    }

    @Override // com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker
    public final boolean isChartSms(SmsEntity smsEntity) {
        return false;
    }
}
