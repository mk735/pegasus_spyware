package tms;

import com.tencent.tmsecure.utils.ScriptHelper;

public final class hf extends Thread {
    final /* synthetic */ ScriptHelper.Callback a;

    public hf(ScriptHelper.Callback callback) {
        this.a = callback;
    }

    public final void run() {
        this.a.onFinish(ScriptHelper.canRunAtRoot(1));
    }
}
