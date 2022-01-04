package com.lenovo.safecenter.lenovoAntiSpam.newview;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.views.FullSystemScanActivity;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;

public class ShowConfirm extends Activity implements View.OnClickListener {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        ((RelativeLayout) findViewById(R.id.rel_title)).setGravity(17);
        ImageView img = (ImageView) findViewById(R.id.icon);
        img.setVisibility(8);
        img.setImageResource(R.drawable.prisign_icon);
        ((TextView) findViewById(R.id.title)).setText(R.string.harss_firsttitle);
        TextView okbtn = (TextView) findViewById(R.id.positiveButton);
        okbtn.setOnClickListener(this);
        findViewById(R.id.neutralButton).setVisibility(8);
        TextView cancelbtn = (TextView) findViewById(R.id.negativeButton);
        cancelbtn.setOnClickListener(this);
        View contentView = LayoutInflater.from(this).inflate(R.layout.dialog_notice_update, (ViewGroup) null);
        TextView note = (TextView) contentView.findViewById(R.id.labUpdateNote);
        if (getIntent().getStringExtra("from").equals("cloudscan")) {
            note.setText(String.format(getString(R.string.show_cloudscan), getIntent().getStringExtra("count")));
            cancelbtn.setText(R.string.antivirusappvirus_nodeal);
            okbtn.setText(R.string.show_cloudscanok);
        } else if (getIntent().getStringExtra("from").equals("nullnumber")) {
            note.setText(R.string.nonumber_confirm);
            cancelbtn.setText(R.string.first_sign_cancel);
            okbtn.setText(R.string.nonumber_ok);
        }
        ((LinearLayout) findViewById(R.id.content)).removeAllViews();
        ((LinearLayout) findViewById(R.id.content)).addView(contentView, new ViewGroup.LayoutParams(-1, -2));
        contentView.setPadding(10, 5, 10, 5);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.negativeButton:
                if (getIntent().getStringExtra("from").equals("cloudscan")) {
                    TrackEvent.reportUserActionIgnoreVirusCanUpdateNotice();
                }
                finish();
                return;
            case R.id.neutralButton:
            default:
                return;
            case R.id.positiveButton:
                if (getIntent().getStringExtra("from").equals("cloudscan")) {
                    TrackEvent.reportUserActionCloudKillVirusCanUpdateNotice();
                    startActivity(new Intent(this, FullSystemScanActivity.class));
                } else if (getIntent().getStringExtra("from").equals("nullnumber")) {
                    new HttpUtils().UpdateConfig("getnonumber", DatabaseTables.SYSTEM_MARK, this);
                }
                finish();
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }
}
