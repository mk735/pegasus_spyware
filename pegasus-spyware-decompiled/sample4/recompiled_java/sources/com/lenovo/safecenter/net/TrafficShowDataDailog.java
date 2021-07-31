package com.lenovo.safecenter.net;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.utils.TrackEvent;

public class TrafficShowDataDailog extends Activity implements View.OnClickListener {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private ImageView e;
    private boolean f;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.net_traffic_anto_deny_notice);
        this.f = TrafficStatsService.getTrafficDaliogNoticeValue(this);
        this.a = (TextView) findViewById(R.id.continue_to_use);
        this.b = (TextView) findViewById(R.id.net_deny);
        this.c = (TextView) findViewById(R.id.net_traffic_dailog_title);
        this.d = (TextView) findViewById(R.id.des);
        this.c.setText(R.string.net_traffic_show_data_noti_title);
        this.b.setText(R.string.net_traffic_lookup);
        this.a.setText(R.string.net_traffic_ignore);
        this.d.setText(R.string.net_traffic_show_data_noti_summary);
        this.e = (ImageView) findViewById(R.id.net_traffic_notice_check);
        a();
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.e.setOnClickListener(this);
    }

    private void a() {
        this.e.setBackgroundResource(this.f ? R.drawable.ic_checkbox_select : R.drawable.ic_checkbox);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.net_traffic_notice_check:
                this.f = !this.f;
                a();
                TrafficStatsService.setTrafficDaliogNoticeValue(this, this.f);
                TrackEvent.reportUserActionClickNotPromptPopupTrafficUsedStatus();
                return;
            case R.id.net_traffic_look_up:
            default:
                return;
            case R.id.continue_to_use:
                TrackEvent.reportUserActionClickIgnorePopupTrafficUsedStatus();
                finish();
                return;
            case R.id.net_deny:
                TrafficStatsService.startIntentTraffic(this);
                TrackEvent.reportUserActionClickLookPopupTrafficUsedStatus();
                finish();
                return;
        }
    }
}
