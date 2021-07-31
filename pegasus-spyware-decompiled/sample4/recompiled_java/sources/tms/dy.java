package tms;

import android.os.RemoteException;
import com.tencent.tmsecure.module.permission.IDummyService;
import tms.es;

/* access modifiers changed from: package-private */
public final class dy implements es.a {
    final /* synthetic */ boolean a;
    final /* synthetic */ es b;

    dy(es esVar, boolean z) {
        this.b = esVar;
        this.a = z;
    }

    @Override // tms.es.a
    public final void a() {
        this.b.c = this.a;
    }

    @Override // tms.es.a
    public final void a(IDummyService iDummyService) throws RemoteException {
        iDummyService.setEnable(this.a);
    }

    @Override // tms.es.a
    public final void b() throws RemoteException {
    }
}
