package tms;

import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import tms.ax;
import tms.bn;

/* access modifiers changed from: package-private */
public final class bc extends ax.a {
    final /* synthetic */ int a;
    final /* synthetic */ bn.a b;

    bc(bn.a aVar, int i) {
        this.b = aVar;
        this.a = i;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final boolean f() {
        Object obj = null;
        boolean z = b() != 2;
        switch (this.a) {
            case 1:
                obj = this.b.c;
                break;
            case 2:
                obj = this.b.a;
                break;
            case 4:
                obj = this.b.b;
                break;
            case 8:
                obj = this.b.d;
                break;
            case 16:
                obj = this.b.e;
                break;
        }
        if (obj == null && this.a == 32) {
            return true;
        }
        return obj instanceof IContactDao ? z & ((IContactDao) obj).contains(a().phonenum, 0) : obj instanceof ILastCallLogDao ? z & ((ILastCallLogDao) obj).contains(a().phonenum) : obj instanceof AbsSysDao ? z & ((AbsSysDao) obj).contains(a().phonenum) : z & false;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.ax.a
    public final void g() {
        FilterResult filterResult = new FilterResult();
        filterResult.mData = a();
        filterResult.mParams = c();
        filterResult.mState = b();
        filterResult.mFilterfiled = d();
        if (b() != 0 && b() == 1) {
            filterResult.mDotos.add(new bd(this));
        }
        a(filterResult);
    }
}
