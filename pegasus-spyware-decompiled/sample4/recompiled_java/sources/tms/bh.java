package tms;

import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import tms.ax;
import tms.bs;

/* access modifiers changed from: package-private */
public final class bh extends ax.a {
    final /* synthetic */ bs.b a;

    bh(bs.b bVar) {
        this.a = bVar;
    }

    @Override // tms.ax.a
    public final boolean f() {
        return b() == 2 && this.a.f.contains(((SmsEntity) a()).phonenum, 1);
    }

    @Override // tms.ax.a
    public final void g() {
        this.a.n.blockSms(c());
        FilterResult filterResult = new FilterResult();
        filterResult.mData = a();
        filterResult.mFilterfiled = d();
        filterResult.mState = b();
        filterResult.mDotos.add(this.a.a((SmsEntity) a(), this.a.i, filterResult));
        a(filterResult);
    }
}
