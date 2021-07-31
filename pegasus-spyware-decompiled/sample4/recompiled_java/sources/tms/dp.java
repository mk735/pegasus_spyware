package tms;

import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageStats;
import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class dp extends IPackageStatsObserver.Stub {
    final /* synthetic */ AtomicReference a;
    final /* synthetic */ Object b;
    final /* synthetic */ dm c;

    dp(dm dmVar, AtomicReference atomicReference, Object obj) {
        this.c = dmVar;
        this.a = atomicReference;
        this.b = obj;
    }

    @Override // android.content.pm.IPackageStatsObserver
    public final void onGetStatsCompleted(PackageStats packageStats, boolean z) throws RemoteException {
        this.a.set(packageStats);
        synchronized (this.b) {
            this.b.notify();
        }
    }
}
