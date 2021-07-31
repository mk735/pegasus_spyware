package com.tencent.lbsapi.core;

final class i implements Runnable {
    final /* synthetic */ QLBSEngine a;

    i(QLBSEngine qLBSEngine) {
        this.a = qLBSEngine;
    }

    public final void run() {
        if (QLBSEngine.c(this.a)) {
            if (!(QLBSEngine.k(this.a) == null || QLBSEngine.l(this.a) == null)) {
                QLBSEngine.k(this.a).removeUpdates(QLBSEngine.l(this.a));
            }
            QLBSEngine.m(this.a);
        }
        QLBSEngine.d(this.a).removeCallbacks(this.a.b);
        QLBSEngine.a(this.a, false);
    }
}
