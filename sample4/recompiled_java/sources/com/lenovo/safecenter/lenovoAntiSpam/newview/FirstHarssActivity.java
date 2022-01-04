package com.lenovo.safecenter.lenovoAntiSpam.newview;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;

public class FirstHarssActivity extends Activity implements View.OnClickListener {
    String a = null;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        if (getIntent() != null) {
            this.a = getIntent().getStringExtra("from");
        }
        ((RelativeLayout) findViewById(R.id.rel_title)).setGravity(17);
        ((ImageView) findViewById(R.id.icon)).setVisibility(8);
        ((TextView) findViewById(R.id.title)).setText(R.string.harss_firsttitle);
        TextView okbtn = (TextView) findViewById(R.id.positiveButton);
        okbtn.setText(R.string.known);
        okbtn.setOnClickListener(this);
        findViewById(R.id.neutralButton).setVisibility(8);
        findViewById(R.id.negativeButton).setVisibility(8);
        View contentView = LayoutInflater.from(this).inflate(R.layout.firstharass, (ViewGroup) null);
        if (this.a == null) {
            ((LinearLayout) contentView.findViewById(R.id.harass_layout)).setVisibility(0);
        } else {
            ((LinearLayout) contentView.findViewById(R.id.privacy_layout)).setVisibility(0);
            ((TextView) contentView.findViewById(R.id.labUpdateNote)).setText(R.string.privacy_firstdesc);
        }
        ((LinearLayout) findViewById(R.id.content)).removeAllViews();
        ((LinearLayout) findViewById(R.id.content)).addView(contentView, new ViewGroup.LayoutParams(-1, -2));
        contentView.setPadding(10, 5, 10, 5);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.positiveButton:
                finish();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }
}
