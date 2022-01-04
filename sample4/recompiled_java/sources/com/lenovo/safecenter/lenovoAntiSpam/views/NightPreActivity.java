package com.lenovo.safecenter.lenovoAntiSpam.views;

import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.text.SimpleDateFormat;
import java.util.Date;

public class NightPreActivity extends BaseTitleActivity {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private ImageView f;
    private LinearLayout g;
    private LinearLayout h;
    private LinearLayout i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TimePickerDialog.OnTimeSetListener n = new TimePickerDialog.OnTimeSetListener() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass8 */

        public final void onTimeSet(TimePicker view, int hourOfDay, int minute) {
            NightPreActivity.this.a = hourOfDay;
            NightPreActivity.this.c = minute;
            Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_BH", NightPreActivity.this.a);
            Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_BM", NightPreActivity.this.c);
            NightPreActivity.this.a((NightPreActivity) 1);
        }
    };
    private TimePickerDialog.OnTimeSetListener o = new TimePickerDialog.OnTimeSetListener() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass9 */

        public final void onTimeSet(TimePicker view, int hourOfDay, int minute) {
            NightPreActivity.this.b = hourOfDay;
            NightPreActivity.this.d = minute;
            Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_EH", NightPreActivity.this.b);
            Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_EM", NightPreActivity.this.d);
            NightPreActivity.this.a((NightPreActivity) 2);
        }
    };

    static /* synthetic */ void a(NightPreActivity x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.night_harssmode).setSingleChoiceItems(R.array.nightcall_harsset, Settings.System.getInt(x0.getContentResolver(), "nightharss_callmode", 0), new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                NightPreActivity.this.e = which;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
                if (NightPreActivity.this.e == 0) {
                    Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_callmode", 0);
                    NightPreActivity.this.l.setText(NightPreActivity.this.getSpan(R.string.night_harssmode1));
                    return;
                }
                Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_callmode", 1);
                NightPreActivity.this.l.setText(NightPreActivity.this.getSpan(R.string.night_harssmode2));
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.night_haraset);
        findViews();
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.night_harsstitle, (Integer) null);
        this.e = Settings.System.getInt(getContentResolver(), "nightharss_callmode", 0);
        initTimes();
        onBtnClick();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void findViews() {
        this.f = (ImageView) findViewById(R.id.night_switch);
        this.h = (LinearLayout) findViewById(R.id.begintime_lay);
        this.g = (LinearLayout) findViewById(R.id.endcall_lay);
        this.i = (LinearLayout) findViewById(R.id.endtime_lay);
        this.j = (TextView) findViewById(R.id.endtime_summary);
        this.k = (TextView) findViewById(R.id.begintime_summary);
        this.l = (TextView) findViewById(R.id.endcall_summary);
        this.m = (TextView) findViewById(R.id.nightswitch_desc);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void initTimes() {
        this.a = Settings.System.getInt(getContentResolver(), "nightharss_BH", 23);
        this.b = Settings.System.getInt(getContentResolver(), "nightharss_EH", 7);
        this.c = Settings.System.getInt(getContentResolver(), "nightharss_BM", 0);
        this.d = Settings.System.getInt(getContentResolver(), "nightharss_EM", 30);
        a(1);
        a(2);
        if (Settings.System.getInt(getContentResolver(), "nightharss_callmode", 0) == 0) {
            this.l.setText(getSpan(R.string.night_harssmode1));
        } else {
            this.l.setText(getSpan(R.string.night_harssmode2));
        }
        if (Settings.System.getInt(getContentResolver(), "nightharss_switch", 0) == 1) {
            this.f.setImageResource(R.drawable.btn_on);
            this.m.setText(R.string.open);
            return;
        }
        this.f.setImageResource(R.drawable.btn_off);
        this.m.setText(R.string.close);
    }

    public void onBtnClick() {
        this.h.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass1 */

            public final void onClick(View v) {
                NightPreActivity.this.showDialog(2);
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass2 */

            public final void onClick(View v) {
                NightPreActivity.this.showDialog(3);
            }
        });
        this.g.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass3 */

            public final void onClick(View v) {
                NightPreActivity.a(NightPreActivity.this);
            }
        });
        this.f.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.lenovoAntiSpam.views.NightPreActivity.AnonymousClass4 */

            public final void onClick(View v) {
                if (Settings.System.getInt(NightPreActivity.this.getContentResolver(), "nightharss_switch", 0) == 0) {
                    Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_switch", 1);
                    NightPreActivity.this.f.setImageResource(R.drawable.btn_on);
                    NightPreActivity.this.m.setText(R.string.open);
                    return;
                }
                Settings.System.putInt(NightPreActivity.this.getContentResolver(), "nightharss_switch", 0);
                NightPreActivity.this.f.setImageResource(R.drawable.btn_off);
                NightPreActivity.this.m.setText(R.string.close);
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
            this.k.setText(getSpan_str(this.a + c.N + (this.c < 10 ? "0" + this.c : Integer.valueOf(this.c))));
        } else if (i2 == 2) {
            this.j.setText(getSpan_str(this.b + c.N + (this.d < 10 ? "0" + this.d : Integer.valueOf(this.d))));
        }
    }

    /* access modifiers changed from: protected */
    public Dialog onCreateDialog(int id) {
        switch (id) {
            case 2:
                return new TimePickerDialog(this, this.n, this.a, this.c, true);
            case 3:
                return new TimePickerDialog(this, this.o, this.b, this.d, true);
            default:
                return null;
        }
    }

    /* access modifiers changed from: protected */
    public void onPrepareDialog(int id, Dialog dialog) {
        switch (id) {
            case 2:
                ((TimePickerDialog) dialog).updateTime(this.a, this.c);
                return;
            case 3:
                ((TimePickerDialog) dialog).updateTime(this.b, this.d);
                return;
            default:
                return;
        }
    }

    public static boolean Judge(int bh, int bm, int eh, int em) {
        String[] times = new SimpleDateFormat("HH:mm").format(new Date(Long.parseLong(String.valueOf(System.currentTimeMillis())))).split(c.N);
        int curH = Integer.parseInt(times[0]);
        int curM = Integer.parseInt(times[1]);
        if (bh > eh) {
            if (curH > bh || curH < eh) {
                return true;
            }
            if (curH == bh && curM >= bm) {
                return true;
            }
            if (curH == eh && curM <= em) {
                return true;
            }
        } else if (bh < eh) {
            if (curH > bh && eh > curH) {
                return true;
            }
            if (curH == bh && curM >= bm) {
                return true;
            }
            if (curH == eh && curM <= em) {
                return true;
            }
        } else if (bh == eh && curH == bh && bm < curM && em > curM) {
            return true;
        }
        return false;
    }

    public boolean judgeNightHarass() {
        if (Settings.System.getInt(getContentResolver(), "nightharss_switch", 0) != 0) {
            this.a = Settings.System.getInt(getContentResolver(), "nightharss_BH", 23);
            this.b = Settings.System.getInt(getContentResolver(), "nightharss_EH", 6);
            this.c = Settings.System.getInt(getContentResolver(), "nightharss_BM", 0);
            this.d = Settings.System.getInt(getContentResolver(), "nightharss_EM", 0);
            Judge(this.a, this.c, this.b, this.d);
        }
        return false;
    }
}
