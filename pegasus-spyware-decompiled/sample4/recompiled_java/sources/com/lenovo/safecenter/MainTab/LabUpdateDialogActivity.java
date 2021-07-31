package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;

public class LabUpdateDialogActivity extends Activity implements View.OnClickListener {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        ((TextView) findViewById(R.id.title)).setText(R.string.update_lab_notice_text);
        TextView okbtn = (TextView) findViewById(R.id.positiveButton);
        okbtn.setText(R.string.update);
        okbtn.setOnClickListener(this);
        findViewById(R.id.neutralButton).setVisibility(8);
        TextView cancelbtn = (TextView) findViewById(R.id.negativeButton);
        cancelbtn.setText(R.string.last_time_do);
        cancelbtn.setOnClickListener(this);
        View contentView = LayoutInflater.from(this).inflate(R.layout.dialog_notice_update, (ViewGroup) null);
        TextView note = (TextView) contentView.findViewById(R.id.labUpdateNote);
        StringBuffer canUpdatelabs = new StringBuffer();
        if (UpdateLabManager.getQueryLabStatus(0) == 0) {
            canUpdatelabs.append(" ");
            canUpdatelabs.append(getString(R.string.title_virus_lab));
        }
        if (UpdateLabManager.getQueryLabStatus(1) == 0) {
            if (canUpdatelabs.length() != 0) {
                canUpdatelabs.append("、");
            }
            canUpdatelabs.append(getString(R.string.harass_lab_text));
            canUpdatelabs.append(" ");
        }
        if (UpdateLabManager.getQueryLabStatus(3) == 0) {
            if (canUpdatelabs.length() != 0) {
                canUpdatelabs.append("、");
            }
            canUpdatelabs.append(getString(R.string.biaoji_lab));
            canUpdatelabs.append(" ");
        }
        note.setText(String.format(getString(R.string.has_lab_update_note_message), canUpdatelabs.toString()));
        ((LinearLayout) findViewById(R.id.content)).removeAllViews();
        ((LinearLayout) findViewById(R.id.content)).addView(contentView, new ViewGroup.LayoutParams(-1, -2));
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.negativeButton /*{ENCODED_INT: 2131296939}*/:
                finish();
                return;
            case R.id.neutralButton /*{ENCODED_INT: 2131296940}*/:
            default:
                return;
            case R.id.positiveButton /*{ENCODED_INT: 2131296941}*/:
                UpdateLabManager.startServiceUpdateLab(this);
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
        super.onResume();
        TrackEvent.trackResume(this);
    }
}
