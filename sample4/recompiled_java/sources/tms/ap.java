package tms;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.tmsecure.module.antitheft.LocationResolver;

public class ap extends Handler {
    final /* synthetic */ LocationResolver a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ap(LocationResolver locationResolver, Looper looper) {
        super(looper);
        this.a = locationResolver;
    }

    public void handleMessage(Message message) {
        synchronized (LocationResolver.a(this.a)) {
            if (!LocationResolver.b(this.a)) {
                LocationResolver.c(this.a);
            }
        }
    }
}
