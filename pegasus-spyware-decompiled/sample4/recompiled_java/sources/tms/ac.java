package tms;

import android.content.Intent;
import tms.w;

/* access modifiers changed from: package-private */
public final class ac implements Runnable {
    final /* synthetic */ Intent a;
    final /* synthetic */ w.a b;
    final /* synthetic */ w c;

    ac(w wVar, Intent intent, w.a aVar) {
        this.c = wVar;
        this.a = intent;
        this.b = aVar;
    }

    public final void run() {
        this.c.d.bindService(this.a, this.b, 1);
    }
}
