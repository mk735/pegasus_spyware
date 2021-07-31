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
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.views.SpamConfirm;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;

public class FirstSignActivity extends Activity implements View.OnClickListener {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        ((RelativeLayout) findViewById(R.id.rel_title)).setGravity(16);
        ImageView img = (ImageView) findViewById(R.id.icon);
        img.setVisibility(0);
        img.setImageResource(R.drawable.prisign_icon);
        ((TextView) findViewById(R.id.title)).setText(R.string.sign);
        TextView okbtn = (TextView) findViewById(R.id.positiveButton);
        okbtn.setText(R.string.first_sign_ok);
        okbtn.setOnClickListener(this);
        findViewById(R.id.neutralButton).setVisibility(8);
        TextView cancelbtn = (TextView) findViewById(R.id.negativeButton);
        cancelbtn.setText(R.string.first_sign_cancel);
        cancelbtn.setOnClickListener(this);
        View contentView = LayoutInflater.from(this).inflate(R.layout.dialog_notice_update, (ViewGroup) null);
        ((TextView) contentView.findViewById(R.id.labUpdateNote)).setText(String.format(getString(R.string.sign_actinfo), getIntent().getStringExtra(AppDatabase.NUMBER)));
        ((LinearLayout) findViewById(R.id.content)).removeAllViews();
        ((LinearLayout) findViewById(R.id.content)).addView(contentView, new ViewGroup.LayoutParams(-1, -2));
        contentView.setPadding(10, 5, 10, 5);
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.negativeButton:
                new AppDatabase(this).insertHarassPhone(getIntent().getStringExtra(AppDatabase.NUMBER));
                finish();
                return;
            case R.id.neutralButton:
            default:
                return;
            case R.id.positiveButton:
                Intent intent = new Intent(this, SpamConfirm.class);
                intent.addFlags(335544320);
                intent.putExtra(AppDatabase.NUMBER, getIntent().getStringExtra(AppDatabase.NUMBER));
                intent.putExtra("wastetime", getIntent().getIntExtra("wastetime", 0));
                startActivity(intent);
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
