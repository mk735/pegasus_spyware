package tms;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* access modifiers changed from: package-private */
public final class fn extends Handler {
    final /* synthetic */ gv a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    fn(gv gvVar, Looper looper) {
        super(looper);
        this.a = gvVar;
    }

    public final void handleMessage(Message message) {
        Runnable runnable = (Runnable) message.obj;
        if (runnable != null) {
            new Thread(runnable).start();
        }
    }
}
