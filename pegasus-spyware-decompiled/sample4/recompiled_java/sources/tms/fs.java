package tms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;

final class fs extends BroadcastReceiver {
    fs() {
    }

    public final void onReceive(Context context, Intent intent) {
        NetworkInfo networkInfo;
        if (intent != null && (networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo")) != null && networkInfo.isConnected() && !(h.a)) {
            h.a();
        }
    }
}
