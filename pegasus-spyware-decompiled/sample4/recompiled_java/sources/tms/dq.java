package tms;

import android.os.RemoteException;
import com.tencent.tmsecure.module.permission.AbsDummyServiceCallback;
import com.tencent.tmsecure.module.permission.IDummyService;
import tms.es;

/* access modifiers changed from: package-private */
public final class dq implements es.a {
    final /* synthetic */ AbsDummyServiceCallback a;
    final /* synthetic */ es b;

    dq(es esVar, AbsDummyServiceCallback absDummyServiceCallback) {
        this.b = esVar;
        this.a = absDummyServiceCallback;
    }

    @Override // tms.es.a
    public final void a() throws RemoteException {
        this.b.h = this.a;
    }

    @Override // tms.es.a
    public final void a(IDummyService iDummyService) throws RemoteException {
        iDummyService.setDummyServiceCallback(this.b.h);
    }

    @Override // tms.es.a
    public final void b() throws RemoteException {
    }
}
