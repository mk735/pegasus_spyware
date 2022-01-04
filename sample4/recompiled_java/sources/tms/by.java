package tms;

import com.tencent.tmsecure.module.aresengine.FilterResult;
import tms.ax;
import tms.cn;

/* access modifiers changed from: package-private */
public final class by extends ax.a {
    final /* synthetic */ cn.a a;

    by(cn.a aVar) {
        this.a = aVar;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final boolean f() {
        return b() == 2 && this.a.a.contains(a().phonenum, 1);
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final void g() {
        FilterResult filterResult = new FilterResult();
        filterResult.mFilterfiled = d();
        filterResult.mState = b();
        filterResult.mData = a();
        filterResult.mDotos.add(new bz(this, filterResult));
        a(filterResult);
    }
}
