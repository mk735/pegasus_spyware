package com.tendcloud.tenddata;

final class ac implements Runnable {
    ac() {
    }

    public void run() {
        TCAgent.c(TCAgent.f());
        if (TCAgent.j() == 0) {
            TCAgent.c(System.currentTimeMillis());
        }
        if (TCAgent.b()) {
            TCAgent.f = u.u();
        }
        TCAgent.b(0);
        TCAgent.a(7, 1000);
    }
}
