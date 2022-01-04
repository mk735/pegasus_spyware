package com.tencent.lbsapi.core;

import com.lenovo.performancecenter.coreui.util.Utils;

final class g implements Runnable {
    final /* synthetic */ QLBSEngine a;

    g(QLBSEngine qLBSEngine) {
        this.a = qLBSEngine;
    }

    public final void run() {
        if (!QLBSEngine.b(this.a) && QLBSEngine.c(this.a)) {
            QLBSEngine.a(this.a, true);
            QLBSEngine.d(this.a).postDelayed(this.a.b, Utils.CLICK_INTERVAL);
        }
        if (QLBSEngine.e(this.a) == 0 && QLBSEngine.f(this.a) == 900000000 && QLBSEngine.g(this.a).size() == 0) {
            if (QLBSEngine.h(this.a) != null) {
                QLBSEngine.h(this.a).onLocationNotification(0);
                QLBSEngine.i(this.a);
            }
        } else if (QLBSEngine.h(this.a) != null) {
            QLBSEngine.h(this.a).onLocationNotification(1);
            QLBSEngine.i(this.a);
        }
        QLBSEngine.d(this.a).removeCallbacks(this.a.a);
        QLBSEngine.j(this.a);
    }
}
