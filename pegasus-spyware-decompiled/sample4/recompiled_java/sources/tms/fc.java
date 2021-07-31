package tms;

import tms.gn;

/* access modifiers changed from: package-private */
public final class fc extends Thread {
    final /* synthetic */ String a;
    final /* synthetic */ gn.b b;

    fc(gn.b bVar, String str) {
        this.b = bVar;
        this.a = str;
    }

    public final void run() {
        this.b.a.onPackageAdded(this.a);
    }
}
