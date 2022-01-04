package com.network.android.monitor.observer;

import android.content.Context;
import android.content.Intent;

final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Intent f103a;
    final /* synthetic */ Context b;
    final /* synthetic */ BatteryReceiver c;

    s(BatteryReceiver batteryReceiver, Intent intent, Context context) {
        this.c = batteryReceiver;
        this.f103a = intent;
        this.b = context;
    }

    public final void run() {
        BatteryReceiver.a(this.f103a, this.b);
    }
}
