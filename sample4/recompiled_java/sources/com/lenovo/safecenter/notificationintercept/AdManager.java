package com.lenovo.safecenter.notificationintercept;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;

public class AdManager extends Activity implements View.OnClickListener {
    private TextView a;
    private ImageView b;
    private ToggleButton c;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.notification_admanager);
        this.a = (TextView) findViewById(R.id.txt_title);
        this.a.setText(getString(R.string.intercept_app_ad_setting));
        this.b = (ImageView) findViewById(R.id.title_back);
        this.c = (ToggleButton) findViewById(R.id.intercept_notify_switch);
        findViewById(R.id.notify_switch_layout).setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.c.setChecked(PreferenceManager.getDefaultSharedPreferences(this).getBoolean(InterceptUtils.NOTIFY_SWITCH, true));
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.notify_switch_layout:
                this.c.setChecked(!this.c.isChecked());
                SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this).edit();
                edit.putBoolean(InterceptUtils.NOTIFY_SWITCH, this.c.isChecked());
                edit.commit();
                return;
            case R.id.title_back:
                finish();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }
}
