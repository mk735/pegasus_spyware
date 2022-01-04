package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;

public class CallNotifyActivity extends Activity implements View.OnClickListener {
    private String a;
    private int b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private EditText g;
    private Handler h = new Handler() {
        /* class com.lenovo.safecenter.MainTab.CallNotifyActivity.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    ((InputMethodManager) CallNotifyActivity.this.getSystemService("input_method")).toggleSoftInput(0, 2);
                    return;
                case 1:
                    CallNotifyActivity.this.finish();
                    return;
                default:
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent it = getIntent();
        if (it != null) {
            this.b = it.getIntExtra("style", 0);
            Log.i("style", "style==" + this.b);
        }
        this.a = PwdUtil.getPassword(this);
        if (this.a == null || this.a.length() == 0) {
            setContentView(R.layout.dialog_info);
        } else {
            setContentView(R.layout.input_password);
            new Thread() {
                /* class com.lenovo.safecenter.MainTab.CallNotifyActivity.AnonymousClass1 */

                public final void run() {
                    CallNotifyActivity.this.h.sendEmptyMessageDelayed(0, 500);
                }
            }.start();
        }
        ((LinearLayout) findViewById(R.id.input_password_layout)).setBackgroundResource(R.drawable.dialog_center);
        if (this.a == null || this.a.length() == 0) {
            this.f = (Button) findViewById(R.id.dialog_ok);
            this.e = (Button) findViewById(R.id.dialog_cancel);
            this.f.setOnClickListener(this);
            this.e.setOnClickListener(this);
            return;
        }
        findViewById(R.id.input_title_layout).setVisibility(0);
        ((TextView) findViewById(R.id.txt_message)).setText(R.string.input_privacy_pwd);
        this.g = (EditText) findViewById(R.id.edt_input_pwd);
        this.c = (TextView) findViewById(R.id.input_pwd_ok);
        this.c.setVisibility(0);
        this.c.setOnClickListener(this);
        this.d = (TextView) findViewById(R.id.input_pwd_cancel);
        this.d.setVisibility(0);
        this.d.setOnClickListener(this);
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

    public void onClick(View v) {
        if (this.f != null && v.getId() == this.f.getId()) {
            startActivity(new Intent(this, LeSafeMainActivity.class));
            finish();
        } else if (this.c != null && v.getId() == this.c.getId()) {
            String pwd = this.g.getText().toString();
            if (PwdUtil.checkPassword(getApplicationContext(), pwd)) {
                switch (this.b) {
                    case 500:
                        Intent callIntent = new Intent(this, SofeModeMain.class);
                        callIntent.putExtra("Type", SofeModeMain.TS_CALL);
                        callIntent.putExtra("pwd", this.a);
                        startActivity(callIntent);
                        finish();
                        return;
                    default:
                        return;
                }
            } else if (pwd.length() == 0) {
                Toast.makeText(this, (int) R.string.error_tips_null, 0).show();
            } else {
                Toast.makeText(this, (int) R.string.pwd_error, 0).show();
            }
        } else if (this.d != null && v.getId() == this.d.getId()) {
            finish();
        }
    }
}
