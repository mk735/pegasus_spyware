package com.network.android.monitor.observer;

import android.telephony.PhoneStateListener;
import com.network.android.c.a.a;

public final class t extends PhoneStateListener {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f104a = false;

    public static boolean a() {
        return f104a;
    }

    public final void onCallForwardingIndicatorChanged(boolean z) {
        a.a("onCallForwardingIndicatorChanged: " + z);
        super.onCallForwardingIndicatorChanged(z);
        f104a = z;
    }
}
