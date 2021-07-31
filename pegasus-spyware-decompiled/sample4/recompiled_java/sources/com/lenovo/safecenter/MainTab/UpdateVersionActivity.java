package com.lenovo.safecenter.MainTab;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.utils.AlarmManageUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.update.LeSafeUpdate;
import com.lenovo.safecenter.utils.update.LeSafeUpdateInfo;
import com.lenovo.safecenter.utils.updateLab.AutoUpdateLabManager;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Observable;
import java.util.Observer;

public class UpdateVersionActivity extends Activity implements View.OnClickListener, DialogUtil.SettingNumberDialogListener, DialogUtil.WarnDialogListener, Observer {
    public static final int DIALOG_MANUAL_ALL_NEW = 3;
    public static final int DIALOG_MANUAL_MOBILE_UPDATE = 2;
    public static final int DIALOG_MANUAL_NO_NET = 4;
    private static Context h;
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private PackageManager e;
    private String f;
    private PackageInfo g;
    private LeSafeUpdate i;
    private Handler j = new Handler() {
        /* class com.lenovo.safecenter.MainTab.UpdateVersionActivity.AnonymousClass4 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    Toast.makeText(UpdateVersionActivity.h, (int) R.string.install_succeeded, 1).show();
                    return;
                case 2:
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(Uri.parse("file://" + ((String) msg.obj)), "application/vnd.android.package-archive");
                    intent.setFlags(268435456);
                    UpdateVersionActivity.h.startActivity(intent);
                    return;
                default:
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_update_version_layout);
        h = this;
        this.e = getPackageManager();
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.update_and_pwd);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.UpdateVersionActivity.AnonymousClass1 */

            public final void onClick(View v) {
                UpdateVersionActivity.this.finish();
            }
        });
        LeSafeObservable.get(getApplicationContext()).addObserver(this);
        this.a = (TextView) findViewById(R.id.detail_auto_update);
        this.d = (TextView) findViewById(R.id.button_manual_update_lab);
        this.b = (TextView) findViewById(R.id.detail_update_version_rate);
        this.b.setText(getString(R.string.detail_update_version_rate) + c());
        this.c = (TextView) findViewById(R.id.button_update_version);
        findViewById(R.id.auto_update_layout).setOnClickListener(this);
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.MainTab.UpdateVersionActivity.AnonymousClass2 */

            public final void onClick(View v) {
                if (WflUtils.isNetworkAvailable(UpdateVersionActivity.this)) {
                    UpdateVersionActivity.this.a();
                    Log.i("sus", "Update no Started");
                    return;
                }
                UpdateVersionActivity.this.showDialog(4);
            }
        });
        this.d.setOnClickListener(this);
        d();
        e();
        g();
    }

    private String c() {
        try {
            this.g = this.e.getPackageInfo(getPackageName(), c.aD);
            this.f = this.g.versionName;
            return this.f;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return getString(R.string.get_error);
        }
    }

    private void d() {
        if (AutoUpdateLabManager.isAutoUpdate(this)) {
            this.a.setText(AutoUpdateLabManager.getSelectedUpdateModeString(this));
        } else {
            this.a.setText(R.string.detail_auto_update_off_note);
        }
    }

    private void e() {
        String virusLabVersion;
        TextView updateTimeVirusLabTv = (TextView) findViewById(R.id.updateTime_virus_lab);
        TextView updateTimeBlacklistLabTv = (TextView) findViewById(R.id.updateTime_blacklist);
        TextView updateTimeSignCallLabTv = (TextView) findViewById(R.id.updateTime_signCall);
        String virustime = String.valueOf(new File(getFilesDir() + "/qv_base.amf").lastModified());
        if (TextUtils.isEmpty(virustime) || "0".equals(virustime)) {
            virusLabVersion = "2012.11.13";
        } else {
            virusLabVersion = WflUtils.convertLongTime2DateFormat(Long.valueOf(virustime), new SimpleDateFormat("yyyy.MM.dd"));
        }
        Log.i("wu0wu", "virusLabVersion=" + virusLabVersion);
        if (!TextUtils.isEmpty(virusLabVersion)) {
            updateTimeVirusLabTv.setTextColor(getResources().getColor(R.color.gray2));
            updateTimeVirusLabTv.setText(virusLabVersion);
        } else {
            updateTimeVirusLabTv.setTextColor(getResources().getColor(R.color.gray2));
            updateTimeVirusLabTv.setText(getString(R.string.never_updated_text));
        }
        String blackLabTime = HttpUtils.execService("lastintag", this);
        if (!TextUtils.isEmpty(blackLabTime)) {
            String blacklistLabVersion = HttpUtils.getDate(blackLabTime);
            updateTimeBlacklistLabTv.setTextColor(getResources().getColor(R.color.gray2));
            updateTimeBlacklistLabTv.setText(blacklistLabVersion);
        } else {
            updateTimeBlacklistLabTv.setTextColor(getResources().getColor(R.color.gray2));
            updateTimeBlacklistLabTv.setText(getString(R.string.never_updated_text));
        }
        String signCallLabTime = HttpUtils.execService("sign_lastin", this);
        if (!TextUtils.isEmpty(signCallLabTime)) {
            String signCallLabVersion = HttpUtils.getDate(signCallLabTime);
            updateTimeSignCallLabTv.setTextColor(getResources().getColor(R.color.gray2));
            updateTimeSignCallLabTv.setText(signCallLabVersion);
        } else {
            updateTimeSignCallLabTv.setTextColor(getResources().getColor(R.color.gray2));
            updateTimeSignCallLabTv.setText("2012.07.01");
        }
        f();
    }

    private void f() {
        TextView updateTimeVirusLabTv = (TextView) findViewById(R.id.updateTime_virus_lab);
        TextView updateTimeBlacklistLabTv = (TextView) findViewById(R.id.updateTime_blacklist);
        TextView updateTimeSignCallLabTv = (TextView) findViewById(R.id.updateTime_signCall);
        if (!UpdateLabManager.getIs_UpdateLabing(0) && UpdateLabManager.getQueryLabStatus(0) == 0) {
            updateTimeVirusLabTv.setTextColor(getResources().getColor(R.color.blue_btn));
            updateTimeVirusLabTv.setText(getString(R.string.has_new_update_note_text));
        }
        if (!UpdateLabManager.getIs_UpdateLabing(1) && UpdateLabManager.getQueryLabStatus(1) == 0) {
            updateTimeBlacklistLabTv.setTextColor(getResources().getColor(R.color.blue_btn));
            updateTimeBlacklistLabTv.setText(getString(R.string.has_new_update_note_text));
        }
        if (!UpdateLabManager.getIs_UpdateLabing(3) && UpdateLabManager.getQueryLabStatus(3) == 0) {
            updateTimeSignCallLabTv.setTextColor(getResources().getColor(R.color.blue_btn));
            updateTimeSignCallLabTv.setText(getString(R.string.has_new_update_note_text));
        }
    }

    private void g() {
        if (UpdateLabManager.isUpdateingLab()) {
            this.d.setClickable(false);
            this.d.setTextColor(getResources().getColor(R.color.gray2));
            i();
            return;
        }
        this.d.setClickable(true);
        this.d.setTextColor(getResources().getColor(R.color.blue_btn));
        h();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.auto_update_layout:
                removeDialog(1);
                showDialog(1);
                return;
            case R.id.button_manual_update_lab:
                if (UpdateLabManager.isAllNewVersionLab()) {
                    showDialog(3);
                    return;
                } else if (!UpdateLabManager.isQueryedLab()) {
                    Toast.makeText(h, h.getString(R.string.updateing_lab_wording_isquerying), 1).show();
                    return;
                } else if (WflUtils.isWifiNetwork(this)) {
                    UpdateLabManager.isManualUpdateLab = true;
                    UpdateLabManager.startServiceUpdateLab(this);
                    return;
                } else if (WflUtils.isMobileNetwork(this)) {
                    showDialog(2);
                    return;
                } else if (!WflUtils.isNetworkAvailable(this)) {
                    showDialog(4);
                    return;
                } else {
                    return;
                }
            default:
                return;
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (4 != keyCode) {
            return super.onKeyDown(keyCode, event);
        }
        if (!isFinishing()) {
            finish();
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        Log.e("ydp", "update onDestroy");
        super.onDestroy();
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

    /* access modifiers changed from: protected */
    public Dialog onCreateDialog(int id) {
        switch (id) {
            case 1:
                return DialogUtil.createAutoUpdateRatechoice(this, id, this);
            case 2:
            case 3:
            case 4:
                return DialogUtil.createManualUpdateDialog(this, id, this);
            default:
                return super.onCreateDialog(id);
        }
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.SettingNumberDialogListener
    public void onSettingNumberDialogOK(int id, int choiceMode) {
        Log.i("wu0wu", "auto update choiceMode=" + choiceMode);
        AutoUpdateLabManager.setAutoUpdateMode(choiceMode, this);
        if (choiceMode == 3) {
            AutoUpdateLabManager.setIsAutoUpdate(false, this);
            AlarmManageUtils.cancelNoticeUpdateLab(this);
        } else {
            AutoUpdateLabManager.setIsAutoUpdate(true, this);
        }
        if (choiceMode == 1 || choiceMode == 2) {
            AlarmManageUtils.cancelNoticeUpdateLab(this);
            AlarmManageUtils.noticeUpdateLab(this);
        }
        d();
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.SettingNumberDialogListener
    public void onSettingNumberDialogCancel(int id, int choiceMode) {
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.WarnDialogListener
    public void onWarnDialogOk(int id) {
        switch (id) {
            case 2:
                UpdateLabManager.isManualUpdateLab = true;
                UpdateLabManager.startServiceUpdateLab(this);
                return;
            default:
                return;
        }
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.WarnDialogListener
    public void onWarnDialogCancel(int id) {
    }

    public void update(Observable observable, Object data) {
        if (data instanceof Integer) {
            if (((Integer) data).intValue() == 0) {
                Log.i("wu0wu", "UpdateAndPasswordActivity LeSafeObservable.OBSERVER_UPDATED_LAB");
                g();
                e();
                h();
                UpdateLabManager.isManualUpdateLab = false;
            }
            if (1 == ((Integer) data).intValue()) {
                f();
            }
            if (11 == ((Integer) data).intValue()) {
                g();
                i();
            }
        }
    }

    private void h() {
        if (!UpdateLabManager.isUpdateingLab()) {
            ((LinearLayout) findViewById(R.id.note_isUpdating_lab_layout)).setVisibility(8);
            ((RelativeLayout) findViewById(R.id.blacklist_lab_layout)).setVisibility(0);
            ((RelativeLayout) findViewById(R.id.virus_lab_layout)).setVisibility(0);
            ((RelativeLayout) findViewById(R.id.signCall_lab_layout)).setVisibility(0);
        }
    }

    private void i() {
        ((LinearLayout) findViewById(R.id.note_isUpdating_lab_layout)).setVisibility(0);
        ((RelativeLayout) findViewById(R.id.blacklist_lab_layout)).setVisibility(8);
        ((RelativeLayout) findViewById(R.id.virus_lab_layout)).setVisibility(8);
        ((RelativeLayout) findViewById(R.id.signCall_lab_layout)).setVisibility(8);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.i == null) {
            int versionCode = 0;
            try {
                versionCode = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
            this.i = new LeSafeUpdate(h, getPackageName(), versionCode, Const.SUS_CHANNEL, false, false, false, new LeSafeUpdate.LeSafeUpdateListenser() {
                /* class com.lenovo.safecenter.MainTab.UpdateVersionActivity.AnonymousClass3 */

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onQueryResp(String resultion, LeSafeUpdateInfo lfui) {
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onInstallComplete(boolean succeed) {
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onDownLoadException(int errorCode) {
                }

                @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                public final void onDownLoadComplete(String path) {
                }
            });
        }
        this.i.upDate(false);
    }

    public boolean canExecute(String path) {
        File file = new File(path);
        for (int i2 = 0; i2 < 3; i2++) {
            if (file.canExecute()) {
                Log.i("ydp", "canExecute()...true");
                return true;
            }
            Log.i("ydp", "canExecute()...false");
            try {
                Thread.sleep(1500);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }
}
