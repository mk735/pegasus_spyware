package tms;

import android.content.BroadcastReceiver;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import tms.bs;

/* access modifiers changed from: package-private */
public final class bg extends bx {
    final /* synthetic */ bs.a a;

    bg(bs.a aVar) {
        this.a = aVar;
    }

    /* access modifiers changed from: package-private */
    @Override // tms.bx
    public final void a(SmsEntity smsEntity, BroadcastReceiver broadcastReceiver) {
        if (smsEntity != null) {
            if (this.a.c.a(smsEntity, broadcastReceiver)) {
                this.a.notifyDataReached(smsEntity, 0, broadcastReceiver);
            }
        }
    }
}
