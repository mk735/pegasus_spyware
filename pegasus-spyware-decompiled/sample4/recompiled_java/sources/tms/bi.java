package tms;

import com.tencent.tmsecure.module.aresengine.SmsEntity;
import tms.bs;

final class bi implements Runnable {
    final /* synthetic */ SmsEntity a;
    final /* synthetic */ Object[] b;
    final /* synthetic */ bs.b c;

    bi(bs.b bVar, SmsEntity smsEntity, Object[] objArr) {
        this.c = bVar;
        this.a = smsEntity;
        this.b = objArr;
    }

    public final void run() {
        this.c.n.unBlockSms(this.a, this.b);
    }
}
