package tms;

import android.content.pm.IPackageDataObserver;
import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicBoolean;

final class dn extends IPackageDataObserver.Stub {
    final /* synthetic */ AtomicBoolean a;
    final /* synthetic */ Object b;
    final /* synthetic */ dm c;

    dn(dm dmVar, AtomicBoolean atomicBoolean, Object obj) {
        this.c = dmVar;
        this.a = atomicBoolean;
        this.b = obj;
    }

    @Override // android.content.pm.IPackageDataObserver
    public final void onRemoveCompleted(String str, boolean z) throws RemoteException {
        this.a.set(z);
        synchronized (this.b) {
            this.b.notify();
        }
    }
}
