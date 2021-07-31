package tms;

import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import tms.bs;

/* access modifiers changed from: package-private */
public final class bt implements Runnable {
    final /* synthetic */ ISmsDao a;
    final /* synthetic */ SmsEntity b;
    final /* synthetic */ FilterResult c;
    final /* synthetic */ bs.b d;

    bt(bs.b bVar, ISmsDao iSmsDao, SmsEntity smsEntity, FilterResult filterResult) {
        this.d = bVar;
        this.a = iSmsDao;
        this.b = smsEntity;
        this.c = filterResult;
    }

    public final void run() {
        this.a.insert(this.d.m == null ? this.b : this.d.m.convert(this.b), this.c);
    }
}
