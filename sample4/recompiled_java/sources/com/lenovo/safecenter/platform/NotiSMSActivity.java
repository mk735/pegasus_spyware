package com.lenovo.safecenter.platform;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;

public class NotiSMSActivity extends Activity {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private PackageManager g;
    private Context h;
    private AppDatabase i;
    private ProgressBar j;
    private long k = System.currentTimeMillis();
    private int l = 0;
    private int m = 10;
    private TextView n;
    private Handler o = new Handler() {
        /* class com.lenovo.safecenter.platform.NotiSMSActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    NotiSMSActivity.this.finish();
                    Toast.makeText(NotiSMSActivity.this, (int) R.string.upsuccess, 0).show();
                    return;
                case 1:
                    NotiSMSActivity.this.finish();
                    Toast.makeText(NotiSMSActivity.this, (int) R.string.neterror, 0).show();
                    return;
                case 2:
                default:
                    return;
                case 3:
                    NotiSMSActivity.this.finish();
                    return;
                case 4:
                    NotiSMSActivity.this.finish();
                    Toast.makeText(NotiSMSActivity.this, NotiSMSActivity.this.getString(R.string.net_notavilable), 0).show();
                    return;
                case 5:
                    Toast.makeText(NotiSMSActivity.this, NotiSMSActivity.this.getString(R.string.phonenum_null), 0).show();
                    return;
                case 6:
                    Toast.makeText(NotiSMSActivity.this, NotiSMSActivity.this.getString(R.string.sms_content_null), 0).show();
                    return;
                case 7:
                    NotiSMSActivity.this.n.setText(String.format(NotiSMSActivity.this.getString(R.string.send_off2), Integer.valueOf(NotiSMSActivity.this.m - NotiSMSActivity.this.l)));
                    return;
            }
        }
    };

    static /* synthetic */ int d(NotiSMSActivity x0) {
        int i2 = x0.l;
        x0.l = i2 + 1;
        return i2;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.noti_sms);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        this.g = getPackageManager();
        this.h = this;
        this.i = new AppDatabase(this);
        Intent smsIntent = getIntent();
        this.e = smsIntent.getStringExtra(DatabaseTables.LOG_MESSAGE);
        this.a = smsIntent.getStringExtra("phoneNumber");
        this.b = smsIntent.getStringExtra(AppDatabase.CONTENT);
        this.c = smsIntent.getStringExtra("packageName");
        this.f = smsIntent.getStringExtra("valueName");
        ImageView imageView = (ImageView) findViewById(R.id.app_icon_sms);
        TextView textView = (TextView) findViewById(R.id.app_name_sms);
        TextView textView2 = (TextView) findViewById(R.id.des);
        EditText editText = (EditText) findViewById(R.id.smscontent);
        final TextView textView3 = (TextView) findViewById(R.id.send);
        final TextView textView4 = (TextView) findViewById(R.id.unsend_report);
        this.j = (ProgressBar) findViewById(R.id.noti_progress);
        this.n = (TextView) findViewById(R.id.unsend);
        this.n.setText(String.format(getString(R.string.send_off2), Integer.valueOf(this.m)));
        if (this.c == null) {
            this.d = getText(R.string.unknownapp).toString();
            imageView.setBackgroundResource(R.drawable.icon3);
        } else {
            try {
                this.d = this.g.getApplicationInfo(this.c, 0).loadLabel(this.g).toString();
                imageView.setBackgroundDrawable(this.g.getApplicationIcon(this.c));
                if (this.i.getApp_isupload(this.c) == 1) {
                    textView4.setText(R.string.hadupload_log);
                    textView4.setEnabled(false);
                } else {
                    textView4.setText(R.string.report);
                    textView4.setEnabled(true);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        textView.setText(this.d);
        textView2.setText(this.e);
        editText.setText(getString(R.string.smscontent) + this.b);
        AnonymousClass3 r1 = new View.OnClickListener() {
            /* class com.lenovo.safecenter.platform.NotiSMSActivity.AnonymousClass3 */

            public final void onClick(View v) {
                textView3.setEnabled(false);
                NotiSMSActivity.this.n.setEnabled(false);
                textView4.setEnabled(false);
                switch (v.getId()) {
                    case R.id.send:
                        SafeCenterService.setBackValue(NotiSMSActivity.this.f, 0);
                        NotiSMSActivity.this.finish();
                        return;
                    case R.id.unsend:
                        SafeCenterService.setBackValue(NotiSMSActivity.this.f, 1);
                        NotiSMSActivity.this.finish();
                        return;
                    case R.id.unsend_report:
                        if (SafeCenterService.getBackValue(NotiSMSActivity.this.f) == -1) {
                            SafeCenterService.setBackValue(NotiSMSActivity.this.f, 1);
                        }
                        NotiSMSActivity.this.j.setVisibility(0);
                        new Thread() {
                            /* class com.lenovo.safecenter.platform.NotiSMSActivity.AnonymousClass3.AnonymousClass1 */

                            public final void run() {
                                if (HttpUtils.reportTariffLog(NotiSMSActivity.this.h, NotiSMSActivity.this.c, "0", NotiSMSActivity.this.d, MyUtils.formatReportTime(Long.toString(NotiSMSActivity.this.k), NotiSMSActivity.this.h), NotiSMSActivity.this.a, NotiSMSActivity.this.b) == 2) {
                                    NotiSMSActivity.this.i.updateApp_isupload(NotiSMSActivity.this.c, 1);
                                    NotiSMSActivity.this.o.sendMessage(NotiSMSActivity.this.o.obtainMessage(0));
                                    return;
                                }
                                NotiSMSActivity.this.o.sendMessage(NotiSMSActivity.this.o.obtainMessage(1));
                            }
                        }.start();
                        return;
                    default:
                        return;
                }
            }
        };
        textView3.setOnClickListener(r1);
        this.n.setOnClickListener(r1);
        textView4.setOnClickListener(r1);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        new Thread() {
            /* class com.lenovo.safecenter.platform.NotiSMSActivity.AnonymousClass2 */

            public final void run() {
                while (NotiSMSActivity.this.l < NotiSMSActivity.this.m) {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    NotiSMSActivity.d(NotiSMSActivity.this);
                    NotiSMSActivity.this.o.sendMessage(NotiSMSActivity.this.o.obtainMessage(7));
                    if (SafeCenterService.getBackValue(NotiSMSActivity.this.f) != -1) {
                        return;
                    }
                }
                if (SafeCenterService.getBackValue(NotiSMSActivity.this.f) == -1) {
                    SafeCenterService.setBackValue(NotiSMSActivity.this.f, 1);
                    NotiSMSActivity.this.finish();
                }
            }
        }.start();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            keyCode = -1;
        }
        return super.onKeyDown(keyCode, event);
    }
}
