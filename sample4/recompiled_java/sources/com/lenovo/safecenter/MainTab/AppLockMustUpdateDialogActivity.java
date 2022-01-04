package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;

public class AppLockMustUpdateDialogActivity extends Activity implements View.OnClickListener {
    private Handler a = new Handler() {
        /* class com.lenovo.safecenter.MainTab.AppLockMustUpdateDialogActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    Toast.makeText(AppLockMustUpdateDialogActivity.this, (String) msg.obj, 1).show();
                    break;
            }
            super.handleMessage(msg);
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        ((TextView) findViewById(R.id.title)).setText(R.string.update_lab_notice_text);
        TextView okbtn = (TextView) findViewById(R.id.positiveButton);
        okbtn.setText(R.string.install_text);
        okbtn.setOnClickListener(this);
        findViewById(R.id.neutralButton).setVisibility(8);
        findViewById(R.id.negativeButton).setVisibility(8);
        View contentView = LayoutInflater.from(this).inflate(R.layout.dialog_notice_update, (ViewGroup) null);
        ((TextView) contentView.findViewById(R.id.labUpdateNote)).setText(getString(R.string.app_lock_must_update));
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
                AppDownloadActivity.copyAssetsFilesInstall(AppDownloadActivity.APP_LOCK_FILE_NAME, Const.PACKAGENAME_APP_LOCK, this, this.a, 0);
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
