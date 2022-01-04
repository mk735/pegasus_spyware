package com.lenovo.safecenter.lenovoAntiSpam.newview;

import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.lenovoAntiSpam.utils.SIMReader;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;

public class HarassSet extends BaseTitleActivity {
    private TimePickerDialog.OnTimeSetListener A = new TimePickerDialog.OnTimeSetListener() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass5 */

        public final void onTimeSet(TimePicker view, int hourOfDay, int minute) {
            HarassSet.this.p = hourOfDay;
            HarassSet.this.r = minute;
            Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_EH", HarassSet.this.p);
            Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_EM", HarassSet.this.r);
            HarassSet.this.a((HarassSet) 2);
        }
    };
    boolean a = false;
    private TextView b;
    private TextView c;
    private ImageView d;
    private ImageView e;
    private RelativeLayout f;
    private RelativeLayout g;
    private RelativeLayout h;
    private RelativeLayout i;
    private RelativeLayout j;
    private RelativeLayout k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private ImageView t;
    private RelativeLayout u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TimePickerDialog.OnTimeSetListener z = new TimePickerDialog.OnTimeSetListener() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass4 */

        public final void onTimeSet(TimePicker view, int hourOfDay, int minute) {
            HarassSet.this.o = hourOfDay;
            HarassSet.this.q = minute;
            Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_BH", HarassSet.this.o);
            Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_BM", HarassSet.this.q);
            HarassSet.this.a((HarassSet) 1);
        }
    };

    static /* synthetic */ void a(HarassSet x0, int x1, int x2) {
        if (x1 != x2) {
            String str = null;
            int simOperator = SIMReader.getSimOperator(x0);
            if (simOperator != -1) {
                if (x1 == 0 && x2 > 0) {
                    str = simOperator == 3 ? "*900" : "%23%2367%23";
                } else if (x1 > 0) {
                    if (x1 == 1) {
                        str = simOperator == 3 ? "*9013641244138" : "**67*13641244138%23";
                    } else if (x1 == 2) {
                        str = simOperator == 3 ? "*9013641244026" : "**67*13641244026%23";
                    } else if (x1 == 3) {
                        str = simOperator == 3 ? "*9013800000000" : "**67*13800000000%23";
                    }
                }
                if (str != null) {
                    x0.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + str)));
                }
            }
        }
    }

    static /* synthetic */ void d(HarassSet x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.night_harssmode).setSingleChoiceItems(R.array.nightcall_harsset, Settings.System.getInt(x0.getContentResolver(), "nightharss_callmode", 0), new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass3 */

            public final void onClick(DialogInterface dialog, int which) {
                HarassSet.this.s = which;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                if (HarassSet.this.s == 0) {
                    Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_callmode", 0);
                    HarassSet.this.x.setText(R.string.night_harssmode1);
                    return;
                }
                Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_callmode", 1);
                HarassSet.this.x.setText(R.string.night_harssmode2);
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.harassset);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antispamsmsharss, (Integer) null);
        findViews();
        ininIconState();
        InitMode();
        InitEndMode();
        InitNONUmberMode();
        this.s = Settings.System.getInt(getContentResolver(), "nightharss_callmode", 0);
        initTimes();
        onBtnClick();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v2) {
        if (v2.getId() == R.id.base_title_left) {
            finish();
        } else if (v2.getId() == R.id.harass_switch_icon) {
            if (Const.getProtectHarassSwitchState()) {
                new CustomDialog.Builder(this).setTitle(R.string.info).setMessage(R.string.disable_antispam_tip).setColorPositiveButton(false).setColorNegativeButton(true).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass9 */

                    public final void onClick(DialogInterface dialog, int which) {
                        Const.setProtectHarassSwitchState(false);
                        HarassSet.this.ininIconState();
                    }
                }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).show();
                return;
            }
            Const.setProtectHarassSwitchState(true);
            ininIconState();
        } else if (v2.getId() == R.id.adv_icon) {
            if (initNoNumberState() == 0) {
                new HttpUtils().UpdateConfig("getnonumber", DatabaseTables.SYSTEM_MARK, this);
                TrackEvent.reportInterceptUnknownNumbersSwitchChange(true);
            } else {
                new HttpUtils().UpdateConfig("getnonumber", "0", this);
                TrackEvent.reportInterceptUnknownNumbersSwitchChange(false);
            }
            InitNONUmberMode();
        } else if (v2.getId() == R.id.harass_mode_lin) {
            new CustomDialog.Builder(this).setTitle(R.string.harass_mode_title).setSingleChoiceItems(R.array.antispamhandup_mode, Settings.System.getInt(getContentResolver(), "intercall_mode_type", 0), new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass8 */

                public final void onClick(DialogInterface dialog, int which) {
                    HarassSet.this.l = which;
                }
            }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass7 */

                public final void onClick(DialogInterface dialog, int which) {
                    Settings.System.putInt(HarassSet.this.getContentResolver(), "intercall_mode_type", HarassSet.this.l);
                    HarassSet.this.InitMode();
                }
            }).show();
        } else if (v2.getId() == R.id.endcall_lin) {
            if (SIMReader.getSimOperator(this) != -1) {
                new CustomDialog.Builder(this).setTitle(R.string.endcall_mode_title).setSingleChoiceItems(R.array.block_list_entries, getDefsetting(), new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass6 */

                    public final void onClick(DialogInterface dialog, int which) {
                        HarassSet.this.m = which;
                    }
                }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass1 */

                    public final void onClick(DialogInterface dialog, int which) {
                        HarassSet.this.n = HarassSet.this.getDefsetting();
                        new HttpUtils().UpdateConfig("getendmode", String.valueOf(HarassSet.this.m), HarassSet.this);
                        HarassSet.this.InitEndMode();
                        HarassSet.a(HarassSet.this, HarassSet.this.m, HarassSet.this.n);
                        dialog.dismiss();
                    }
                }).show();
            } else {
                Toast.makeText(this, (int) R.string.no_simcard, 1).show();
            }
        } else if (v2.getId() == R.id.sign_lin) {
            startActivity(new Intent(this, SignActivity.class));
        } else if (v2.getId() == R.id.manwb_lin) {
            Intent intent = new Intent(this, WhiteABlackMain.class);
            intent.putExtra("type", 1);
            startActivity(intent);
        }
    }

    public void InitNONUmberMode() {
        if (initNoNumberState() == 0) {
            this.e.setImageResource(R.drawable.btn_off);
        } else {
            this.e.setImageResource(R.drawable.btn_on);
        }
    }

    public void InitEndMode() {
        if (getDefsetting() == 0) {
            this.c.setText(R.string.endmode1);
        } else if (getDefsetting() == 1) {
            this.c.setText(R.string.endmode2);
        } else if (getDefsetting() == 2) {
            this.c.setText(R.string.endmode3);
        } else if (getDefsetting() == 3) {
            this.c.setText(R.string.endmode4);
        }
    }

    public int getDefsetting() {
        if (TextUtils.isEmpty(HttpUtils.execService("getendmode", this)) || HttpUtils.execService("getendmode", this).equals("0")) {
            return 0;
        }
        return Integer.parseInt(HttpUtils.execService("getendmode", this));
    }

    public void InitMode() {
        this.l = Settings.System.getInt(getContentResolver(), "intercall_mode_type", 0);
        if (this.l == 0) {
            this.b.setText(R.string.antispaminter_netblacktype_endcall1);
        } else if (this.l == 1) {
            this.b.setText(R.string.antispaminter_netblacktype_endcall2);
        } else if (this.l == 2) {
            this.b.setText(R.string.antispaminter_netblacktype_endcall3);
        } else if (this.l == 3) {
            this.b.setText(R.string.antispaminter_netblacktype_endcall4);
        }
    }

    public void ininIconState() {
        if (Const.getProtectHarassSwitchState()) {
            this.d.setImageResource(R.drawable.btn_on);
        } else {
            this.d.setImageResource(R.drawable.btn_off);
        }
    }

    public int initNoNumberState() {
        if (TextUtils.isEmpty(HttpUtils.execService("getnonumber", this)) || HttpUtils.execService("getnonumber", this).equals("0")) {
            return 0;
        }
        return 1;
    }

    public void findViews() {
        this.b = (TextView) findViewById(R.id.harass_mode_desc);
        this.d = (ImageView) findViewById(R.id.harass_switch_icon);
        this.e = (ImageView) findViewById(R.id.adv_icon);
        this.f = (RelativeLayout) findViewById(R.id.harass_mode_lin);
        this.k = (RelativeLayout) findViewById(R.id.endcall_lin);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.c = (TextView) findViewById(R.id.endcall_mode_desc);
        this.g = (RelativeLayout) findViewById(R.id.sign_lin);
        this.g.setOnClickListener(this);
        this.h = (RelativeLayout) findViewById(R.id.manwb_lin);
        this.h.setOnClickListener(this);
        this.t = (ImageView) findViewById(R.id.night_switch);
        this.j = (RelativeLayout) findViewById(R.id.begintime_lay);
        this.i = (RelativeLayout) findViewById(R.id.endcall_lay);
        this.u = (RelativeLayout) findViewById(R.id.endtime_lay);
        this.v = (TextView) findViewById(R.id.endtime_summary);
        this.w = (TextView) findViewById(R.id.begintime_summary);
        this.x = (TextView) findViewById(R.id.endcall_summary);
        this.y = (TextView) findViewById(R.id.nightswitch_desc);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void initTimes() {
        this.o = Settings.System.getInt(getContentResolver(), "nightharss_BH", 23);
        this.p = Settings.System.getInt(getContentResolver(), "nightharss_EH", 7);
        this.q = Settings.System.getInt(getContentResolver(), "nightharss_BM", 0);
        this.r = Settings.System.getInt(getContentResolver(), "nightharss_EM", 30);
        a(1);
        a(2);
        if (Settings.System.getInt(getContentResolver(), "nightharss_callmode", 0) == 0) {
            this.x.setText(R.string.night_harssmode1);
        } else {
            this.x.setText(R.string.night_harssmode2);
        }
        if (Settings.System.getInt(getContentResolver(), "nightharss_switch", 0) == 1) {
            this.t.setImageResource(R.drawable.btn_on);
            this.y.setText(R.string.open);
            return;
        }
        this.t.setImageResource(R.drawable.btn_off);
        this.y.setText(R.string.close);
    }

    public void onBtnClick() {
        this.j.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass10 */

            public final void onClick(View v) {
                HarassSet.this.showDialog(2);
            }
        });
        this.u.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass11 */

            public final void onClick(View v) {
                HarassSet.this.showDialog(3);
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass12 */

            public final void onClick(View v) {
                HarassSet.d(HarassSet.this);
            }
        });
        this.t.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.newview.HarassSet.AnonymousClass13 */

            public final void onClick(View v) {
                if (Settings.System.getInt(HarassSet.this.getContentResolver(), "nightharss_switch", 0) == 0) {
                    Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_switch", 1);
                    HarassSet.this.t.setImageResource(R.drawable.btn_on);
                    HarassSet.this.y.setText(R.string.open);
                    return;
                }
                Settings.System.putInt(HarassSet.this.getContentResolver(), "nightharss_switch", 0);
                HarassSet.this.t.setImageResource(R.drawable.btn_off);
                HarassSet.this.y.setText(R.string.close);
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

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(int i2) {
        if (i2 == 1) {
            this.w.setText(this.o + c.N + (this.q < 10 ? "0" + this.q : Integer.valueOf(this.q)));
        } else if (i2 == 2) {
            this.v.setText(this.p + c.N + (this.r < 10 ? "0" + this.r : Integer.valueOf(this.r)));
        }
    }

    /* access modifiers changed from: protected */
    public Dialog onCreateDialog(int id) {
        switch (id) {
            case 2:
                return new TimePickerDialog(this, this.z, this.o, this.q, true);
            case 3:
                return new TimePickerDialog(this, this.A, this.p, this.r, true);
            default:
                return null;
        }
    }

    /* access modifiers changed from: protected */
    public void onPrepareDialog(int id, Dialog dialog) {
        switch (id) {
            case 2:
                ((TimePickerDialog) dialog).updateTime(this.o, this.q);
                return;
            case 3:
                ((TimePickerDialog) dialog).updateTime(this.p, this.r);
                return;
            default:
                return;
        }
    }
}
