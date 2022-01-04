package com.lenovo.safecenter.platform;

import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.lenovo.safecenter.R;

public abstract class BaseTitlePreferenceActivity extends PreferenceActivity implements View.OnClickListener {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(7);
        super.onCreate(savedInstanceState);
        Log.i("BaseTitleActivity", "onCreate");
    }

    public void setTitle(Integer leftImgId, int titleStrId, Integer rightImgId) {
        getWindow().setFeatureInt(7, R.layout.rf_perf_basetitle);
        Log.i("BaseTitleActivity", "setTitle()...leftImgId=" + leftImgId + "--rightImgId=" + rightImgId);
        ((TextView) findViewById(R.id.base_title_center)).setText(titleStrId);
        findViewById(R.id.base_title_center).setOnClickListener(this);
        if (leftImgId != null) {
            findViewById(R.id.base_title_left).setOnClickListener(this);
        } else {
            setLeftImgGone(8);
        }
        if (rightImgId != null) {
            findViewById(R.id.base_title_right).setOnClickListener(this);
        } else {
            setRightImgGone(8);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onRestart() {
        super.onRestart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }

    public void onClick(View v) {
    }

    public void setLeftImgGone(int gone) {
        Log.i("BaseTitleActivity", "setLeftImgGone()...gone=" + gone);
        findViewById(R.id.base_title_left).setVisibility(gone);
    }

    public void setRightImgGone(int gone) {
        findViewById(R.id.base_title_right).setVisibility(gone);
    }
}
