package com.lenovo.safecenter.lenovoAntiSpam.views;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.domain.SignCall;
import com.lenovo.safecenter.lenovoAntiSpam.utils.CheckCenter;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;

public class SpamConfirm extends Activity implements View.OnClickListener {
    Handler a = new Handler() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.views.SpamConfirm.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 2:
                    Toast.makeText(SpamConfirm.this, (int) R.string.sign_success, 0).show();
                    SpamConfirm.this.finish();
                    return;
                default:
                    return;
            }
        }
    };
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private ImageView h;
    private int i;
    private AppDatabase j;
    public int pos = -1;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.signdialogupdate);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        initViews();
        this.j = new AppDatabase(this);
    }

    public void initViews() {
        this.h = (ImageView) findViewById(R.id.comfir_closed);
        this.b = (TextView) findViewById(R.id.title);
        this.c = (TextView) findViewById(R.id.sign_txt1);
        this.d = (TextView) findViewById(R.id.sign_txt2);
        this.e = (TextView) findViewById(R.id.sign_txt3);
        this.f = (TextView) findViewById(R.id.sign_txt4);
        this.g = (TextView) findViewById(R.id.sign_txt5);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.h.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.SpamConfirm.AnonymousClass2 */

            public final void onClick(View v) {
                SpamConfirm.this.finish();
            }
        });
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.sign_txt1:
                this.i = 1;
                addSign(1);
                return;
            case R.id.sign_txt2:
                this.i = 11;
                addSign(11);
                return;
            case R.id.sign_txt3:
                this.i = 2;
                addSign(2);
                return;
            case R.id.signblack_add:
            default:
                return;
            case R.id.sign_txt4:
                this.i = 12;
                addSign(12);
                return;
            case R.id.sign_txt5:
                this.i = 3;
                addSign(3);
                return;
        }
    }

    public String getDescFromType(int stype) {
        if (stype == 1) {
            return getString(R.string.signtype1);
        }
        if (stype == 2) {
            return getString(R.string.signtype2);
        }
        if (stype == 3) {
            return getString(R.string.signtype3);
        }
        if (stype == 11) {
            return getString(R.string.signtype4);
        }
        if (stype == 12) {
            return getString(R.string.signtype5);
        }
        if (stype == 13) {
            return getString(R.string.signtype6);
        }
        return getString(R.string.signtype1);
    }

    public void addSign(int flag) {
        SignCall info = new SignCall();
        info.setNumber(getIntent().getStringExtra(com.lenovo.safecenter.database.AppDatabase.NUMBER));
        info.setAddTime(String.valueOf(System.currentTimeMillis()));
        info.setbType(this.pos > 3 ? 1 : 0);
        info.setsType(flag);
        info.setTotalCall(getIntent().getIntExtra("wastetime", 0));
        Log.i(DatabaseTables.LOG_MESSAGE, "addSignaddSignaddSignaddSign===" + flag);
        this.j.insertSignCall(info);
        if (flag == 3) {
            Log.i(DatabaseTables.LOG_MESSAGE, "addSignaddSignaddSignaddSign===" + flag + ">>>>" + CheckCenter.insertLocalBlack(this, 2, getIntent().getStringExtra(com.lenovo.safecenter.database.AppDatabase.NUMBER)) + com.lenovo.safecenter.database.AppDatabase.NUMBER + getIntent().getStringExtra(com.lenovo.safecenter.database.AppDatabase.NUMBER));
        }
        new Thread() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.SpamConfirm.AnonymousClass3 */

            public final void run() {
                try {
                    if (new HttpUtils().upload_sign(SpamConfirm.this, SpamConfirm.this.getIntent().getStringExtra(com.lenovo.safecenter.database.AppDatabase.NUMBER), String.valueOf(SpamConfirm.this.i)) == 2) {
                        SpamConfirm.this.j.updateSign(SpamConfirm.this.getIntent().getStringExtra(com.lenovo.safecenter.database.AppDatabase.NUMBER));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
        showToast();
        finish();
    }

    public void showToast() {
        Toast toast = new Toast(this);
        toast.setView(LayoutInflater.from(this).inflate(R.layout.signtoast, (ViewGroup) null));
        String txt1_content = String.format(getString(R.string.report_sign), getDescFromType(this.i));
        SpannableString spannable = new SpannableString(txt1_content);
        spannable.setSpan(new AbsoluteSizeSpan(21, true), txt1_content.length() - getDescFromType(this.i).length(), txt1_content.length(), 33);
        ((TextView) toast.getView().findViewById(R.id.toast_big)).setText(spannable);
        int count = this.j.getSignCount();
        String txt2_content = String.format(getString(R.string.report_count), Integer.valueOf(count));
        SpannableString spannable2 = new SpannableString(txt2_content);
        Log.i("mes", "===" + txt2_content.length() + "===" + String.valueOf(count).length() + "=====" + ((txt2_content.length() - String.valueOf(count).length()) - 1) + "====" + (txt2_content.length() - 1));
        spannable2.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.signblue)), txt2_content.length() - (String.valueOf(count).length() + 1), txt2_content.length() - 1, 33);
        ((TextView) toast.getView().findViewById(R.id.toast_small)).setText(spannable2);
        toast.setDuration(1);
        Log.i("Gravity", (Const.getScreenWidth() / 2) + "==" + (Const.getScreenHeight() / 2));
        toast.setGravity(17, 0, 0);
        toast.show();
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
        this.b.setText(String.format(getString(R.string.confirm_title), getIntent().getStringExtra(com.lenovo.safecenter.database.AppDatabase.NUMBER)));
    }
}
