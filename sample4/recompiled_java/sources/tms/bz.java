package tms;

import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class bz implements Runnable {
    final /* synthetic */ FilterResult a;
    final /* synthetic */ by b;

    bz(by byVar, FilterResult filterResult) {
        this.b = byVar;
        this.a = filterResult;
    }

    public final void run() {
        SmsEntity smsEntity = (SmsEntity) this.a.mData;
        this.b.a.b.remove(smsEntity);
        if (this.b.a.e != null) {
            smsEntity = this.b.a.e.convert(smsEntity);
        }
        this.b.a.c.insert(smsEntity, this.a);
    }
}
