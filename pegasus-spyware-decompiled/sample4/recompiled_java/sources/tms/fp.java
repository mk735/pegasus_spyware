package tms;

import android.os.Bundle;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import java.util.concurrent.atomic.AtomicBoolean;
import tms.x;

/* access modifiers changed from: package-private */
public final class fp implements x.a {
    final /* synthetic */ IUpdateListener.UpdateListener a;
    final /* synthetic */ UpdateInfo b;
    final /* synthetic */ AtomicBoolean c;
    final /* synthetic */ gy d;

    fp(gy gyVar, IUpdateListener.UpdateListener updateListener, UpdateInfo updateInfo, AtomicBoolean atomicBoolean) {
        this.d = gyVar;
        this.a = updateListener;
        this.b = updateInfo;
        this.c = atomicBoolean;
    }

    @Override // tms.x.a
    public final void a(Bundle bundle) {
        this.a.onUpdateEvent(this.b, bundle.getInt(x.e));
        this.c.set(true);
    }

    @Override // tms.x.a
    public final void b(Bundle bundle) {
    }
}
