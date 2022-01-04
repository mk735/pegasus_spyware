package com.lenovo.safecenter.net.doublemode;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.doublemode.DoubleCardUtil;
import com.lenovo.safecenter.net.support.PhoneSimInfo;
import com.lenovo.safecenter.net.support.TrafficDate;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.NewFunctionNoticeManager;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.HashMap;

public class TrafficStatisticsDoubleMode extends Activity implements View.OnClickListener, DoubleCardUtil.SettingNumberDialogListener1, DoubleCardUtil.SettingNumberDialogListener2 {
    private int A;
    private int B;
    private int C;
    private PhoneSimInfo D;
    private a E;
    private PhoneSimInfo F;
    private int G;
    private SharedPreferences H;
    private boolean I = true;
    private boolean J = false;
    private Runnable K = new Runnable() {
        /* class com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode.AnonymousClass4 */

        public final void run() {
            int screen_width = TrafficStatisticsDoubleMode.this.G * 8;
            if (TrafficStatisticsDoubleMode.this.z > 8 && TrafficStatisticsDoubleMode.this.z < 17) {
                TrafficStatisticsDoubleMode.this.t.scrollBy(screen_width, 0);
                if (TrafficStatisticsDoubleMode.this.t.getScrollX() == screen_width) {
                    TrafficStatisticsDoubleMode.this.mHandler.removeCallbacks(this);
                } else {
                    TrafficStatisticsDoubleMode.this.mHandler.post(this);
                }
            } else if (TrafficStatisticsDoubleMode.this.z > 16 && TrafficStatisticsDoubleMode.this.z < 25) {
                TrafficStatisticsDoubleMode.this.t.scrollBy(screen_width * 2, 0);
                if (TrafficStatisticsDoubleMode.this.t.getScrollX() == screen_width * 2) {
                    TrafficStatisticsDoubleMode.this.mHandler.removeCallbacks(this);
                } else {
                    TrafficStatisticsDoubleMode.this.mHandler.post(this);
                }
            } else if (TrafficStatisticsDoubleMode.this.z > 24 && TrafficStatisticsDoubleMode.this.z < 32) {
                TrafficStatisticsDoubleMode.this.t.scrollBy(screen_width * 3, 0);
                if (TrafficStatisticsDoubleMode.this.t.getScrollX() == screen_width * 3) {
                    TrafficStatisticsDoubleMode.this.mHandler.removeCallbacks(this);
                }
            }
        }
    };
    private ImageView a;
    private ImageView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private HashMap<String, TrafficDate> m;
    public final Handler mHandler = new Handler() {
        /* class com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    TrafficStatisticsDoubleMode.this.drawDayTrafficIsNotSetup(0);
                    TrafficStatisticsDoubleMode.this.E = a.card1;
                    return;
                case 1:
                    TrafficStatisticsDoubleMode.this.drawDayTrafficIsNotSetup(1);
                    TrafficStatisticsDoubleMode.this.E = a.card2;
                    return;
                case 2:
                case 4:
                default:
                    return;
                case 3:
                    NetCache.canCorrect = true;
                    return;
                case 5:
                    TrafficStatisticsDoubleMode.this.a();
                    TrafficStatisticsDoubleMode.this.d();
                    return;
                case 6:
                    TrafficStatisticsDoubleMode.this.a((TrafficStatisticsDoubleMode) ((Integer) msg.obj).intValue(), 1);
                    return;
            }
        }
    };
    private HashMap<String, TrafficDate> n;
    private LinearLayout o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private HorizontalScrollView t;
    private RelativeLayout u;
    private TrafficStatsService v;
    private Context w;
    private View x;
    private View y;
    private int z;

    /* access modifiers changed from: package-private */
    public enum a {
        card1,
        card2
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        boolean z2;
        super.onCreate(savedInstanceState);
        this.w = this;
        Const.trafficHandler = this.mHandler;
        TrafficStatsService.setMonthLimit(this);
        this.G = (int) NetCache.getTraffic_view_width();
        setContentView(R.layout.traffic_statistics_double_mode);
        if (TextUtils.isEmpty(NetCache.imsi) || TextUtils.isEmpty(NetCache.imsi2)) {
            TrafficStatsService.initNetCache(this);
        }
        this.F = TrafficStatsService.getImsiInfo(this);
        Log.i("airtest", "imsi 1 = " + this.F.sim1IMSI + "imsi 2 = " + this.F.sim2IMSI);
        this.H = PreferenceManager.getDefaultSharedPreferences(this.w);
        this.I = this.H.getBoolean("THREAD_SLEEPED", false);
        if (this.H.getInt("traffc_view_height", -1) == -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.J = z2;
        this.D = TrafficStatsService.getImsiInfo(this);
        this.a = (ImageView) findViewById(R.id.title_back);
        this.b = (ImageView) findViewById(R.id.title_set);
        this.c = (TextView) findViewById(R.id.txt_title);
        this.c.setText(R.string.net_traffic_control);
        this.b.setVisibility(0);
        this.d = (TextView) findViewById(R.id.net_card1_today_used);
        this.e = (TextView) findViewById(R.id.net_card2_today_used);
        this.f = (TextView) findViewById(R.id.net_card1_month_used);
        this.g = (TextView) findViewById(R.id.net_card2_month_used);
        this.h = (TextView) findViewById(R.id.net_card1_button);
        this.i = (TextView) findViewById(R.id.net_card2_button);
        this.o = (LinearLayout) findViewById(R.id.above_layout);
        this.t = (HorizontalScrollView) findViewById(R.id.scrollView);
        this.u = (RelativeLayout) findViewById(R.id.net_intent_netfilter);
        this.j = (TextView) findViewById(R.id.net_notification_text);
        this.p = (TextView) findViewById(R.id.net_set_package);
        this.k = (TextView) findViewById(R.id.net_card1_month_free);
        this.l = (TextView) findViewById(R.id.net_card2_month_free);
        this.k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.p.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.i.setOnClickListener(this);
        this.u.setOnClickListener(this);
        this.x = findViewById(R.id.net_card1_line);
        this.y = findViewById(R.id.net_card2_line);
        this.q = (TextView) findViewById(R.id.card1_text);
        this.r = (TextView) findViewById(R.id.card2_text);
        this.s = (TextView) findViewById(R.id.parent_left);
        this.A = TrafficStatsService.getDataCardPosition(this);
        NetCache.data_id_postion = this.A;
        if (this.A == 1) {
            this.E = a.card2;
        } else {
            this.E = a.card1;
        }
        if (!WflUtils.isMobileNetwork(this.w)) {
            this.s.setVisibility(4);
        } else if (this.A == 1) {
            this.r.setBackgroundResource(R.drawable.net_current_sim_background);
        } else {
            this.q.setBackgroundResource(R.drawable.net_current_sim_background);
        }
        this.o.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            /* class com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode.AnonymousClass2 */

            public final void onGlobalLayout() {
                int height3 = TrafficStatisticsDoubleMode.this.o.getHeight();
                Log.i("viewheight1", "height3 =" + height3);
                boolean flag2 = false;
                if (TrafficStatisticsDoubleMode.this.H.getBoolean("traffc_view_height_changed_reset", true) && height3 <= 150) {
                    flag2 = true;
                    TrafficStatisticsDoubleMode.this.H.edit().putBoolean("traffc_view_height_changed_reset", false).commit();
                    TrafficStatisticsDoubleMode.this.H.edit().putInt("traffc_view_height", (height3 * 2) / 3).commit();
                    TrafficStatisticsDoubleMode.this.H.edit().putBoolean("traffc_view_height_changed_flag", true).commit();
                    Log.i("viewheight1", "touch if");
                }
                Log.i("viewheight1", "flag  = " + flag2);
                if (TrafficStatisticsDoubleMode.this.H.getInt("traffc_view_height", -1) == -1) {
                    TrafficStatisticsDoubleMode.this.H.edit().putInt("traffc_view_height", (height3 * 2) / 3).commit();
                    TrafficStatisticsDoubleMode.this.H.edit().putBoolean("traffc_view_height_changed_flag", true).commit();
                    Log.i("viewheight1", "touch if @@@@@@@@");
                }
                TrafficStatisticsDoubleMode.this.o.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
        if (TextUtils.isEmpty(this.F.sim1IMSI)) {
            this.d.setText("0.00B");
        } else {
            this.d.setText(Formatter.formatShortFileSize(this, Const.getTodayUsedTraffic()));
        }
        if (TextUtils.isEmpty(this.F.sim2IMSI)) {
            this.e.setText("0.00B");
        } else {
            this.e.setText(Formatter.formatShortFileSize(this, Const.getTodayUsedTraffic2()));
        }
        a();
        d();
        a(this.A, 0);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a() {
        this.B = Const.getProgressTrafficMonthUsed();
        this.C = Const.getProgressTrafficMonthUsed2();
        long monthFree1 = Const.getMonthFreeTraffic();
        long monthFree2 = Const.getMonthFreeTraffic2();
        if (this.B < 100) {
            this.k.setTextColor(Color.parseColor("#348213"));
        } else {
            this.k.setTextColor(Color.parseColor("#cd3737"));
        }
        if (this.C < 100) {
            this.l.setTextColor(Color.parseColor("#348213"));
        } else {
            this.l.setTextColor(Color.parseColor("#cd3737"));
        }
        if (this.E == a.card1) {
            e();
        } else {
            f();
        }
        if (monthFree1 >= 0) {
            this.k.setText(Formatter.formatFileSize(this, monthFree1));
        } else {
            this.k.setText("-" + Formatter.formatFileSize(this, -monthFree1));
        }
        if (monthFree2 >= 0) {
            this.l.setText(Formatter.formatFileSize(this, monthFree2));
        } else {
            this.l.setText("-" + Formatter.formatFileSize(this, -monthFree2));
        }
        Log.i("4.0", "Const.getMonthLimitTraffic() =" + Const.getMonthLimitTraffic() + "Const.getMonthLimitTraffic2() =" + Const.getMonthLimitTraffic2() + "Const.getHasNoticed2SetMonthLimit() =" + Const.getHasNoticed2SetMonthLimit());
        if (TextUtils.isEmpty(this.D.sim1IMSI) && TextUtils.isEmpty(this.D.sim2IMSI)) {
            this.k.setTextColor(Color.parseColor("#2c96d6"));
            this.k.setText(R.string.net_simcard_error4);
            this.l.setTextColor(Color.parseColor("#2c96d6"));
            this.l.setText(R.string.net_simcard_error4);
            this.x.setVisibility(8);
            this.y.setVisibility(8);
            this.p.setText(R.string.net_set_traffic_package);
            this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_simcard_error3));
        } else if (TextUtils.isEmpty(this.D.sim1IMSI) || TextUtils.isEmpty(this.D.sim2IMSI)) {
            if (TextUtils.isEmpty(this.D.sim1IMSI)) {
                this.k.setTextColor(Color.parseColor("#2c96d6"));
                this.k.setText(R.string.net_simcard_error4);
                if ("-1".equals(Const.getMonthLimitTraffic2())) {
                    this.l.setText(R.string.net_package_des1);
                    this.l.setClickable(true);
                    this.x.setVisibility(8);
                    this.y.setVisibility(0);
                    this.l.setOnClickListener(this);
                    this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_notification_mode12));
                    this.p.setText(R.string.net_set_traffic_package);
                    return;
                }
                this.y.setVisibility(8);
                c();
                this.p.setText(R.string.net_correct_desc);
                return;
            }
            this.l.setTextColor(Color.parseColor("#2c96d6"));
            this.l.setText(R.string.net_simcard_error4);
            if ("-1".equals(Const.getMonthLimitTraffic())) {
                this.k.setText(R.string.net_package_des1);
                this.k.setClickable(true);
                this.y.setVisibility(8);
                this.x.setVisibility(0);
                this.k.setOnClickListener(this);
                this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_notification_mode12));
                this.p.setText(R.string.net_set_traffic_package);
                return;
            }
            this.x.setVisibility(8);
            b();
            this.p.setText(R.string.net_correct_desc);
        } else if ("-1".equals(Const.getMonthLimitTraffic()) && "-1".equals(Const.getMonthLimitTraffic2())) {
            this.k.setTextColor(Color.parseColor("#dc5e2c"));
            this.k.setText("—");
            this.l.setTextColor(Color.parseColor("#dc5e2c"));
            this.l.setText("—");
            this.x.setVisibility(8);
            this.y.setVisibility(8);
            this.p.setText(R.string.net_set_traffic_package);
            this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_noti_package_set_des));
        } else if ("-1".equals(Const.getMonthLimitTraffic())) {
            this.p.setText(R.string.net_correct_desc);
            this.k.setText(R.string.net_package_des1);
            this.k.setClickable(true);
            this.y.setVisibility(8);
            this.x.setVisibility(0);
            this.k.setOnClickListener(this);
            c();
        } else if ("-1".equals(Const.getMonthLimitTraffic2())) {
            this.p.setText(R.string.net_correct_desc);
            this.l.setText(R.string.net_package_des1);
            this.l.setClickable(true);
            this.x.setVisibility(8);
            this.y.setVisibility(0);
            this.l.setOnClickListener(this);
            b();
        } else {
            this.p.setText(R.string.net_correct_desc);
            this.x.setVisibility(8);
            this.y.setVisibility(8);
            if (this.B < 90 && this.C < 90) {
                this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_notification_mode3));
            } else if (this.B < 90 || this.C < 90) {
                String formaString = getString(R.string.net_notification_mode5);
                if (this.B >= 90) {
                    this.j.setText(getString(R.string.net_mobile) + c.N + String.format(formaString, getString(R.string.net_card1), getString(R.string.net_card2)));
                    return;
                }
                this.j.setText(getString(R.string.net_mobile) + c.N + String.format(formaString, getString(R.string.net_card2), getString(R.string.net_card1)));
            } else {
                this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_notification_mode4));
            }
        }
    }

    private void b() {
        if (this.B < 90) {
            this.j.setText(getString(R.string.net_mobile) + ":SIM1" + getString(R.string.net_notification_mode7));
        } else {
            this.j.setText(getString(R.string.net_mobile) + ":SIM1" + getString(R.string.net_notification_mode8));
        }
    }

    private void c() {
        if (this.C < 90) {
            this.j.setText(getString(R.string.net_mobile) + ":SIM2" + getString(R.string.net_notification_mode7));
        } else {
            this.j.setText(getString(R.string.net_mobile) + ":SIM2" + getString(R.string.net_notification_mode8));
        }
    }

    /* access modifiers changed from: protected */
    public void drawDayTrafficIsNotSetup(int cardPostion) {
        int total;
        this.o.removeAllViews();
        int count = TrafficStatsService.getDayCountInMonth();
        int month = TrafficStatsService.getCurrentMonth();
        int year = TrafficStatsService.getCurrentYear();
        for (int i2 = 1; i2 < count; i2++) {
            RelativeLayout layout = new RelativeLayout(this);
            layout.setLayoutParams(new LinearLayout.LayoutParams(this.G, -1));
            RelativeLayout.LayoutParams re = new RelativeLayout.LayoutParams(-2, -2);
            re.addRule(14, -1);
            re.addRule(12);
            TextView text = new TextView(this);
            text.setId(1);
            text.setPadding(0, 0, 0, 0);
            text.setTextSize(10.0f);
            text.setText(month + "." + i2);
            layout.addView(text, re);
            RelativeLayout li = new RelativeLayout(this);
            li.setBackgroundResource(R.drawable.axis);
            RelativeLayout.LayoutParams ri = new RelativeLayout.LayoutParams(this.G, -1);
            ri.addRule(2, 1);
            TrafficDate trafficDate = cardPostion == 0 ? this.m.get(year + "." + month + "." + i2) : this.n.get(year + "." + month + "." + i2);
            int height = trafficDate == null ? 0 : trafficDate.height;
            if (trafficDate == null) {
                total = 0;
            } else {
                total = trafficDate.total;
            }
            RelativeLayout.LayoutParams ri1 = new RelativeLayout.LayoutParams(-2, height);
            ri1.addRule(14, -1);
            ri1.addRule(12);
            ImageView img_green = new ImageView(this);
            img_green.setId(2);
            img_green.setBackgroundResource(R.drawable.fig_histogram_green);
            li.addView(img_green, ri1);
            RelativeLayout.LayoutParams tr = new RelativeLayout.LayoutParams(-2, -2);
            tr.addRule(14, -1);
            tr.addRule(2, 2);
            TextView textTra = new TextView(this);
            textTra.setTextSize(10.0f);
            textTra.setText(TrafficStatsService.formatTraffic((long) total, this));
            li.addView(textTra, tr);
            layout.addView(li, ri);
            this.o.addView(layout);
        }
        this.mHandler.post(this.K);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        String key = getIntent().getStringExtra("key");
        Log.i("s3", "key =" + key);
        if ("key".equals(key)) {
            MyUtils.showLeSecNotification(this.w);
        }
        ImageView mNewFeatureIcon = (ImageView) findViewById(R.id.net_app_manager_new_feature_icon);
        if (NewFunctionNoticeManager.hasActionInType(this.w, NewFunctionNoticeManager.TYPE_TRAFFIC_MONITOR, NewFunctionNoticeManager.ACTION_APP_USENET_CONTROL)) {
            mNewFeatureIcon.setVisibility(0);
        } else {
            mNewFeatureIcon.setVisibility(8);
        }
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void d() {
        this.z = TrafficStatsService.getDate();
        if (TextUtils.isEmpty(this.F.sim1IMSI)) {
            this.f.setText("0.00B");
        } else {
            this.f.setText(Formatter.formatFileSize(this, Const.getMonthUsedTraffic()));
        }
        if (TextUtils.isEmpty(this.F.sim2IMSI)) {
            this.g.setText("0.00B");
        } else {
            this.g.setText(Formatter.formatFileSize(this, Const.getMonthUsedTraffic2()));
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(final int postion, final int flag) {
        TrafficStatsService.getExecutorService().execute(new Thread() {
            /* class com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode.AnonymousClass3 */

            public final void run() {
                try {
                    TrafficStatisticsDoubleMode.this.v = TrafficStatsService.getInstance(TrafficStatisticsDoubleMode.this.w);
                    if (TrafficStatisticsDoubleMode.this.J || !TrafficStatisticsDoubleMode.this.I) {
                        Thread.sleep(1000);
                        TrafficStatisticsDoubleMode.this.H.edit().putBoolean("THREAD_SLEEPED", true).commit();
                        Log.i("viewheight1", "touch sleep");
                    }
                    TrafficStatisticsDoubleMode.this.v.insertDayTrafficDate(TrafficStatisticsDoubleMode.this.w);
                    PhoneSimInfo info = TrafficStatsService.getImsiInfo(TrafficStatisticsDoubleMode.this.w);
                    switch (postion) {
                        case 0:
                            TrafficStatisticsDoubleMode.this.m = TrafficStatisticsDoubleMode.this.v.getDayTrafficInMonth(info.sim1IMSI);
                            TrafficStatisticsDoubleMode.this.mHandler.sendMessage(TrafficStatisticsDoubleMode.this.mHandler.obtainMessage(0));
                            return;
                        case 1:
                            TrafficStatisticsDoubleMode.this.n = TrafficStatisticsDoubleMode.this.v.getDayTrafficInMonth(info.sim2IMSI);
                            TrafficStatisticsDoubleMode.this.mHandler.sendMessage(TrafficStatisticsDoubleMode.this.mHandler.obtainMessage(1));
                            return;
                        case 2:
                        default:
                            return;
                        case 3:
                            TrafficStatisticsDoubleMode.this.m = TrafficStatisticsDoubleMode.this.v.getDayTrafficInMonth(info.sim1IMSI);
                            TrafficStatisticsDoubleMode.this.mHandler.sendMessage(TrafficStatisticsDoubleMode.this.mHandler.obtainMessage(0));
                            return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Log.i("sqlexception", "touch net sqlexception" + e.getMessage());
                    if (flag == 0) {
                        Message msg = new Message();
                        msg.what = 6;
                        msg.obj = Integer.valueOf(postion);
                        TrafficStatisticsDoubleMode.this.mHandler.sendMessage(msg);
                        return;
                    }
                    TrafficStatisticsDoubleMode.this.finish();
                }
            }
        });
    }

    public void onClick(View v2) {
        switch (v2.getId()) {
            case R.id.title_back:
                finish();
                return;
            case R.id.title_set:
                startActivity(new Intent(this, NetSetting.class));
                return;
            case R.id.net_card1_month_free:
                if (this.k.getText().equals(getString(R.string.net_package_des1))) {
                    DoubleCardUtil.showDailog(this, 0, this, R.id.net_card1_month_free);
                    return;
                } else if (this.k.getText().equals(getString(R.string.net_correct_desc))) {
                    TrafficStatsService.startIntent2TrafficCorrect(0, this, 0);
                    return;
                } else {
                    return;
                }
            case R.id.net_card2_month_free:
                if (this.l.getText().equals(getString(R.string.net_package_des1))) {
                    DoubleCardUtil.showDailog(this, 1, this, R.id.net_card2_month_free);
                    return;
                } else if (this.l.getText().equals(getString(R.string.net_correct_desc))) {
                    TrafficStatsService.startIntent2TrafficCorrect(1, this, 0);
                    return;
                } else {
                    return;
                }
            case R.id.net_set_package:
                if (this.p.getText().equals(getString(R.string.net_set_traffic_package))) {
                    DoubleCardUtil.createSettingNumberDialog(this, this, 6);
                    return;
                } else if (!WflUtils.isNetworkAvailable(this.w)) {
                    DoubleCardUtil.showSetNetWorkDialog(this.w);
                    return;
                } else {
                    DoubleCardUtil.showCorrectDialog(this.w);
                    return;
                }
            case R.id.net_card1_button:
                this.o.removeAllViews();
                if (this.m != null) {
                    this.mHandler.sendMessage(this.mHandler.obtainMessage(0));
                } else {
                    a(0, 0);
                }
                e();
                return;
            case R.id.net_card2_button:
                this.o.removeAllViews();
                if (this.n != null) {
                    this.mHandler.sendMessage(this.mHandler.obtainMessage(1));
                } else {
                    a(1, 0);
                }
                f();
                return;
            case R.id.net_intent_netfilter:
                NewFunctionNoticeManager.removeActionToType(this.w, NewFunctionNoticeManager.TYPE_TRAFFIC_MONITOR, NewFunctionNoticeManager.ACTION_APP_USENET_CONTROL);
                TrafficStatsService.startIntentNetFilter(this.w);
                return;
            default:
                return;
        }
    }

    private void e() {
        this.h.setBackgroundResource(R.drawable.net_current_card_selected);
        this.i.setBackgroundResource(R.drawable.net_current_card);
    }

    private void f() {
        this.i.setBackgroundResource(R.drawable.net_current_card_selected);
        this.h.setBackgroundResource(R.drawable.net_current_card);
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener2
    public void onSettingNumberDialogOK(int[] number, int flag) {
        if (Const.SDK_VERSION >= 14 && MyMultiSIMUtils.isMultiSim(this)) {
            if (!TextUtils.isEmpty(this.D.sim1IMSI)) {
                Const.setMonthLimitTraffic(String.valueOf(number[0]));
            }
            if (!TextUtils.isEmpty(this.D.sim2IMSI)) {
                Const.setMonthLimitTraffic2(String.valueOf(number[1]));
            }
        }
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode.AnonymousClass5 */

            public final void run() {
                TrafficStatsService.statsTrafficMobile(TrafficStatisticsDoubleMode.this.w);
                TrafficStatisticsDoubleMode.this.mHandler.sendMessage(TrafficStatisticsDoubleMode.this.mHandler.obtainMessage(5));
            }
        }).start();
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener1
    public void onSettingNumberDialogOK(int number, int id, int postion) {
        if (postion == 0) {
            Const.setMonthLimitTraffic(String.valueOf(number));
        } else {
            Const.setMonthLimitTraffic2(String.valueOf(number));
        }
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode.AnonymousClass6 */

            public final void run() {
                TrafficStatsService.statsTrafficMobile(TrafficStatisticsDoubleMode.this.w);
                TrafficStatisticsDoubleMode.this.mHandler.sendMessage(TrafficStatisticsDoubleMode.this.mHandler.obtainMessage(5));
            }
        }).start();
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener1
    public void onSettingNumberDialogCancel(int number) {
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener2
    public void onSettingNumberDialogCancel(int[] number, int flag) {
    }
}
