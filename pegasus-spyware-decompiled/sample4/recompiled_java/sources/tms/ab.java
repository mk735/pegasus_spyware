package tms;

import android.content.ComponentName;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import com.tencent.tmsecure.common.ISDKClient;
import tms.w;

/* access modifiers changed from: package-private */
public final class ab extends w.a {
    final /* synthetic */ Object c;
    final /* synthetic */ w d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ab(w wVar, ServiceInfo serviceInfo, Object obj) {
        super(serviceInfo);
        this.d = wVar;
        this.c = obj;
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.b = ISDKClient.Proxy.asInterface(iBinder);
        this.d.c.put(this.a.packageName, this.b);
        synchronized (this.c) {
            this.c.notify();
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        this.d.c.remove(this.a.packageName);
        this.b = null;
    }
}
