package tms;

import android.os.Bundle;
import android.os.RemoteException;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.tencent.tmsecure.common.DataEntity;
import com.tencent.tmsecure.common.ISDKClient;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;
import tms.bs;

/* access modifiers changed from: package-private */
public final class bu extends Thread {
    final /* synthetic */ SmsEntity a;
    final /* synthetic */ bs.c b;

    bu(bs.c cVar, SmsEntity smsEntity) {
        this.b = cVar;
        this.a = smsEntity;
    }

    public final void run() {
        ArrayList<ISDKClient> arrayList = this.b.a(this.a);
        bs.c cVar = this.b;
        SmsEntity smsEntity = this.a;
        DataEntity dataEntity = new DataEntity(1);
        Bundle bundle = dataEntity.bundle();
        bundle.putByteArray(SofeModeMain.TS_SMS, SmsEntity.a(smsEntity));
        bundle.putString("event_sender", TMSApplication.getApplicaionContext().getPackageName());
        try {
            for (ISDKClient iSDKClient : arrayList) {
                iSDKClient.sendMessage(dataEntity);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
