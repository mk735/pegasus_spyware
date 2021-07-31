package tms;

import android.telephony.PhoneNumberUtils;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;

final class bf extends Thread {
    final /* synthetic */ String a;
    final /* synthetic */ be b;

    bf(be beVar, String str) {
        this.b = beVar;
        this.a = str;
    }

    public final void run() {
        CallLogEntity callLogEntity = new CallLogEntity();
        callLogEntity.phonenum = this.a != null ? PhoneNumberUtils.stripSeparators(this.a) : "";
        callLogEntity.type = 1;
        callLogEntity.date = System.currentTimeMillis();
        this.b.a.notifyDataReached(callLogEntity, new Object[0]);
    }
}
