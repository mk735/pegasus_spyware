package tms;

import android.database.ContentObserver;
import android.os.Handler;
import tms.bb;

/* access modifiers changed from: package-private */
public final class an extends ContentObserver {
    final /* synthetic */ bb a;
    final /* synthetic */ bb.c b;
    private long c = -1;
    private Handler d = new Handler(bb.this.e.getMainLooper());
    private Runnable e = new at(this);

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    an(bb.c cVar, Handler handler, bb bbVar) {
        super(handler);
        this.b = cVar;
        this.a = bbVar;
    }

    public final void onChange(boolean z) {
        super.onChange(z);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.c > 20000 && (this.b.e)) {
            this.c = currentTimeMillis;
            this.d.removeCallbacks(this.e);
            this.d.postDelayed(this.e, 20000);
        }
    }
}
