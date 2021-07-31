package tms;

import tms.gn;

/* access modifiers changed from: package-private */
public final class fd extends Thread {
    final /* synthetic */ String a;
    final /* synthetic */ gn.b b;

    fd(gn.b bVar, String str) {
        this.b = bVar;
        this.a = str;
    }

    public final void run() {
        this.b.a.onPackageRemoved(this.a);
    }
}
