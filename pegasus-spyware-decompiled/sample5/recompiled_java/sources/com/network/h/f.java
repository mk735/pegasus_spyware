package com.network.h;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f147a;

    f(Context context) {
        this.f147a = context;
    }

    public final void run() {
        try {
            b.b(this.f147a);
        } catch (Throwable th) {
            a.a("killProcess: " + th.getMessage(), th);
        }
    }
}
