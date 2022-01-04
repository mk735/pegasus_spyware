package tms;

import tms.gn;

/* access modifiers changed from: package-private */
public final class fe extends Thread {
    final /* synthetic */ String a;
    final /* synthetic */ gn.b b;

    fe(gn.b bVar, String str) {
        this.b = bVar;
        this.a = str;
    }

    public final void run() {
        this.b.a.onPackageReinstall(this.a);
    }
}
