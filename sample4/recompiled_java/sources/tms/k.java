package tms;

import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;

public class k implements Runnable {
    final /* synthetic */ TMSService a;

    public k(TMSService tMSService) {
        this.a = tMSService;
    }

    public void run() {
        int b = p.a(TMSApplication.getApplicaionContext()).b();
        af afVar = new af("wup");
        afVar.a(q.a, b == 0, true);
        if (b == 0) {
            afVar.a(q.b, System.currentTimeMillis(), true);
        }
    }
}
