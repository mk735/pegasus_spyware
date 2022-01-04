package com.tendcloud.tenddata;

import android.util.Log;
import java.lang.Thread;

/* access modifiers changed from: package-private */
public class i implements Thread.UncaughtExceptionHandler {
    private Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();

    i() {
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (TCAgent.J) {
            TCAgent.b(th);
            Log.w("TalkingData", "UncaughtException in Thread " + thread.getName(), th);
        }
        if (this.a != null) {
            this.a.uncaughtException(thread, th);
        }
    }
}
