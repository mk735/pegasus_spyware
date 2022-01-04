package tms;

import tms.gn;

/* access modifiers changed from: package-private */
public final class fm extends Thread {
    final /* synthetic */ gn.a a;
    final /* synthetic */ String b;
    final /* synthetic */ gn.d c;

    fm(gn.d dVar, gn.a aVar, String str) {
        this.c = dVar;
        this.a = aVar;
        this.b = str;
    }

    public final void run() {
        super.run();
        synchronized (gn.this.a) {
            this.a.a(this.b);
        }
    }
}
