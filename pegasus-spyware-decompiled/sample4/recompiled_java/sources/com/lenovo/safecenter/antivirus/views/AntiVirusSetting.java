package com.lenovo.safecenter.antivirus.views;

import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;

public class AntiVirusSetting extends BaseTitleActivity {
    private ImageView a;
    private ImageView b;
    private ImageView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;

    static /* synthetic */ void a(AntiVirusSetting x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.closeantivirus_info).setColorPositiveButton(false).setColorNegativeButton(true).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.AntiVirusSetting.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                Const.setProtectVirusSwitchState(false, AntiVirusSetting.this);
                LeSafeObservable.get(AntiVirusSetting.this).noticeRefreshProtectVirusDetail();
                AntiVirusSetting.this.init();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.AntiVirusSetting.AnonymousClass1 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    static /* synthetic */ void b(AntiVirusSetting x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(R.string.closecloudscan_info).setColorPositiveButton(false).setColorNegativeButton(true).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.AntiVirusSetting.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
                PreferenceManager.getDefaultSharedPreferences(AntiVirusSetting.this).edit().putInt("netScan_switch", 0).commit();
                AntiVirusSetting.this.init();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.AntiVirusSetting.AnonymousClass3 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.virus_set);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.Seetings, (Integer) null);
        this.a = (ImageView) findViewById(R.id.antispam_checkbox);
        this.d = (TextView) findViewById(R.id.antispam_checkboxtxt);
        this.f = (TextView) findViewById(R.id.antispam_txt);
        this.b = (ImageView) findViewById(R.id.antispam_checkbox1);
        this.e = (TextView) findViewById(R.id.antispam_checkboxtxt1);
        this.g = (TextView) findViewById(R.id.antispam_txt1);
        this.g.setText(getSpan_title(R.string.netscan_switch).toString());
        this.e.setText(getSpan(R.string.netscan_switchdesc).toString());
        this.f.setText(getSpan_title(R.string.antivirusrealtime_title).toString());
        this.c = (ImageView) findViewById(R.id.antispam_checkbox3);
        init();
        onBtnclick();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void init() {
        if (Settings.System.getInt(getContentResolver(), "isRealtimeProtectOpen", 1) == 1) {
            this.d.setText(getSpan(R.string.opend).toString());
            this.a.setImageResource(R.drawable.btn_on);
        } else {
            this.d.setText(getSpan(R.string.closed).toString());
            this.a.setImageResource(R.drawable.btn_off);
        }
        if (PreferenceManager.getDefaultSharedPreferences(this).getInt("netScan_switch", 1) == 1) {
            this.b.setImageResource(R.drawable.btn_on);
        } else {
            this.b.setImageResource(R.drawable.btn_off);
        }
        if (PreferenceManager.getDefaultSharedPreferences(this).getInt("netScan_weekservice", 1) == 1) {
            this.c.setImageResource(R.drawable.btn_on);
        } else {
            this.c.setImageResource(R.drawable.btn_off);
        }
    }

    public void onBtnclick() {
        this.a.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.AntiVirusSetting.AnonymousClass5 */

            public final void onClick(View v) {
                if (Const.getProtectVirusSwitchState(AntiVirusSetting.this)) {
                    AntiVirusSetting.a(AntiVirusSetting.this);
                    return;
                }
                Const.setProtectVirusSwitchState(true, AntiVirusSetting.this);
                LeSafeObservable.get(AntiVirusSetting.this).noticeRefreshProtectVirusDetail();
                AntiVirusSetting.this.init();
            }
        });
        this.b.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.AntiVirusSetting.AnonymousClass6 */

            public final void onClick(View v) {
                if (PreferenceManager.getDefaultSharedPreferences(AntiVirusSetting.this).getInt("netScan_switch", 1) == 1) {
                    AntiVirusSetting.b(AntiVirusSetting.this);
                    return;
                }
                PreferenceManager.getDefaultSharedPreferences(AntiVirusSetting.this).edit().putInt("netScan_switch", 1).commit();
                AntiVirusSetting.this.init();
            }
        });
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.AntiVirusSetting.AnonymousClass7 */

            public final void onClick(View v) {
                if (PreferenceManager.getDefaultSharedPreferences(AntiVirusSetting.this).getInt("netScan_weekservice", 1) == 1) {
                    PreferenceManager.getDefaultSharedPreferences(AntiVirusSetting.this).edit().putInt("netScan_weekservice", 0).commit();
                } else {
                    PreferenceManager.getDefaultSharedPreferences(AntiVirusSetting.this).edit().putInt("netScan_weekservice", 1).commit();
                }
                AntiVirusSetting.this.init();
            }
        });
    }

    public SpannableString getSpan(int resID) {
        SpannableString spannable = new SpannableString(getString(resID));
        spannable.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.gray2)), 0, getString(resID).length(), 0);
        return spannable;
    }

    public SpannableString getSpan_title(int resID) {
        SpannableString spannable = new SpannableString(getString(resID));
        spannable.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.black2)), 0, getString(resID).length(), 0);
        return spannable;
    }

    public SpannableString getSpan_str(String res) {
        SpannableString spannable = new SpannableString(res);
        spannable.setSpan(new ForegroundColorSpan(getResources().getColor(R.color.gray2)), 0, res.length(), 0);
        return spannable;
    }
}
