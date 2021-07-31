package com.tendcloud.tenddata;

final class aa implements Runnable {
    final /* synthetic */ Throwable a;

    aa(Throwable th) {
        this.a = th;
    }

    public void run() {
        try {
            if (TCAgent.q() && TCAgent.r() != null) {
                TCAgent.a(this.a);
            }
        } catch (Throwable th) {
        }
    }
}
