package com.lenovo.safecenter.net;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.cache.NetConstant;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.utils.TrackEvent;

public class TrafficDailog extends Activity implements View.OnClickListener {
    private static boolean n = false;
    private int a;
    private int b;
    private int c = 0;
    private final int d = 20;
    private ConnectivityManager e;
    private Handler f = new Handler() {
        /* class com.lenovo.safecenter.net.TrafficDailog.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case R.id.net_deny:
                    TrafficDailog.this.h.setText(String.format(TrafficDailog.this.getString(R.string.net_traffic_deny_text), Integer.valueOf(20 - TrafficDailog.this.c)));
                    return;
                default:
                    return;
            }
        }
    };
    private TextView g;
    private TextView h;
    private TextView i;
    private LinearLayout j;
    private String k;
    private String l;
    private String m;

    static /* synthetic */ int c(TrafficDailog x0) {
        int i2 = x0.c;
        x0.c = i2 + 1;
        return i2;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.net_traffic_anto_deny_notice);
        this.e = (ConnectivityManager) getSystemService("connectivity");
        this.a = getIntent().getIntExtra(NetConstant.SIM_CARD_POSTION, 0);
        this.b = TrafficStatsService.getTrafficMode(this);
        this.l = getString(R.string.net_traffic_anto_deny_summary);
        this.m = getString(R.string.net_traffic_phone_sim);
        if (this.a != 0) {
            this.k = String.format(this.l, this.m + DatabaseTables.USER_MARK);
        } else if (this.b != 12) {
            this.k = String.format(this.l, "");
        } else {
            this.k = String.format(this.l, this.m + DatabaseTables.SYSTEM_MARK);
        }
        this.j = (LinearLayout) findViewById(R.id.net_traffic_notice_check_parent);
        this.j.setVisibility(8);
        this.g = (TextView) findViewById(R.id.continue_to_use);
        this.h = (TextView) findViewById(R.id.net_deny);
        this.i = (TextView) findViewById(R.id.des);
        this.h.setText(String.format(getString(R.string.net_traffic_deny_text), 20));
        this.i.setText(this.k);
        this.g.setOnClickListener(this);
        this.h.setOnClickListener(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        new Thread() {
            /* class com.lenovo.safecenter.net.TrafficDailog.AnonymousClass2 */

            public final void run() {
                while (TrafficDailog.this.c < 20) {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    TrafficDailog.c(TrafficDailog.this);
                    TrafficDailog.this.f.sendMessage(TrafficDailog.this.f.obtainMessage(R.id.net_deny));
                    if (TrafficStatsService.getBackValue() != -1) {
                        return;
                    }
                }
                if (TrafficStatsService.getBackValue() == -1) {
                    TrafficStatsService.setBackValue(1);
                    if (!TrafficDailog.n) {
                        TrafficDailog.this.e.setMobileDataEnabled(false);
                    }
                    TrafficDailog.this.finish();
                }
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.continue_to_use:
                n = true;
                TrackEvent.reportUserActionClickContinueUseInTrafficOutLimitDisableNet();
                break;
            case R.id.net_deny:
                n = false;
                this.e.setMobileDataEnabled(false);
                TrackEvent.reportUserActionClickDisableNetInTrafficOutLimitDisableNet();
                break;
        }
        finish();
    }
}
