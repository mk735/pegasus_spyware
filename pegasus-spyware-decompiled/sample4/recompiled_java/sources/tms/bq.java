package tms;

import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import tms.ax;
import tms.bs;

/* access modifiers changed from: package-private */
public final class bq extends ax.a {
    final /* synthetic */ bs.b a;

    bq(bs.b bVar) {
        this.a = bVar;
    }

    @Override // tms.ax.a
    public final boolean f() {
        IIntelligentSmsChecker.CheckResult check = this.a.o.check((SmsEntity) a());
        boolean z = b() == 2 && check.mSuggestion != 4;
        if (z) {
            a(check);
        }
        return z;
    }

    @Override // tms.ax.a
    public final void g() {
        FilterResult filterResult = new FilterResult();
        SmsEntity smsEntity = (SmsEntity) a();
        IIntelligentSmsChecker.CheckResult checkResult = (IIntelligentSmsChecker.CheckResult) e();
        filterResult.mData = a();
        filterResult.mFilterfiled = d();
        filterResult.mState = b();
        boolean z = IIntelligentSmsChecker.CheckResult.shouldBeBlockedOrNot(checkResult) ? true : checkResult.mSuggestion == 1 ? false : false;
        if (this.a.l != null) {
            z = this.a.l.handleCheckResult(smsEntity, checkResult, z);
        }
        if (z) {
            this.a.n.blockSms(c());
            filterResult.mDotos.add(this.a.a((SmsEntity) a(), this.a.h, filterResult));
        } else {
            this.a.n.unBlockSms(smsEntity, c());
        }
        filterResult.mParams = new Object[]{checkResult, Boolean.valueOf(z)};
        a(filterResult);
    }
}
