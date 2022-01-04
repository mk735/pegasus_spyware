package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.os.Bundle;
import android.text.format.Formatter;
import android.view.View;
import android.widget.TextView;
import com.lenovo.lps.sus.SUS;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;

public class VersionUpdateDIalogActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        ((TextView) findViewById(R.id.title)).setText(R.string.SUS_VERSIONUPDATE);
        ((TextView) findViewById(R.id.message)).setText(getString(R.string.SUS_UPDATEVERPROMPT_VERNAME) + getIntent().getStringExtra("versionname") + "\n" + getString(R.string.SUS_UPDATEVERPROMPT_VERSIZE) + Formatter.formatFileSize(this, getIntent().getLongExtra("filesize", 0)) + "\n" + getString(R.string.SUS_UPDATESIZEPROMPT_WLAN) + "\n" + getIntent().getStringExtra("appinfo"));
        TextView okbtn = (TextView) findViewById(R.id.positiveButton);
        okbtn.setText(R.string.SUS_UPDATE);
        okbtn.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.VersionUpdateDIalogActivity.AnonymousClass1 */

            public final void onClick(View v) {
                SUS.downloadApp(VersionUpdateDIalogActivity.this, VersionUpdateDIalogActivity.this.getIntent().getStringExtra("url"), VersionUpdateDIalogActivity.this.getIntent().getStringExtra("apkname"), Long.valueOf(VersionUpdateDIalogActivity.this.getIntent().getLongExtra("filesize", 0)));
                VersionUpdateDIalogActivity.this.finish();
            }
        });
        findViewById(R.id.neutralButton).setVisibility(8);
        TextView cancelbtn = (TextView) findViewById(R.id.negativeButton);
        cancelbtn.setText(R.string.cancel);
        cancelbtn.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.VersionUpdateDIalogActivity.AnonymousClass2 */

            public final void onClick(View v) {
                VersionUpdateDIalogActivity.this.finish();
            }
        });
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
