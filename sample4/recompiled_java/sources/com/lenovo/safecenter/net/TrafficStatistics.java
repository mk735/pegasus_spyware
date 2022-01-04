package com.lenovo.safecenter.net;

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
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.doublemode.DoubleCardUtil;
import com.lenovo.safecenter.net.doublemode.NetSetting;
import com.lenovo.safecenter.net.doublemode.TrafficStatisticsDoubleMode;
import com.lenovo.safecenter.net.support.PhoneSimInfo;
import com.lenovo.safecenter.net.support.TrafficDate;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.NewFunctionNoticeManager;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.HashMap;

public class TrafficStatistics extends Activity implements View.OnClickListener, DoubleCardUtil.SettingNumberDialogListener2 {
    private int A;
    private Runnable B = new Runnable() {
        /* class com.lenovo.safecenter.net.TrafficStatistics.AnonymousClass4 */

        public final void run() {
            int screen_width = TrafficStatistics.this.x * 8;
            if (TrafficStatistics.this.n > 8 && TrafficStatistics.this.n < 17) {
                TrafficStatistics.this.p.scrollBy(screen_width, 0);
                if (TrafficStatistics.this.p.getScrollX() == screen_width) {
                    TrafficStatistics.this.mHandler.removeCallbacks(this);
                } else {
                    TrafficStatistics.this.mHandler.post(this);
                }
            } else if (TrafficStatistics.this.n > 16 && TrafficStatistics.this.n < 25) {
                TrafficStatistics.this.p.scrollBy(screen_width * 2, 0);
                if (TrafficStatistics.this.p.getScrollX() == screen_width * 2) {
                    TrafficStatistics.this.mHandler.removeCallbacks(this);
                } else {
                    TrafficStatistics.this.mHandler.post(this);
                }
            } else if (TrafficStatistics.this.n > 24 && TrafficStatistics.this.n < 32) {
                TrafficStatistics.this.p.scrollBy(screen_width * 3, 0);
                if (TrafficStatistics.this.p.getScrollX() == screen_width * 3) {
                    TrafficStatistics.this.mHandler.removeCallbacks(this);
                }
            }
        }
    };
    private TranslateAnimation a;
    private ImageView b;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TrafficStatsService k;
    private Context l;
    private HashMap<String, TrafficDate> m;
    public final Handler mHandler = new Handler() {
        /* class com.lenovo.safecenter.net.TrafficStatistics.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    TrafficStatistics.a(TrafficStatistics.this);
                    return;
                case 1:
                case 2:
                case 4:
                default:
                    return;
                case 3:
                    NetCache.canCorrect = true;
                    return;
                case 5:
                    TrafficStatistics.this.b();
                    TrafficStatistics.this.a();
                    return;
            }
        }
    };
    private int n;
    private LinearLayout o;
    private HorizontalScrollView p;
    private RelativeLayout q;
    private RelativeLayout r;
    private TextView s;
    private TextView t;
    private TextView u;
    private int v;
    private PhoneSimInfo w;
    private int x;
    private long y;
    private SharedPreferences z;

    static /* synthetic */ void a(TrafficStatistics x0) {
        int dayCountInMonth = TrafficStatsService.getDayCountInMonth();
        int currentMonth = TrafficStatsService.getCurrentMonth();
        int currentYear = TrafficStatsService.getCurrentYear();
        for (int i2 = 1; i2 < dayCountInMonth; i2++) {
            RelativeLayout relativeLayout = new RelativeLayout(x0);
            relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(x0.x, -1));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(14, -1);
            layoutParams.addRule(12);
            TextView textView = new TextView(x0);
            textView.setId(1);
            textView.setPadding(0, 0, 0, 0);
            textView.setTextSize(10.0f);
            textView.setText(currentMonth + "." + i2);
            relativeLayout.addView(textView, layoutParams);
            RelativeLayout relativeLayout2 = new RelativeLayout(x0);
            relativeLayout2.setBackgroundResource(R.drawable.axis);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(x0.x, -1);
            layoutParams2.addRule(2, 1);
            TrafficDate trafficDate = x0.m.get(currentYear + "." + currentMonth + "." + i2);
            int i3 = trafficDate == null ? 0 : trafficDate.height;
            int i4 = trafficDate == null ? 0 : trafficDate.total;
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, i3);
            layoutParams3.addRule(14, -1);
            layoutParams3.addRule(12);
            ImageView imageView = new ImageView(x0);
            imageView.setId(2);
            imageView.setBackgroundResource(R.drawable.fig_histogram_green);
            relativeLayout2.addView(imageView, layoutParams3);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(14, -1);
            layoutParams4.addRule(2, 2);
            TextView textView2 = new TextView(x0);
            textView2.setTextSize(10.0f);
            textView2.setText(TrafficStatsService.formatTraffic((long) i4, x0));
            relativeLayout2.addView(textView2, layoutParams4);
            relativeLayout.addView(relativeLayout2, layoutParams2);
            x0.o.addView(relativeLayout);
        }
        x0.mHandler.post(x0.B);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        if (TrafficStatsService.getTrafficMode(this) == 12) {
            startActivity(new Intent(this, TrafficStatisticsDoubleMode.class));
            finish();
        }
        super.onCreate(savedInstanceState);
        this.x = (int) NetCache.getTraffic_view_width();
        Log.i("testdip", "width = " + this.x);
        setContentView(R.layout.traffic_statistics_m);
        if (TextUtils.isEmpty(NetCache.imsi)) {
            TrafficStatsService.initNetCache(this);
        }
        this.l = this;
        this.z = PreferenceManager.getDefaultSharedPreferences(this.l);
        if (NetCache.traffic_mode == 10) {
            TrafficStatsService.setMonthLimit(this);
        }
        if ("key".equals(getIntent().getStringExtra("key"))) {
            MyUtils.showLeSecNotification(this.l);
        }
        this.k = TrafficStatsService.getInstance(this);
        Const.trafficHandler = this.mHandler;
        this.w = TrafficStatsService.getImsiInfo(this);
        this.A = TrafficStatsService.getTrafficMode(this.l);
        this.b = (ImageView) findViewById(R.id.title_back);
        this.c = (ImageView) findViewById(R.id.title_set);
        this.f = (TextView) findViewById(R.id.txt_title);
        this.f.setText(R.string.net_traffic_control);
        this.c.setVisibility(0);
        this.g = (TextView) findViewById(R.id.net_single_today_used);
        this.h = (TextView) findViewById(R.id.net_single_month_used);
        this.i = (TextView) findViewById(R.id.net_single_month_free);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.o = (LinearLayout) findViewById(R.id.above_layout);
        this.p = (HorizontalScrollView) findViewById(R.id.scrollView);
        this.q = (RelativeLayout) findViewById(R.id.net_intent_netfilter);
        this.q.setOnClickListener(this);
        this.r = (RelativeLayout) findViewById(R.id.net_single_month_free_parent);
        this.j = (TextView) findViewById(R.id.net_single_notification_text);
        this.s = (TextView) findViewById(R.id.net_single_set_package);
        this.s.setOnClickListener(this);
        this.d = (ImageView) findViewById(R.id.net_traffic_anti);
        this.t = (TextView) findViewById(R.id.net_traffic_free_anti_text);
        this.e = (ImageView) findViewById(R.id.iv2);
        this.u = (TextView) findViewById(R.id.net_month_free_desc);
        this.p.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            /* class com.lenovo.safecenter.net.TrafficStatistics.AnonymousClass3 */

            public final void onGlobalLayout() {
                int height3 = TrafficStatistics.this.p.getHeight();
                Log.i("viewheight1", "height3 =" + height3);
                if (!TrafficStatistics.this.z.getBoolean("traffc_view_height_changed", false)) {
                    TrafficStatistics.this.z.edit().putInt("traffc_view_height", (height3 * 2) / 3).commit();
                    TrafficStatistics.this.z.edit().putBoolean("traffc_view_height_changed", true).commit();
                    TrafficStatistics.this.z.edit().putBoolean("traffc_view_height_changed_flag", true).commit();
                    Log.i("viewheight1", "touch if");
                }
                TrafficStatistics.this.p.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
        if (TrafficStatsService.getTrafficMode(this) != 10 || !TextUtils.isEmpty(this.w.sim1IMSI)) {
            this.g.setText(Formatter.formatShortFileSize(this, Const.getTodayUsedTraffic()));
        } else {
            this.g.setText("0.00B");
        }
        b();
        a();
        TrafficStatsService.getExecutorService().execute(new Thread() {
            /* class com.lenovo.safecenter.net.TrafficStatistics.AnonymousClass2 */

            public final void run() {
                TrafficStatistics.this.k.insertDayTrafficDate(TrafficStatistics.this.l);
                int mode = TrafficStatsService.getTrafficMode(TrafficStatistics.this.l);
                if (!TrafficStatistics.this.z.getBoolean("traffc_view_height_changed", false)) {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    Log.i("viewheight1", "touch sleep");
                }
                if (mode == 13) {
                    TrafficStatistics.this.m = TrafficStatistics.this.k.getDayTrafficInMonth("dev");
                } else {
                    PhoneSimInfo info = TrafficStatsService.getImsiInfo(TrafficStatistics.this.l);
                    TrafficStatistics.this.m = TrafficStatistics.this.k.getDayTrafficInMonth(info.sim1IMSI);
                }
                TrafficStatistics.this.mHandler.sendMessage(TrafficStatistics.this.mHandler.obtainMessage(0));
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a() {
        this.v = Const.getProgressTrafficMonthUsed();
        this.y = Const.getMonthFreeTraffic();
        if (this.y < 0) {
            this.t.setVisibility(8);
            this.e.setBackgroundResource(R.drawable.net_traffic_out);
            return;
        }
        this.e.setBackgroundResource(R.drawable.net_traffic_background);
        this.t.setVisibility(0);
        this.t.setText((100 - this.v) + "%");
        float flag = ((float) this.v) / 100.0f;
        if (flag > 0.8f) {
            flag -= 0.1f;
        }
        this.a = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, flag);
        this.a.setInterpolator(new DecelerateInterpolator());
        this.a.setFillAfter(true);
        this.a.setDuration(1000);
        this.d.setAnimation(this.a);
    }

    public void onClick(View v2) {
        switch (v2.getId()) {
            case R.id.title_back:
                finish();
                return;
            case R.id.title_set:
                startActivity(new Intent(this, NetSetting.class));
                return;
            case R.id.net_intent_netfilter:
                NewFunctionNoticeManager.removeActionToType(this.l, NewFunctionNoticeManager.TYPE_TRAFFIC_MONITOR, NewFunctionNoticeManager.ACTION_APP_USENET_CONTROL);
                TrafficStatsService.startIntentNetFilter(this.l);
                return;
            case R.id.net_single_set_package:
                if (this.s.getText().equals(getString(R.string.net_set_traffic_package))) {
                    DoubleCardUtil.createSettingNumberDialog(this, this, 6);
                    return;
                } else if (!this.s.getText().equals(getString(R.string.net_correct_desc))) {
                    return;
                } else {
                    if (!WflUtils.isNetworkAvailable(this.l)) {
                        DoubleCardUtil.showSetNetWorkDialog(this.l);
                        return;
                    } else {
                        TrafficStatsService.startIntent2TrafficCorrect(0, this, 0);
                        return;
                    }
                }
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        ImageView mNewFeatureIcon = (ImageView) findViewById(R.id.net_app_manager_new_feature_icon);
        if (NewFunctionNoticeManager.hasActionInType(this.l, NewFunctionNoticeManager.TYPE_TRAFFIC_MONITOR, NewFunctionNoticeManager.ACTION_APP_USENET_CONTROL)) {
            mNewFeatureIcon.setVisibility(0);
        } else {
            mNewFeatureIcon.setVisibility(8);
        }
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b() {
        if (NetCache.traffic_mode == -1) {
            TrafficStatsService.initNetCache(this);
        }
        this.v = Const.getProgressTrafficMonthUsed();
        this.y = Const.getMonthFreeTraffic();
        Log.i("letrafficui", "progress = " + this.v + ",monthFree1 =" + this.y);
        if (this.v < 100) {
            this.i.setTextColor(Color.parseColor("#348213"));
        } else {
            this.i.setTextColor(Color.parseColor("#cd3737"));
        }
        if (this.y >= 0 || "-1".equals(Const.getMonthLimitTraffic())) {
            this.u.setText(R.string.net_month_free);
        } else {
            this.u.setText(R.string.net_month_out_desc);
        }
        if (TextUtils.isEmpty(this.w.sim1IMSI) && this.A == 10) {
            this.i.setText(R.string.net_simcard_error4);
            this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_simcard_error2));
        } else if ("-1".equals(Const.getMonthLimitTraffic())) {
            this.s.setVisibility(0);
            this.s.setText(R.string.net_set_traffic_package);
            this.i.setText("—");
            this.i.setTextColor(Color.parseColor("#dc5e2c"));
            this.j.setText(getString(R.string.net_mobile) + c.N + getString(R.string.net_notification_mode12));
        } else {
            this.s.setVisibility(0);
            this.s.setText(R.string.net_correct_desc);
            this.r.setVisibility(0);
            if (this.y < 0) {
                long tmp = -Const.getMonthFreeTraffic();
                this.j.setText(R.string.net_notification_mode9);
                this.i.setText(Formatter.formatFileSize(this, tmp));
            } else if (this.v < 90) {
                this.j.setText(R.string.net_notification_mode7);
                this.i.setText(Formatter.formatFileSize(this, Const.getMonthFreeTraffic()));
            } else {
                this.j.setText(R.string.net_notification_mode8);
                this.i.setText(Formatter.formatFileSize(this, Const.getMonthFreeTraffic()));
            }
        }
        this.n = TrafficStatsService.getDate();
        if (TrafficStatsService.getTrafficMode(this) != 10 || !TextUtils.isEmpty(this.w.sim1IMSI)) {
            this.h.setText(Formatter.formatFileSize(this, Const.getMonthUsedTraffic()));
        } else {
            this.h.setText("0.00B");
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener2
    public void onSettingNumberDialogOK(int[] number, int flag) {
        if (NetCache.traffic_mode != 10) {
            Const.setMonthLimitTraffic(String.valueOf(number[0]));
        } else if (!TextUtils.isEmpty(WflUtils.getActiveSubscriberId(this))) {
            Const.setMonthLimitTraffic(String.valueOf(number[0]));
        }
        TrafficStatsService.statsTrafficMobile(this.l);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5));
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener2
    public void onSettingNumberDialogCancel(int[] number, int flag) {
    }
}
