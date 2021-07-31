package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.NewLogsAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.CallUtil;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.SmsUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

public class ChargeSafeNew extends Activity implements View.OnClickListener, Observer {
    private LeSafeObservable a;
    private List<SafeLog> b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private ListView h;
    private ImageView i;
    private ImageView j;
    private LinearLayout k;
    private RelativeLayout l;
    private RelativeLayout m;
    private RelativeLayout n;
    private RelativeLayout o;
    private int p = 0;
    private boolean q;
    private Handler r = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.ChargeSafeNew.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    ChargeSafeNew.this.g.setText(String.format(ChargeSafeNew.this.getString(R.string.trust_app_num), Integer.valueOf(ChargeSafeNew.this.p)));
                    if (ChargeSafeNew.this.b.size() == 0) {
                        ChargeSafeNew.this.d.setVisibility(0);
                        ChargeSafeNew.this.l.setVisibility(8);
                        return;
                    }
                    ChargeSafeNew.this.d.setVisibility(8);
                    ChargeSafeNew.this.l.setVisibility(0);
                    ChargeSafeNew.this.h.setAdapter((ListAdapter) new NewLogsAdapter(ChargeSafeNew.this, ChargeSafeNew.this.b));
                    return;
                case 1:
                    ChargeSafeNew.this.g.setText(String.format(ChargeSafeNew.this.getString(R.string.trust_app_num), Integer.valueOf(ChargeSafeNew.this.p)));
                    return;
                default:
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.chargesafe);
        this.q = WflUtils.isRoot();
        this.c = (TextView) findViewById(R.id.txt_title);
        this.c.setText(R.string.charge_safe);
        this.d = (TextView) findViewById(R.id.txt_empty);
        this.h = (ListView) findViewById(R.id.listView);
        this.h.setEnabled(false);
        this.i = (ImageView) findViewById(R.id.title_back);
        this.j = (ImageView) findViewById(R.id.title_set);
        this.j.setVisibility(0);
        this.k = (LinearLayout) findViewById(R.id.more_logs);
        this.e = (TextView) findViewById(R.id.this_month_use_send_sms_num);
        this.f = (TextView) findViewById(R.id.this_month_use_call_duration);
        this.g = (TextView) findViewById(R.id.trustapps_text);
        a();
        b();
        this.l = (RelativeLayout) findViewById(R.id.logs_layout);
        this.m = (RelativeLayout) findViewById(R.id.sendmsg_layout);
        this.n = (RelativeLayout) findViewById(R.id.call_layout);
        this.o = (RelativeLayout) findViewById(R.id.trustapp_layout);
        this.i.setOnClickListener(this);
        this.j.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.m.setOnClickListener(this);
        this.n.setOnClickListener(this);
        this.o.setOnClickListener(this);
        this.a = LeSafeObservable.get(getApplicationContext());
        this.a.addObserver(this);
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.AppsManager.ChargeSafeNew.AnonymousClass2 */

            public final void run() {
                SmsUtil.statisticsSmsSent(ChargeSafeNew.this);
                CallUtil.statisticsCallDurationByType(ChargeSafeNew.this);
            }
        }).start();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.ChargeSafeNew.AnonymousClass3 */

            public final void run() {
                AppDatabase database = new AppDatabase(ChargeSafeNew.this);
                if (Const.getScreenHeight() > 800) {
                    ChargeSafeNew.this.b = database.getTopThreeLogs(AppDatabase.DB_LOG_TARIFF, 4);
                } else {
                    ChargeSafeNew.this.b = database.getTopThreeLogs(AppDatabase.DB_LOG_TARIFF, 3);
                }
                if (ChargeSafeNew.this.q) {
                    ChargeSafeNew.this.p = database.getTrustedApps(AppDatabase.DB_APP_SENDMESSAGE);
                }
                ChargeSafeNew.this.r.sendMessage(ChargeSafeNew.this.r.obtainMessage(0));
            }
        }.start();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.call_layout /*{ENCODED_INT: 2131296765}*/:
                Intent it2 = new Intent(this, ApplicationList.class);
                it2.putExtra("permType", AppDatabase.DB_APP_CALL);
                startActivity(it2);
                return;
            case R.id.sendmsg_layout /*{ENCODED_INT: 2131296880}*/:
                startActivity(new Intent(this, MessageBlackList.class));
                return;
            case R.id.trustapp_layout /*{ENCODED_INT: 2131296883}*/:
                Intent it = new Intent(this, AppsManager.class);
                it.putExtra("permType", AppDatabase.DB_APP_SENDMESSAGE);
                startActivityForResult(it, 0);
                return;
            case R.id.more_logs /*{ENCODED_INT: 2131296887}*/:
                Intent it0 = new Intent(this, DisplayLog.class);
                it0.putExtra("from", "0");
                startActivityForResult(it0, 1);
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                finish();
                return;
            case R.id.title_set /*{ENCODED_INT: 2131297710}*/:
                startActivity(new Intent(this, SmsSettingsActivity.class));
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (resultCode) {
            case 0:
            default:
                return;
            case 1:
                this.b.clear();
                this.r.sendMessage(this.r.obtainMessage(0));
                return;
        }
    }

    private void a() {
        try {
            int usedMonthSmsNum = Const.getSmsSendNumCurrMonth();
            int monthLimit = Const.getMonthLimitSMS();
            String monthusedDecribe = getString(R.string.thismonth_send_sms_num) + usedMonthSmsNum + getString(R.string.article) + "\n";
            if (monthLimit == 0) {
                this.e.setText(monthusedDecribe + getString(R.string.no_sms_package));
            } else if (usedMonthSmsNum > monthLimit) {
                String decribe = monthusedDecribe + getString(R.string.exceed_text) + (usedMonthSmsNum - monthLimit) + getString(R.string.article);
                SpannableString spannable = new SpannableString(decribe);
                spannable.setSpan(new ForegroundColorSpan(-65536), monthusedDecribe.length(), decribe.length(), 0);
                this.e.setText(spannable);
            } else {
                this.e.setText(monthusedDecribe + getString(R.string.remaining_text) + (monthLimit - usedMonthSmsNum) + getString(R.string.article));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b() {
        try {
            int callIncommingDuration = Const.getCallIncommingDurationCurrMonth();
            this.f.setText(getString(R.string.outgoing_call) + WflUtils.convertTimeFormat(this, Const.getCallOutgoingDurationCurrMonth()) + "\n" + getString(R.string.answer_call) + WflUtils.convertTimeFormat(this, callIncommingDuration));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void update(Observable observable, Object data) {
        if (data instanceof Integer) {
            switch (((Integer) data).intValue()) {
                case 3:
                    a();
                    return;
                case 4:
                    b();
                    return;
                default:
                    return;
            }
        }
    }
}
