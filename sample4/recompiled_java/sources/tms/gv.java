package tms;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.BaseManager;

public final class gv extends BaseManager {
    private Handler a;

    public final boolean a(Runnable runnable, long j) {
        if (runnable == null) {
            return false;
        }
        Message obtainMessage = this.a.obtainMessage();
        obtainMessage.obj = runnable;
        return this.a.sendMessageDelayed(obtainMessage, j);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new fn(this, context.getMainLooper());
    }
}
