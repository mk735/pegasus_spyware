package com.tencent.lbsapi.a;

import android.content.Context;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class f {
    private static ThreadPoolExecutor a = null;
    private b b = null;

    public f(b bVar) {
        this.b = bVar;
    }

    /* access modifiers changed from: protected */
    public synchronized ThreadPoolExecutor a() {
        if (a == null) {
            a = new ThreadPoolExecutor(2, 6, 60, TimeUnit.SECONDS, new ArrayBlockingQueue(12));
        }
        return a;
    }

    public boolean a(Context context, int i, String str, byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        try {
            a aVar = new a();
            aVar.a(bArr);
            aVar.a(i);
            aVar.a(this.b);
            aVar.a(str);
            aVar.a(context);
            a().execute(aVar);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public synchronized void b() {
        if (a != null) {
            a.shutdownNow();
            a = null;
        }
    }
}
