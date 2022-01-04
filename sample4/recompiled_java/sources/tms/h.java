package tms;

import android.content.BroadcastReceiver;

public class h {
    private static volatile boolean a = false;
    private static volatile boolean b = false;
    private static BroadcastReceiver c = new fs();

    h() {
    }

    public static synchronized void a() {
        synchronized (h.class) {
            if (!a) {
                a = true;
                af afVar = new af("tms");
                if (!afVar.a("reportlc", false)) {
                    new ft(afVar).start();
                }
            }
        }
    }
}
