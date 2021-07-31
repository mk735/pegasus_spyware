package tms;

import android.os.RemoteException;
import com.tencent.tmsecure.module.permission.IDummyService;
import com.tencent.tmsecure.module.permission.PermissionTableItem;
import tms.es;

/* access modifiers changed from: package-private */
public final class du implements es.a {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ es d;

    du(es esVar, int i, int i2, int i3) {
        this.d = esVar;
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    @Override // tms.es.a
    public final void a() throws RemoteException {
        PermissionTableItem itemByUid = this.d.g.getItemByUid(this.a);
        if (itemByUid != null) {
            itemByUid.mRids[this.b] = this.c;
        }
    }

    @Override // tms.es.a
    public final void a(IDummyService iDummyService) throws RemoteException {
        iDummyService.updatePermissionTable(this.a, this.b, this.c);
    }

    @Override // tms.es.a
    public final void b() throws RemoteException {
        this.d.g.update(this.a, this.b, this.c);
    }
}
