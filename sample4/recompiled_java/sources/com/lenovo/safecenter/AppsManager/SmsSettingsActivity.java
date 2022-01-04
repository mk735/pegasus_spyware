package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.SmsUtil;
import com.lenovo.safecenter.utils.TrackEvent;

public class SmsSettingsActivity extends Activity implements View.OnClickListener, DialogUtil.SettingNumberDialogListener {
    public static final int DIALOG_SET_MONTH_LIMIT_SMS = 2;
    public static final int DIALOG_SET_TRAFFIC_SMS_QUERY = 3;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.sms_settings);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.sms_setting_text);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(this);
        findViewById(R.id.monthLimitSMSLayout).setOnClickListener(this);
        b();
    }

    private void a() {
        TextView text = (TextView) findViewById(R.id.txt_monthWarmSMSSwitch);
        ImageView ImgMonthWarm = (ImageView) findViewById(R.id.monthWarmSMSSwitch);
        ImgMonthWarm.setOnClickListener(this);
        if (Const.getMonthLimitSMS() == 0) {
            text.setTextColor(getResources().getColor(R.color.gray2));
            ImgMonthWarm.setEnabled(false);
            Const.setOutMonthLimitSMSWarn(false);
            ImgMonthWarm.setImageResource(R.drawable.btn_off);
            return;
        }
        text.setTextColor(getResources().getColor(R.color.black1));
        ImgMonthWarm.setEnabled(true);
        if (Const.isOutMonthLimitSMSWarn()) {
            ImgMonthWarm.setImageResource(R.drawable.btn_on);
        } else {
            ImgMonthWarm.setImageResource(R.drawable.btn_off);
        }
    }

    private void b() {
        TextView monthLimitSMS = (TextView) findViewById(R.id.monthLimitSMS);
        if (Const.getMonthLimitSMS() == 0) {
            monthLimitSMS.setText(getString(R.string.no_sms_package));
        } else {
            monthLimitSMS.setText(String.valueOf(Const.getMonthLimitSMS()) + getString(R.string.article));
        }
        a();
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
        switch (v.getId()) {
            case R.id.monthLimitSMSLayout /*{ENCODED_INT: 2131297659}*/:
                DialogUtil.createSettingNumberDialog(this, 2, this);
                return;
            case R.id.monthWarmSMSSwitch /*{ENCODED_INT: 2131297663}*/:
                Const.setOutMonthLimitSMSWarn(!Const.isOutMonthLimitSMSWarn());
                a();
                SmsUtil.statisticsSmsSent(this);
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                finish();
                return;
            default:
                return;
        }
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.SettingNumberDialogListener
    public void onSettingNumberDialogOK(int id, int number) {
        switch (id) {
            case 2:
                Const.setMonthLimitSMS(number);
                b();
                SmsUtil.statisticsSmsSent(this);
                LeSafeObservable.get(this).noticeRefreshSmsSentNumCurrMonth();
                return;
            default:
                return;
        }
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.SettingNumberDialogListener
    public void onSettingNumberDialogCancel(int id, int number) {
    }
}
