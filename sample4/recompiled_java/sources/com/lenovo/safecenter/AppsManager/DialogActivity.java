package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.Laboratory.ForbiddenApplication;
import com.lenovo.safecenter.Laboratory.GuestModeSet;
import com.lenovo.safecenter.MainTab.FirstUsePasswordSettingActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.test.SafeCenter;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;

public class DialogActivity extends Activity implements View.OnClickListener {
    public static final int OPERATE_FAILED = 2;
    public static final int OPERATE_SUCCESS = 1;
    private Context a;
    private AppDatabase b;
    private SharedPreferences c;
    private String d;
    private int e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private EditText k;
    private ProgressBar l;
    private boolean m;
    private boolean n;
    private Handler o = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.DialogActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    ((InputMethodManager) DialogActivity.this.getSystemService("input_method")).toggleSoftInput(0, 2);
                    return;
                case 1:
                    LeSafeObservable.get(DialogActivity.this.a).noticeChangeGuestModeSuccess();
                    if (DialogActivity.this.l != null) {
                        DialogActivity.this.l.setVisibility(4);
                    }
                    if (Settings.System.getInt(DialogActivity.this.getContentResolver(), "guest_mode_on", 0) == 1) {
                        Toast.makeText(DialogActivity.this.a, (int) R.string.hide_contacts2, 0).show();
                    }
                    DialogActivity.this.finish();
                    return;
                case 2:
                    LeSafeObservable.get(DialogActivity.this.a).noticeChangeChildModeFail();
                    if (DialogActivity.this.l != null) {
                        DialogActivity.this.l.setVisibility(4);
                    }
                    DialogActivity.this.g.setEnabled(true);
                    DialogActivity.this.h.setEnabled(true);
                    DialogActivity.this.k.setEnabled(true);
                    Toast.makeText(DialogActivity.this.a, (int) R.string.info_failed, 1).show();
                    return;
                case 3:
                case 4:
                default:
                    return;
                case 5:
                    if (DialogActivity.this.l != null) {
                        DialogActivity.this.l.setVisibility(4);
                    }
                    Toast.makeText(DialogActivity.this.a, DialogActivity.this.getString(R.string.closed) + DialogActivity.this.getString(R.string.guest_mode), 0).show();
                    DialogActivity.this.finish();
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        this.a = this;
        Intent it = getIntent();
        if (it != null) {
            this.e = it.getIntExtra("style", 0);
        }
        this.b = new AppDatabase(this);
        this.c = PreferenceManager.getDefaultSharedPreferences(this);
        this.d = PwdUtil.getPassword(this);
        this.b.close();
        if (this.d == null || this.d.length() == 0) {
            setContentView(R.layout.dialog_info);
        } else {
            setContentView(R.layout.input_password);
            this.o.sendEmptyMessageDelayed(0, 500);
        }
        ((LinearLayout) findViewById(R.id.input_password_layout)).setBackgroundResource(R.drawable.dialog_center);
        if (this.d == null || this.d.length() == 0) {
            this.j = (TextView) findViewById(R.id.dialog_ok);
            this.i = (TextView) findViewById(R.id.dialog_cancel);
            this.j.setOnClickListener(this);
            this.i.setOnClickListener(this);
            return;
        }
        ((RelativeLayout) findViewById(R.id.input_title_layout)).setVisibility(0);
        ((LinearLayout) findViewById(R.id.input_password_layout)).setBackgroundResource(R.drawable.dialog_center);
        this.f = (TextView) findViewById(R.id.txt_message);
        this.f.setText(R.string.input_privacy_pwd);
        this.l = (ProgressBar) findViewById(R.id.input_noti_progress);
        this.k = (EditText) findViewById(R.id.edt_input_pwd);
        this.k.setEnabled(true);
        this.g = (TextView) findViewById(R.id.input_pwd_ok);
        this.g.setVisibility(0);
        this.g.setOnClickListener(this);
        this.h = (TextView) findViewById(R.id.input_pwd_cancel);
        this.h.setVisibility(0);
        this.h.setOnClickListener(this);
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.e = intent.getIntExtra("style", 0);
    }

    public void onClick(View v) {
        boolean z;
        switch (v.getId()) {
            case R.id.dialog_cancel /*{ENCODED_INT: 2131296943}*/:
            case R.id.input_pwd_cancel /*{ENCODED_INT: 2131297106}*/:
                finish();
                return;
            case R.id.dialog_ok /*{ENCODED_INT: 2131296944}*/:
                startActivity(new Intent(this, FirstUsePasswordSettingActivity.class));
                finish();
                return;
            case R.id.input_pwd_ok /*{ENCODED_INT: 2131297107}*/:
                String pwd = this.k.getText().toString();
                if (PwdUtil.checkPassword(getApplicationContext(), pwd)) {
                    InputMethodManager m2 = (InputMethodManager) getSystemService("input_method");
                    if (m2.isActive()) {
                        m2.toggleSoftInput(0, 2);
                    }
                    this.m = Settings.System.getInt(getApplicationContext().getContentResolver(), "child_mode_on", 0) == 1;
                    if (Settings.System.getInt(getApplicationContext().getContentResolver(), "guest_mode_on", 0) == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.n = z;
                    switch (this.e) {
                        case 0:
                            if (this.m) {
                                startActivity(new Intent(this, ForbiddenApplication.class));
                                finish();
                                return;
                            } else if (this.n) {
                                startActivity(new Intent(this, GuestModeSet.class));
                                finish();
                                return;
                            } else {
                                return;
                            }
                        case 1:
                            if (this.n) {
                                a(false, true);
                                return;
                            } else if (AppUtil.isAppExistence(this.a, Const.PACKAGENAME_KID_MODE)) {
                                WflUtils.startKidMode(this.a);
                                finish();
                                return;
                            } else {
                                if (this.l != null) {
                                    this.l.setVisibility(0);
                                }
                                this.g.setEnabled(false);
                                this.h.setEnabled(false);
                                this.k.setEnabled(false);
                                new Thread() {
                                    /* class com.lenovo.safecenter.AppsManager.DialogActivity.AnonymousClass2 */

                                    public final void run() {
                                        if (SafeCenter.openChildMode(DialogActivity.this.a, DialogActivity.this.b)) {
                                            if (DialogActivity.this.c.getBoolean("plan_mode_preference", true)) {
                                                try {
                                                    Thread.sleep(4000);
                                                } catch (InterruptedException e) {
                                                    e.printStackTrace();
                                                }
                                            }
                                            DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(1));
                                            return;
                                        }
                                        DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(2));
                                    }
                                }.start();
                                return;
                            }
                        case 2:
                            if (this.l != null) {
                                this.l.setVisibility(0);
                            }
                            this.g.setEnabled(false);
                            this.h.setEnabled(false);
                            this.k.setEnabled(false);
                            new Thread() {
                                /* class com.lenovo.safecenter.AppsManager.DialogActivity.AnonymousClass3 */

                                public final void run() {
                                    if (SafeCenter.closeChildMode(DialogActivity.this.a, DialogActivity.this.b)) {
                                        if (DialogActivity.this.c.getBoolean("plan_mode_preference", true)) {
                                            try {
                                                Thread.sleep(4000);
                                            } catch (InterruptedException e) {
                                                e.printStackTrace();
                                            }
                                        }
                                        DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(1));
                                        return;
                                    }
                                    DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(2));
                                }
                            }.start();
                            return;
                        case 3:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        default:
                            return;
                        case 4:
                            a(true, false);
                            return;
                        case 5:
                            a(false, false);
                            return;
                        case 10:
                            startActivity(new Intent(this, ForbiddenApplication.class));
                            finish();
                            return;
                        case 11:
                            startActivity(new Intent(this, GuestModeSet.class));
                            finish();
                            return;
                    }
                } else if (pwd.length() == 0) {
                    this.f.setText(R.string.error_tips_null);
                    this.k.startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
                    return;
                } else {
                    this.k.startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
                    this.k.setText("");
                    this.f.setText(R.string.pwd_error_tips);
                    return;
                }
            default:
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

    public void showRebootDialog(final boolean enableGuestMode, final boolean enableChildMode) {
        boolean child_mode_on = true;
        if (Settings.System.getInt(getContentResolver(), "child_mode_on", 0) != 1) {
            child_mode_on = false;
        }
        CustomDialog.Builder builder = new CustomDialog.Builder(this);
        builder.setTitle(R.string.info);
        if (enableChildMode) {
            builder.setMessage(R.string.reboot_info);
        } else if (!enableGuestMode) {
            builder.setMessage(getString(R.string.close) + getString(R.string.guest_mode) + getString(R.string.hide_sms_info) + getString(R.string.hide_sms_info2));
        } else if (child_mode_on) {
            builder.setMessage(getString(R.string.open) + getString(R.string.guest_mode) + getString(R.string.hide_sms_info3) + getString(R.string.hide_sms_info) + getString(R.string.hide_sms_info1));
        } else {
            builder.setMessage(getString(R.string.open) + getString(R.string.guest_mode) + getString(R.string.hide_sms_info) + getString(R.string.hide_sms_info1));
        }
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.DialogActivity.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
                DialogActivity.this.a(enableGuestMode, enableChildMode);
            }
        });
        builder.setNegativeButton(R.string.no, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.DialogActivity.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                DialogActivity.this.finish();
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() {
            /* class com.lenovo.safecenter.AppsManager.DialogActivity.AnonymousClass6 */

            public final void onCancel(DialogInterface dialog) {
                DialogActivity.this.finish();
            }
        });
        builder.show();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(final boolean enableGuestMode, final boolean enableChildMode) {
        final ContentResolver resolver = getContentResolver();
        if (this.l != null) {
            this.l.setVisibility(0);
        }
        this.g.setEnabled(false);
        this.h.setEnabled(false);
        this.k.setEnabled(false);
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.DialogActivity.AnonymousClass7 */

            public final void run() {
                if (enableChildMode) {
                    if (AppUtil.isAppExistence(DialogActivity.this.a, Const.PACKAGENAME_KID_MODE)) {
                        if (SafeCenter.closeGuestMode(DialogActivity.this.a, false, DialogActivity.this.b)) {
                            DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(5));
                        }
                        WflUtils.startKidMode(DialogActivity.this.a);
                    } else if (SafeCenter.closeGuestMode(DialogActivity.this.a, enableChildMode, DialogActivity.this.b)) {
                        DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(5));
                    } else {
                        if (!DialogActivity.this.m) {
                            Settings.System.putInt(resolver, "child_mode_on", 0);
                        }
                        Settings.System.putInt(resolver, "guest_mode_on", 1);
                        DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(2));
                    }
                } else if (enableGuestMode) {
                    if (SafeCenter.openGuestMode(DialogActivity.this.a, DialogActivity.this.m, DialogActivity.this.b)) {
                        DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(1));
                        return;
                    }
                    if (DialogActivity.this.m) {
                        Settings.System.putInt(resolver, "child_mode_on", 1);
                    }
                    Settings.System.putInt(resolver, "guest_mode_on", 0);
                    DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(2));
                } else if (SafeCenter.closeGuestMode(DialogActivity.this.a, DialogActivity.this.m, DialogActivity.this.b)) {
                    DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(5));
                } else {
                    Settings.System.putInt(resolver, "guest_mode_on", 1);
                    DialogActivity.this.o.sendMessage(DialogActivity.this.o.obtainMessage(2));
                }
            }
        }.start();
    }
}
