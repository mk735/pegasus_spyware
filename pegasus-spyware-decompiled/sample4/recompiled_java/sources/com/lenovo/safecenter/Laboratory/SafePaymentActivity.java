package com.lenovo.safecenter.Laboratory;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.List;

public class SafePaymentActivity extends Activity {
    ImageView a;
    ImageView b;
    TextView c;
    TextView d;
    TextView e;
    DaoImpl f;
    PackageManager g;
    ActivityManager h;
    MyProcessObserver i;
    SharedPreferences j;
    CustomDialog k;
    RelativeLayout l;
    RelativeLayout m;
    private Handler n = new Handler() {
        /* class com.lenovo.safecenter.Laboratory.SafePaymentActivity.AnonymousClass4 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ((InputMethodManager) SafePaymentActivity.this.getSystemService("input_method")).toggleSoftInput(0, 2);
                    SafePaymentActivity.this.n.sendEmptyMessageDelayed(2, 1000);
                    return;
                case 2:
                    SafePaymentActivity.this.k.dismiss();
                    if (SafePaymentActivity.this.j.getInt(Const.KEY_IS_SAFEINPUT_METHOD_STATE, -1) != 1) {
                        Settings.System.putInt(SafePaymentActivity.this.getContentResolver(), "safeinputmethod_on", 0);
                        SafePaymentActivity.this.j.edit().putInt(Const.KEY_IS_SAFEINPUT_METHOD_STATE, 0).commit();
                        SafePaymentActivity.this.e.setText(SafePaymentActivity.this.getString(R.string.inputmethodapp) + SafePaymentActivity.this.getString(R.string.not_support_safeinput));
                        new CustomDialog.Builder(SafePaymentActivity.this).setTitle(R.string.info).setMessage(R.string.safeinput_test_over_no).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).show();
                        return;
                    }
                    Settings.System.putInt(SafePaymentActivity.this.getContentResolver(), "safeinputmethod_on", 1);
                    SafePaymentActivity.this.d.setText(R.string.opend);
                    SafePaymentActivity.this.d.setTextColor(R.color.gray2);
                    SafePaymentActivity.this.b.setImageResource(R.drawable.btn_on);
                    Toast.makeText(SafePaymentActivity.this, (int) R.string.safeinput_test_over_ok, 1).show();
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(SafePaymentActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.disable_safepayment_tip).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.SafePaymentActivity.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                SafePaymentActivity.this.i.unRegister();
                SafePaymentActivity.this.c.setText(R.string.closed);
                SafePaymentActivity.this.c.setTextColor(-65536);
                SafePaymentActivity.this.a.setImageResource(R.drawable.btn_off);
                TrackEvent.reportsafePay(false);
            }
        }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setColorPositiveButton(false).setColorNegativeButton(true).show();
    }

    static /* synthetic */ void b(SafePaymentActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.disable_safeinput_tip).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.SafePaymentActivity.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
                Settings.System.putInt(SafePaymentActivity.this.getContentResolver(), "safeinputmethod_on", 0);
                SafePaymentActivity.this.d.setText(R.string.closed);
                SafePaymentActivity.this.d.setTextColor(-65536);
                SafePaymentActivity.this.b.setImageResource(R.drawable.btn_off);
                try {
                    String oldInput = Settings.System.getString(SafePaymentActivity.this.getContentResolver(), "old_input");
                    if (Settings.Secure.getString(SafePaymentActivity.this.getContentResolver(), "default_input_method").equals("com.android.inputmethod.latin/.LatinIME") && oldInput != null && !oldInput.equals("")) {
                        Settings.Secure.putString(SafePaymentActivity.this.getContentResolver(), "default_input_method", oldInput);
                    }
                } catch (Exception e) {
                    Log.e("ydp", "safeinput error" + e);
                }
                TrackEvent.reportSafeInputMethod(false);
            }
        }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).setColorPositiveButton(false).setColorNegativeButton(true).show();
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.safepayment_main);
        Settings.System.putString(getContentResolver(), "safe_input_method", "com.android.inputmethod.latin/.LatinIME");
        Settings.System.putString(getContentResolver(), "safe_input_broadcast", "com.lenovo.safecenter.safeinputmethod");
        this.j = PreferenceManager.getDefaultSharedPreferences(this);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.safepayment);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.SafePaymentActivity.AnonymousClass1 */

            public final void onClick(View v) {
                SafePaymentActivity.this.finish();
            }
        });
        a();
        this.g = getPackageManager();
        this.h = (ActivityManager) getSystemService("activity");
        this.i = MyProcessObserver.getDefault(this);
        this.f = new DaoImpl(new DbAdapter(getApplicationContext()));
        this.l = (RelativeLayout) findViewById(R.id.safeinputmethod_parent);
        this.e = (TextView) findViewById(R.id.safeinput_title);
        this.c = (TextView) findViewById(R.id.detail_paymentapp);
        this.d = (TextView) findViewById(R.id.detail_safeinputmethod);
        this.a = (ImageView) findViewById(R.id.checkBox_paymentapp);
        this.b = (ImageView) findViewById(R.id.checkBox_safeinputmethod);
        this.m = (RelativeLayout) findViewById(R.id.safeinput_img);
        if (this.j.getBoolean(Const.KEY_IS_SAFEPAYMEN_ON, true)) {
            this.a.setImageResource(R.drawable.btn_on);
            this.c.setText(R.string.payment_open);
            this.c.setTextColor(R.color.gray2);
        } else {
            this.a.setImageResource(R.drawable.btn_off);
            this.c.setText(R.string.closed);
            this.c.setTextColor(-65536);
        }
        if (Settings.System.getInt(getContentResolver(), "safeinputmethod_on", 0) == 1) {
            this.b.setImageResource(R.drawable.btn_on);
            this.d.setText(R.string.opend);
            this.d.setTextColor(R.color.gray2);
        } else {
            this.b.setImageResource(R.drawable.btn_off);
            this.d.setText(R.string.closed);
            this.d.setTextColor(-65536);
        }
        if (this.j.getInt(Const.KEY_IS_SAFEINPUT_METHOD_STATE, -1) == 0) {
            this.e.setText(getString(R.string.inputmethodapp) + getString(R.string.not_support_safeinput));
        }
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.SafePaymentActivity.AnonymousClass2 */

            public final void onClick(View v) {
                if (!SafePaymentActivity.this.j.getBoolean(Const.KEY_IS_SAFEPAYMEN_ON, true)) {
                    SafePaymentActivity.this.i.register();
                    SafePaymentActivity.this.c.setText(R.string.payment_open);
                    SafePaymentActivity.this.c.setTextColor(R.color.gray2);
                    SafePaymentActivity.this.a.setImageResource(R.drawable.btn_on);
                    TrackEvent.reportsafePay(true);
                    return;
                }
                SafePaymentActivity.a(SafePaymentActivity.this);
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.SafePaymentActivity.AnonymousClass3 */

            public final void onClick(View v) {
                if (Settings.System.getInt(SafePaymentActivity.this.getContentResolver(), "safeinputmethod_on", 0) == 1) {
                    SafePaymentActivity.b(SafePaymentActivity.this);
                } else if (SafePaymentActivity.this.a()) {
                    int i = SafePaymentActivity.this.j.getInt(Const.KEY_IS_SAFEINPUT_METHOD_STATE, -1);
                    if (i == -1) {
                        Settings.System.putInt(SafePaymentActivity.this.getContentResolver(), "safeinputmethod_on", 1);
                        CustomDialog.Builder cd = new CustomDialog.Builder(SafePaymentActivity.this).setTitle(R.string.safeinput_test).setContentView(LayoutInflater.from(SafePaymentActivity.this).inflate(R.layout.safeinput_testdialog_layout, (ViewGroup) null));
                        SafePaymentActivity.this.k = cd.show();
                        cd.setButtonVisible(false);
                        Toast.makeText(SafePaymentActivity.this, (int) R.string.safeinput_test_, 1).show();
                        SafePaymentActivity.this.n.sendEmptyMessageDelayed(1, 500);
                    } else if (i == 0) {
                        new CustomDialog.Builder(SafePaymentActivity.this).setTitle(R.string.info).setMessage(R.string.safeinput_test_over_no).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).show();
                    } else {
                        Settings.System.putInt(SafePaymentActivity.this.getContentResolver(), "safeinputmethod_on", 1);
                        SafePaymentActivity.this.d.setText(R.string.opend);
                        SafePaymentActivity.this.d.setTextColor(R.color.gray2);
                        SafePaymentActivity.this.b.setImageResource(R.drawable.btn_on);
                        TrackEvent.reportSafeInputMethod(true);
                    }
                } else {
                    Toast.makeText(SafePaymentActivity.this, (int) R.string.no_safeinputmethod, 1).show();
                }
            }
        });
        if (!TrafficStatsService.nacServerIsExist()) {
            this.e.setVisibility(8);
            this.l.setVisibility(8);
            this.m.setVisibility(8);
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

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean a() {
        List<InputMethodInfo> InputMethods = ((InputMethodManager) getSystemService("input_method")).getEnabledInputMethodList();
        for (int i2 = 0; i2 < InputMethods.size(); i2++) {
            String NewInputMethodName = InputMethods.get(i2).getId();
            if (NewInputMethodName.equals("com.android.inputmethod.latin/.LatinIME")) {
                Log.i("info", "id:" + NewInputMethodName);
                return true;
            }
        }
        return false;
    }
}
