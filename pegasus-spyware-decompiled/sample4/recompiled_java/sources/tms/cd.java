package tms;

import android.database.ContentObserver;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import tms.cs;

/* access modifiers changed from: package-private */
public final class cd extends ContentObserver {
    final /* synthetic */ Handler a;
    final /* synthetic */ cs.a b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    cd(cs.a aVar, Handler handler, Handler handler2) {
        super(handler);
        this.b = aVar;
        this.a = handler2;
    }

    public final synchronized void onChange(boolean z) {
        super.onChange(z);
        CallLogEntity lastCallLog = ((AresEngineManager) ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().getLastCallLog();
        if (lastCallLog != null) {
            this.a.postDelayed(new ce(this, lastCallLog), 2000);
        }
    }
}
