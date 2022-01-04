package tms;

import android.content.IntentFilter;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;

/* access modifiers changed from: package-private */
public final class ft extends Thread {
    final /* synthetic */ af a;

    ft(af afVar) {
        this.a = afVar;
    }

    public final void run() {
        if (h.b) {
            TMSApplication.getApplicaionContext().unregisterReceiver(h.c);
            boolean unused = h.b = false;
        }
        try {
            Thread.sleep(NetConstant.SLEEP_SECONDS_TEN);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).reportChannelInfo() == 0) {
            this.a.a("reportlc", true, true);
        } else if (!(h.b)) {
            TMSApplication.getApplicaionContext().registerReceiver(h.c, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            boolean unused2 = h.b = true;
        }
        boolean unused3 = h.a = false;
    }
}
