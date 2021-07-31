package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.safecenter.Laboratory.SafeHomePage;
import com.lenovo.safecenter.MainTab.AppDownloadActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.floatwindow.data.SaveData;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.PwdUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.Observable;
import java.util.Observer;

public class SettingsActivity extends Activity implements View.OnClickListener, Observer {
    public static final int DIALOG_RETRIEVE_PASSWORD = 1;
    private TextView a;
    private ImageView b;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private ImageView f;
    private ImageView g;
    private ImageView h;
    private boolean i;
    private boolean j;
    private boolean k;
    private a l;
    private ProgressDialog m;
    private RelativeLayout n;
    private Handler o = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.SettingsActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            boolean z = false;
            switch (msg.what) {
                case 0:
                    if (SettingsActivity.this.i) {
                        SettingsActivity.this.c.setImageResource(R.drawable.btn_on);
                        return;
                    } else {
                        SettingsActivity.this.c.setImageResource(R.drawable.btn_off);
                        return;
                    }
                case 1:
                    if (SettingsActivity.this.j) {
                        SettingsActivity.this.d.setImageResource(R.drawable.btn_on);
                        return;
                    } else {
                        SettingsActivity.this.d.setImageResource(R.drawable.btn_off);
                        return;
                    }
                case 2:
                    try {
                        if (SettingsActivity.this.m != null) {
                            SettingsActivity.this.m.dismiss();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SettingsActivity settingsActivity = SettingsActivity.this;
                    if (!SettingsActivity.this.k) {
                        z = true;
                    }
                    settingsActivity.k = z;
                    Const.mDefaultPreference.edit().putBoolean(Const.SWITCH_INJECT_SWITCH, SettingsActivity.this.k).commit();
                    if (SettingsActivity.this.k) {
                        SettingsActivity.this.f.setImageResource(R.drawable.btn_on);
                        return;
                    } else {
                        SettingsActivity.this.f.setImageResource(R.drawable.btn_off);
                        return;
                    }
                case 3:
                    ((InputMethodManager) SettingsActivity.this.getSystemService("input_method")).toggleSoftInput(0, 2);
                    return;
                case 4:
                    Toast.makeText(SettingsActivity.this, (String) msg.obj, 1).show();
                    return;
                case 5:
                    if (Const.mDefaultPreference.getBoolean(SafeHomePage.SAFE_HOME_PAGE_KEY, false)) {
                        SettingsActivity.this.g.setImageResource(R.drawable.btn_off);
                        SafeHomePage.getDefault(SettingsActivity.this).unRegister();
                        TrackEvent.reportSafeHomePageSwitchChange(false);
                        return;
                    }
                    SettingsActivity.this.g.setImageResource(R.drawable.btn_on);
                    SafeHomePage.getDefault(SettingsActivity.this).register();
                    TrackEvent.reportSafeHomePageSwitchChange(true);
                    return;
                default:
                    return;
            }
        }
    };
    private BroadcastReceiver p = new BroadcastReceiver() {
        /* class com.lenovo.safecenter.AppsManager.SettingsActivity.AnonymousClass2 */

        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && Const.PACKAGENAME_LE_WIDGET4X1.equals(intent.getData().getSchemeSpecificPart())) {
                WflUtils.sendMessageToHandler(4, context.getString(R.string.installed_wigdet4x1_decrip), SettingsActivity.this.o);
                SettingsActivity.this.r.setVisibility(8);
            }
        }
    };
    private LeSafeObservable q;
    private ViewGroup r;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.settings);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.p, intentFilter);
        this.q = LeSafeObservable.get(getApplicationContext());
        this.q.addObserver(this);
        this.r = (ViewGroup) findViewById(R.id.widget4x1_parent);
        if (AppUtil.isAppExistence(this, Const.PACKAGENAME_LE_WIDGET4X1)) {
            this.r.setVisibility(8);
        } else {
            this.r.setVisibility(0);
        }
        if (!Const.isShowTaost()) {
            findViewById(R.id.tap_switch_lin).setVisibility(8);
        } else {
            findViewById(R.id.tap_switch_lin).setVisibility(0);
        }
        this.a = (TextView) findViewById(R.id.txt_title);
        this.a.setText(R.string.set);
        this.b = (ImageView) findViewById(R.id.title_back);
        this.c = (ImageView) findViewById(R.id.anti_tap_switch);
        this.d = (ImageView) findViewById(R.id.switch_block);
        this.e = (ImageView) findViewById(R.id.flow_switch);
        this.n = (RelativeLayout) findViewById(R.id.flow_window_fixed_layout);
        this.h = (ImageView) findViewById(R.id.flow__fixed_switch);
        this.g = (ImageView) findViewById(R.id.home_page_btn);
        this.f = (ImageView) findViewById(R.id.inject_switch);
        ((ImageView) findViewById(R.id.title_set)).setVisibility(4);
        this.i = Const.mDefaultPreference.getBoolean(Const.SWITCH_ANTI_TAPPING, true);
        this.j = Const.mDefaultPreference.getBoolean(Const.SWITCH_BLOCK_NOTIFY, true);
        this.k = Const.mDefaultPreference.getBoolean(Const.SWITCH_INJECT_SWITCH, true);
        if (this.k) {
            this.f.setImageResource(R.drawable.btn_on);
        } else {
            this.f.setImageResource(R.drawable.btn_off);
        }
        if (this.i) {
            this.c.setImageResource(R.drawable.btn_on);
        } else {
            this.c.setImageResource(R.drawable.btn_off);
        }
        if (this.j) {
            this.d.setImageResource(R.drawable.btn_on);
        } else {
            this.d.setImageResource(R.drawable.btn_off);
        }
        if (Const.mDefaultPreference.getBoolean(SafeHomePage.SAFE_HOME_PAGE_KEY, false)) {
            this.g.setImageResource(R.drawable.btn_on);
        } else {
            this.g.setImageResource(R.drawable.btn_off);
        }
        this.r.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.g.setOnClickListener(this);
        ((RelativeLayout) findViewById(R.id.shortcut_add_parent)).setOnClickListener(this);
        ((RelativeLayout) findViewById(R.id.modify_password_layout)).setOnClickListener(this);
        ((RelativeLayout) findViewById(R.id.retrieve_password_layout)).setOnClickListener(this);
        if (SaveData.get_flow_status(this)) {
            this.e.setImageResource(R.drawable.btn_on);
            this.n.setVisibility(0);
        } else {
            this.e.setImageResource(R.drawable.btn_off);
            this.n.setVisibility(8);
        }
        if (SaveData.get_flow_immove_state(this)) {
            this.h.setImageResource(R.drawable.btn_on);
            if (SecurityService.instance != null) {
                SecurityService.instance.setFlowIsFixed(true);
            }
        } else {
            this.h.setImageResource(R.drawable.btn_off);
            if (SecurityService.instance != null) {
                SecurityService.instance.setFlowIsFixed(false);
            }
        }
        TrafficStatsService.nacServerIsExist();
        a();
        if (this.l == null) {
            this.l = new a(this, (byte) 0);
        }
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.lenovo.safecenter.flowrefresh");
        registerReceiver(this.l, intentFilter2);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        DialogUtil.dismissShowPwdDialog();
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        if (SaveData.get_flow_status(this)) {
            this.e.setImageResource(R.drawable.btn_on);
        } else {
            this.e.setImageResource(R.drawable.btn_off);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        unregisterReceiver(this.p);
        unregisterReceiver(this.l);
        super.onDestroy();
    }

    private void a() {
        TextView textView = (TextView) findViewById(R.id.tv_modify_password);
        if (PwdUtil.hasPassword(this)) {
            textView.setText(R.string.modify_password);
        } else {
            textView.setText(R.string.setting_password_text);
        }
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.retrieve_password_layout);
        TextView textView2 = (TextView) findViewById(R.id.tv_retrieve_password);
        if (TextUtils.isEmpty(PwdUtil.queryPwdQuestionAndAnswer(this)[0])) {
            relativeLayout.setVisibility(8);
            return;
        }
        relativeLayout.setVisibility(0);
        relativeLayout.setClickable(true);
        textView2.setTextColor(getResources().getColor(R.color.black2));
    }

    public void onClick(View v) {
        boolean z = true;
        boolean z2 = false;
        switch (v.getId()) {
            case R.id.modify_password_layout /*{ENCODED_INT: 2131297584}*/:
                if (PwdUtil.hasPassword(this)) {
                    this.o.sendEmptyMessageDelayed(3, 500);
                    DialogUtil.showPwdDialog(Const.ACTION_MODIFY_PASSWORD_USE_PRE_PASSWORD, this);
                    return;
                }
                WflUtils.startSettingPasswordActivity(this, Const.ACTION_JUMP_SETTING_PASSWORD);
                return;
            case R.id.retrieve_password_layout /*{ENCODED_INT: 2131297586}*/:
                this.o.sendEmptyMessageDelayed(3, 500);
                String[] questions = PwdUtil.queryPwdQuestionAndAnswer(this);
                DialogUtil.showPasswordQuestionDialog(this, 1, questions[0], questions[1]);
                return;
            case R.id.inject_switch /*{ENCODED_INT: 2131297588}*/:
                this.m = new ProgressDialog(this);
                this.m.setOnDismissListener(new DialogInterface.OnDismissListener() {
                    /* class com.lenovo.safecenter.AppsManager.SettingsActivity.AnonymousClass3 */

                    public final void onDismiss(DialogInterface dialog) {
                        SettingsActivity.this.m = null;
                    }
                });
                this.m.setProgressStyle(0);
                this.m.setMessage(getString(R.string.exec_state));
                this.m.show();
                if (this.k) {
                    CMDHelper.guestModeClient(SafeCenterService.SYSTEM_SERVICE, 0, 0, 0);
                    CMDHelper.guestModeClient(SafeCenterService.PHONE_SERVICE, 0, 0, 0);
                    CMDHelper.guestModeClient(SafeCenterService.ACORE_SERVICE, 0, 0, 0);
                } else {
                    CMDHelper.guestModeClient(SafeCenterService.SYSTEM_SERVICE, 0, 1, 0);
                    CMDHelper.guestModeClient(SafeCenterService.PHONE_SERVICE, 0, 1, 0);
                    CMDHelper.guestModeClient(SafeCenterService.ACORE_SERVICE, 0, 1, 0);
                }
                this.o.sendMessageDelayed(this.o.obtainMessage(2), 2000);
                return;
            case R.id.anti_tap_switch /*{ENCODED_INT: 2131297591}*/:
                if (this.i) {
                    z = false;
                }
                this.i = z;
                Const.mDefaultPreference.edit().putBoolean(Const.SWITCH_ANTI_TAPPING, this.i).commit();
                this.o.sendMessage(this.o.obtainMessage(0));
                return;
            case R.id.switch_block /*{ENCODED_INT: 2131297592}*/:
                if (!this.j) {
                    z2 = true;
                }
                this.j = z2;
                Const.mDefaultPreference.edit().putBoolean(Const.SWITCH_BLOCK_NOTIFY, this.j).commit();
                this.o.sendMessage(this.o.obtainMessage(1));
                return;
            case R.id.home_page_btn /*{ENCODED_INT: 2131297595}*/:
                this.o.sendMessage(this.o.obtainMessage(5));
                return;
            case R.id.flow_switch /*{ENCODED_INT: 2131297597}*/:
                if (SaveData.get_flow_status(this)) {
                    this.e.setImageResource(R.drawable.btn_off);
                    if (SecurityService.instance != null) {
                        SecurityService.instance.setFlowVisibility(8);
                    }
                    SaveData.save_flow_status(this, false);
                    this.n.setVisibility(8);
                    TrackEvent.reportTrafficFloatwindowSwitchChanged(false);
                    return;
                }
                this.e.setImageResource(R.drawable.btn_on);
                if (SecurityService.instance != null) {
                    SecurityService.instance.setFlowVisibility(0);
                }
                SaveData.save_flow_status(this, true);
                this.n.setVisibility(0);
                TrackEvent.reportTrafficFloatwindowSwitchChanged(true);
                return;
            case R.id.flow__fixed_switch /*{ENCODED_INT: 2131297601}*/:
                if (SaveData.get_flow_immove_state(this)) {
                    this.h.setImageResource(R.drawable.btn_off);
                    if (SecurityService.instance != null) {
                        SecurityService.instance.setFlowIsFixed(false);
                    }
                    SaveData.save_flow_immove_state(this, false);
                    return;
                }
                this.h.setImageResource(R.drawable.btn_on);
                if (SecurityService.instance != null) {
                    SecurityService.instance.setFlowIsFixed(true);
                }
                SaveData.save_flow_immove_state(this, true);
                return;
            case R.id.shortcut_add_parent /*{ENCODED_INT: 2131297604}*/:
                Utils.createShortCut(this, R.drawable.onkey_shutcut_green, R.string.one_key_widget_clean, true);
                return;
            case R.id.widget4x1_parent /*{ENCODED_INT: 2131297606}*/:
                AppDownloadActivity.copyAssetsFilesInstall(AppDownloadActivity.WIDGET4X1_FILE_NAME, Const.PACKAGENAME_LE_WIDGET4X1, this, this.o, 4);
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                finish();
                return;
            default:
                return;
        }
    }

    public void update(Observable observable, Object data) {
        if (data instanceof Integer) {
            switch (((Integer) data).intValue()) {
                case 10:
                    a();
                    return;
                default:
                    return;
            }
        }
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(SettingsActivity x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (SaveData.get_flow_status(SettingsActivity.this)) {
                SettingsActivity.this.e.setImageResource(R.drawable.btn_on);
                SettingsActivity.this.n.setVisibility(0);
                return;
            }
            SettingsActivity.this.e.setImageResource(R.drawable.btn_off);
            SettingsActivity.this.n.setVisibility(8);
        }
    }
}
