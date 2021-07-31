package com.lenovo.safecenter.net.doublemode;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.MultiSIMUtils;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.floatwindow.data.SaveData;
import com.lenovo.safecenter.net.cache.NetCache;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import com.lenovo.safecenter.net.doublemode.DoubleCardUtil;
import com.lenovo.safecenter.net.support.PhoneSimInfo;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.net.support.Utils;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.network.CorrectionDataInfo;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import com.tencent.tmsecure.module.network.TrafficCorrectionManager;
import java.util.ArrayList;
import org.apache.commons.httpclient.cookie.CookiePolicy;

public class NetSetting extends Activity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, DoubleCardUtil.SettingFloatNumberDialogListener, DoubleCardUtil.SettingNumberDialogListener1, DoubleCardUtil.SettingNumberDialogListener2 {
    public static final int NORMAL_SETTINGS_TRAFFIC_LIMIT = 6;
    public static final int SETTINGS_TRAFFIC_LIMIT = 7;
    private Context A;
    private CheckedTextView B;
    private CheckedTextView C;
    private CheckedTextView D;
    private CheckedTextView E;
    private CheckedTextView F;
    private CheckedTextView G;
    private View H;
    private int I;
    private int J;
    private PhoneSimInfo K;
    private b L;
    private RelativeLayout M;
    private a N;
    private MultiSIMUtils O;
    private int P;
    private String Q;
    private String R;
    private EditText S;
    private EditText T;
    private int U;
    private SharedPreferences V;
    private TextView W;
    private View.OnClickListener X = new View.OnClickListener() {
        /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass2 */

        public final void onClick(View v) {
            switch (v.getId()) {
                case R.id.net_card_radio_week_sim1:
                    if (!NetSetting.this.B.isChecked()) {
                        NetSetting.this.B.setChecked(true);
                    }
                    NetSetting.this.D.setChecked(false);
                    NetSetting.this.F.setChecked(false);
                    NetSetting.this.I = 0;
                    return;
                case R.id.net_card_radio_ten_sim1:
                    if (!NetSetting.this.D.isChecked()) {
                        NetSetting.this.D.setChecked(true);
                    }
                    NetSetting.this.B.setChecked(false);
                    NetSetting.this.F.setChecked(false);
                    NetSetting.this.I = 1;
                    return;
                case R.id.net_card_radio_cancel_sim1:
                    if (!NetSetting.this.F.isChecked()) {
                        NetSetting.this.F.setChecked(true);
                    }
                    NetSetting.this.B.setChecked(false);
                    NetSetting.this.D.setChecked(false);
                    NetSetting.this.I = 2;
                    return;
                default:
                    return;
            }
        }
    };
    private View.OnClickListener Y = new View.OnClickListener() {
        /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass3 */

        public final void onClick(View v) {
            switch (v.getId()) {
                case R.id.net_card_radio_week_sim2:
                    if (!NetSetting.this.C.isChecked()) {
                        NetSetting.this.C.setChecked(true);
                    }
                    NetSetting.this.E.setChecked(false);
                    NetSetting.this.G.setChecked(false);
                    NetSetting.this.J = 0;
                    return;
                case R.id.net_card_radio_ten_sim2:
                    if (!NetSetting.this.E.isChecked()) {
                        NetSetting.this.E.setChecked(true);
                    }
                    NetSetting.this.C.setChecked(false);
                    NetSetting.this.G.setChecked(false);
                    NetSetting.this.J = 1;
                    return;
                case R.id.net_card_radio_cancel_sim2:
                    if (!NetSetting.this.G.isChecked()) {
                        NetSetting.this.G.setChecked(true);
                    }
                    NetSetting.this.C.setChecked(false);
                    NetSetting.this.E.setChecked(false);
                    NetSetting.this.J = 2;
                    return;
                default:
                    return;
            }
        }
    };
    private CheckBox a;
    private CheckBox b;
    private CheckBox c;
    private CheckBox d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private RelativeLayout j;
    private RelativeLayout k;
    private RelativeLayout l;
    private RelativeLayout m;
    public final Handler mHandler = new Handler() {
        /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            int toast;
            switch (msg.what) {
                case R.string.net_correct_update_config:
                    SmsEntity sms = (SmsEntity) msg.obj;
                    if (NetSetting.this.S == null || NetSetting.this.T == null || NetSetting.this.U != sms.id) {
                        NetSetting.this.a((NetSetting) sms.id);
                    }
                    NetSetting.this.S.setText(sms.body);
                    NetSetting.this.T.setText(sms.phonenum);
                    StringBuilder sb = new StringBuilder();
                    sb.append(NetSetting.this.getString(R.string.net_correct_limit_type)).append("  ").append(NetSetting.this.V.getString(Utils.CITY_DESC, CookiePolicy.DEFAULT)).append(",").append(NetSetting.this.V.getString(Utils.CARRY_DESC, CookiePolicy.DEFAULT));
                    NetSetting.this.W.setText(sb.toString());
                    if (TextUtils.isEmpty(sms.body) || TextUtils.isEmpty(sms.phonenum)) {
                        toast = R.string.net_error_code13;
                    } else {
                        toast = R.string.net_correct_update_config_notice;
                    }
                    Toast.makeText(NetSetting.this.A, toast, 0).show();
                    return;
                default:
                    return;
            }
        }
    };
    private RelativeLayout n;
    private RelativeLayout o;
    private RelativeLayout p;
    private RelativeLayout q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;

    /* access modifiers changed from: package-private */
    public enum a {
        single,
        muti
    }

    static /* synthetic */ void d(NetSetting x0, final int x1) {
        new Thread() {
            /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass9 */

            public final void run() {
                SharedPreferences sp;
                if (x1 == 0) {
                    sp = NetSetting.this.getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
                } else {
                    sp = NetSetting.this.getSharedPreferences(Utils.SIM2_PROPERTIES, 0);
                }
                TrafficCorrectionConfig config = new TrafficCorrectionConfig(sp.getString(Utils.PROVINCE, ""), sp.getString(Utils.CITY, ""), sp.getString(Utils.CARRY, ""), sp.getString(Utils.BRAND, ""));
                TrafficCorrectionManager mTcMgr = (TrafficCorrectionManager) ManagerCreator.getManager(TrafficCorrectionManager.class);
                mTcMgr.setConfig(config);
                ArrayList<CorrectionDataInfo> infoList = new ArrayList<>();
                mTcMgr.startCorrection(infoList);
                CorrectionDataInfo di = infoList.get(0);
                Message msg = new Message();
                msg.what = R.string.net_correct_update_config;
                SmsEntity se = new SmsEntity();
                se.body = di.getMessage();
                se.phonenum = di.getAddress();
                se.id = x1;
                msg.obj = se;
                NetSetting.this.mHandler.sendMessage(msg);
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.traffic_settings);
        this.A = this;
        this.K = TrafficStatsService.getImsiInfo(this);
        this.P = TrafficStatsService.getTrafficMode(this.A);
        this.Q = getString(R.string.net_card3);
        this.R = getString(R.string.net_card4);
        if (this.P == 13) {
            this.N = a.single;
        } else {
            this.N = MyMultiSIMUtils.isMultiSim(this) ? a.muti : a.single;
        }
        if (this.N == a.muti) {
            this.O = MultiSIMUtils.getDefault(this);
        }
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(this);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.net_settings);
        this.v = (TextView) findViewById(R.id.show_no_sim_info);
        if (this.P != 13) {
            if (this.N == a.single && TextUtils.isEmpty(this.K.sim1IMSI)) {
                this.v.setVisibility(0);
            } else if (TextUtils.isEmpty(this.K.sim1IMSI) && TextUtils.isEmpty(this.K.sim2IMSI)) {
                this.v.setVisibility(0);
            }
        }
        this.e = (TextView) findViewById(R.id.monthLimitTraffic_card1);
        this.f = (TextView) findViewById(R.id.monthLimitTraffic_card2);
        this.g = (TextView) findViewById(R.id.monthFreeTraffic_notice_card1);
        this.h = (TextView) findViewById(R.id.monthFreeTraffic_notice_card2);
        this.j = (RelativeLayout) findViewById(R.id.monthLimitTrafficLayout);
        this.k = (RelativeLayout) findViewById(R.id.dailyLimitTrafficLayout);
        this.j.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.i = (TextView) findViewById(R.id.dailyLimitTraffic);
        this.l = (RelativeLayout) findViewById(R.id.net_month_free_click);
        this.l.setOnClickListener(this);
        this.m = (RelativeLayout) findViewById(R.id.traffic_sms_check_Layout);
        this.m.setOnClickListener(this);
        this.n = (RelativeLayout) findViewById(R.id.net_single_month_free_notice);
        this.a = (CheckBox) findViewById(R.id.net_monthfree_single_switch);
        this.b = (CheckBox) findViewById(R.id.net_traffic_window_switch);
        this.d = (CheckBox) findViewById(R.id.net_traffic_window_fixed_switch);
        this.M = (RelativeLayout) findViewById(R.id.net_traffic_window_fixed);
        this.c = (CheckBox) findViewById(R.id.net_traffic_auto_deny_checkbox);
        if ("-1".equals(Const.getMonthLimitTraffic())) {
            this.a.setChecked(false);
        } else {
            this.a.setChecked(Const.getIsNetMonthFreeNoticeOn1());
        }
        this.a.setOnCheckedChangeListener(this);
        this.b.setOnCheckedChangeListener(this);
        this.d.setOnCheckedChangeListener(this);
        this.c.setOnCheckedChangeListener(this);
        this.b.setChecked(SaveData.get_flow_status(this.A));
        this.d.setChecked(SaveData.get_flow_immove_state(this.A));
        if (SaveData.get_flow_status(this.A)) {
            this.M.setVisibility(0);
        } else {
            this.M.setVisibility(8);
        }
        this.c.setChecked(TrafficStatsService.getIsAutoDeny(this.A));
        if (this.N == a.muti) {
            this.n.setVisibility(8);
            if (!TextUtils.isEmpty(this.O.getSubscriberId(0)) || TextUtils.isEmpty(this.O.getSubscriberId(1))) {
            }
        } else {
            TextUtils.isEmpty(WflUtils.getActiveSubscriberId(this));
            this.l.setVisibility(8);
        }
        this.r = (TextView) findViewById(R.id.monthCorrectTraffic_card1);
        this.s = (TextView) findViewById(R.id.monthCorrectTraffic_card2);
        this.o = (RelativeLayout) findViewById(R.id.net_traffic_correct_regular_parent);
        this.o.setOnClickListener(this);
        this.p = (RelativeLayout) findViewById(R.id.net_sim1_location);
        this.p.setOnClickListener(this);
        this.q = (RelativeLayout) findViewById(R.id.net_sim2_location);
        this.q.setOnClickListener(this);
        this.t = (TextView) findViewById(R.id.net_correct_cycle_value_desc1);
        this.u = (TextView) findViewById(R.id.net_correct_cycle_value_desc2);
        this.w = (TextView) findViewById(R.id.net_sim1_top);
        this.x = (TextView) findViewById(R.id.net_sim2_top);
        this.y = (TextView) findViewById(R.id.net_sim1_location_des);
        this.z = (TextView) findViewById(R.id.net_sim2_location_des);
        if (this.N == a.single) {
            this.w.setText(R.string.net_sim_location_set);
            this.u.setVisibility(8);
        } else {
            this.w.setText(getString(R.string.net_card1) + getString(R.string.net_sim_location_set));
            this.x.setText(getString(R.string.net_card2) + getString(R.string.net_sim_location_set));
        }
        this.o.setVisibility(0);
        this.p.setVisibility(0);
        if (this.N == a.single) {
            this.q.setVisibility(8);
        } else if (!TextUtils.isEmpty(this.K.sim1IMSI) || !TextUtils.isEmpty(this.K.sim2IMSI)) {
            if (TextUtils.isEmpty(this.K.sim1IMSI)) {
                this.p.setVisibility(8);
            }
            if (TextUtils.isEmpty(this.K.sim2IMSI)) {
                this.q.setVisibility(8);
            }
        } else {
            this.p.setVisibility(8);
            this.q.setVisibility(8);
        }
        a();
        if (this.L == null) {
            this.L = new b(this, (byte) 0);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.lenovo.safecenter.flowrefresh");
        registerReceiver(this.L, intentFilter);
    }

    private class b extends BroadcastReceiver {
        private b() {
        }

        /* synthetic */ b(NetSetting x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (SaveData.get_flow_status(NetSetting.this.A)) {
                NetSetting.this.b.setChecked(true);
                NetSetting.this.M.setVisibility(0);
                return;
            }
            NetSetting.this.b.setChecked(false);
            NetSetting.this.M.setVisibility(8);
        }
    }

    private void a() {
        String package1 = Const.getMonthLimitTraffic();
        String package2 = Const.getMonthLimitTraffic2();
        if (this.N == a.single) {
            this.r.setVisibility(0);
            this.s.setVisibility(4);
            this.u.setVisibility(8);
            this.r.setText(Formatter.formatFileSize(this, Const.getMonthUsedTraffic()));
            Log.i("s3", "month used =" + Const.getMonthUsedTraffic());
            if (TextUtils.isEmpty(this.K.sim1IMSI) && this.P == 10) {
                this.e.setText(R.string.net_simcard_error4);
            } else if ("-1".equals(package1)) {
                this.e.setText(R.string.no_setting_text);
            } else {
                this.e.setText(package1 + getString(R.string.net_m));
            }
            this.f.setVisibility(4);
        } else {
            d();
            if ("-1".equals(package1) && "-1".equals(package2)) {
                this.e.setText(R.string.no_setting_text);
                this.f.setVisibility(4);
                this.g.setText(getString(R.string.net_card1) + getString(R.string.no_open));
                this.h.setText(getString(R.string.net_card2) + getString(R.string.no_open));
            } else if ("-1".equals(package1) && !"-1".equals(package2)) {
                this.e.setText(getString(R.string.net_card3) + getString(R.string.no_setting_text));
                this.f.setVisibility(0);
                this.f.setText(getString(R.string.net_card4) + package2 + getString(R.string.net_m));
                this.g.setText(getString(R.string.net_card1) + getString(R.string.no_open));
                if (Const.getIsNetMonthFreeNoticeOn2()) {
                    this.h.setText(getString(R.string.net_card2) + getString(R.string.open));
                } else {
                    this.h.setText(getString(R.string.net_card2) + getString(R.string.no_open));
                }
            } else if ("-1".equals(package1) || !"-1".equals(package2)) {
                this.e.setText(getString(R.string.net_card3) + package1 + getString(R.string.net_m));
                this.f.setVisibility(0);
                this.f.setText(getString(R.string.net_card4) + package2 + getString(R.string.net_m));
                if (Const.getIsNetMonthFreeNoticeOn1()) {
                    this.g.setText(getString(R.string.net_card1) + getString(R.string.open));
                } else {
                    this.g.setText(getString(R.string.net_card1) + getString(R.string.no_open));
                }
                if (Const.getIsNetMonthFreeNoticeOn2()) {
                    this.h.setText(getString(R.string.net_card2) + getString(R.string.open));
                } else {
                    this.h.setText(getString(R.string.net_card2) + getString(R.string.no_open));
                }
            } else {
                this.e.setText(getString(R.string.net_card3) + package1 + getString(R.string.net_m));
                this.f.setVisibility(0);
                this.f.setText(getString(R.string.net_card4) + getString(R.string.no_setting_text));
                if (Const.getIsNetMonthFreeNoticeOn1()) {
                    this.g.setText(getString(R.string.net_card1) + getString(R.string.open));
                } else {
                    this.g.setText(getString(R.string.net_card1) + getString(R.string.no_open));
                }
                this.h.setText(getString(R.string.net_card2) + getString(R.string.no_open));
            }
            if (!TextUtils.isEmpty(this.K.sim1IMSI) || !TextUtils.isEmpty(this.K.sim2IMSI)) {
                if (TextUtils.isEmpty(this.K.sim1IMSI)) {
                    boolean flag = "-1".equals(package2);
                    this.e.setText(this.R + (flag ? getString(R.string.no_setting_text) : package2 + getString(R.string.net_m)));
                    this.f.setVisibility(4);
                    if (Const.getIsNetMonthFreeNoticeOn2()) {
                        this.g.setText(this.R + getString(R.string.open));
                    } else {
                        this.g.setText(this.R + getString(R.string.no_open));
                    }
                    if (flag) {
                        this.g.setText(this.R + getString(R.string.no_open));
                    }
                    this.h.setVisibility(4);
                }
                if (TextUtils.isEmpty(this.K.sim2IMSI)) {
                    boolean flag2 = "-1".equals(package1);
                    this.e.setText(this.Q + ("-1".equals(package1) ? getString(R.string.no_setting_text) : package1 + getString(R.string.net_m)));
                    this.f.setVisibility(4);
                    if (Const.getIsNetMonthFreeNoticeOn1()) {
                        this.g.setText(this.Q + getString(R.string.open));
                    } else {
                        this.g.setText(this.Q + getString(R.string.no_open));
                    }
                    if (flag2) {
                        this.g.setText(this.Q + getString(R.string.no_open));
                    }
                    this.h.setVisibility(4);
                }
            } else {
                this.e.setText(R.string.net_simcard_error4);
                this.f.setVisibility(4);
                this.g.setText(R.string.no_open);
                this.h.setVisibility(4);
            }
        }
        long mDailyNotice = Const.getNetEverydayLimit();
        if (mDailyNotice == -1) {
            this.i.setText(R.string.no_setting_text);
        } else {
            this.i.setText(mDailyNotice + getString(R.string.net_m));
        }
        c();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        try {
            this.y.setText(TrafficStatsService.getSIMCarryInfo(0, this).toString());
        } catch (Exception e2) {
            e2.printStackTrace();
            this.y.setText(R.string.no_setting_text);
        }
        try {
            this.z.setText(TrafficStatsService.getSIMCarryInfo(1, this).toString());
        } catch (Exception e3) {
            e3.printStackTrace();
            this.z.setText(R.string.no_setting_text);
        }
        if (SaveData.get_flow_status(this.A)) {
            this.b.setChecked(true);
            this.M.setVisibility(0);
        } else {
            this.b.setChecked(false);
            this.M.setVisibility(8);
        }
        if (SaveData.get_flow_immove_state(this.A)) {
            this.d.setChecked(true);
        } else {
            this.d.setChecked(false);
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void onClick(View v2) {
        switch (v2.getId()) {
            case R.id.title_back:
                finish();
                return;
            case R.id.monthLimitTrafficLayout:
                DoubleCardUtil.createSettingNumberDialog(this, this, 6);
                return;
            case R.id.net_sim1_location:
                NetCache.setNetSettingHandler(this.mHandler);
                a(0);
                return;
            case R.id.net_sim2_location:
                NetCache.setNetSettingHandler(this.mHandler);
                a(1);
                return;
            case R.id.net_traffic_correct_regular_parent:
                if (!TextUtils.isEmpty(this.K.sim1IMSI) || !TextUtils.isEmpty(this.K.sim2IMSI)) {
                    this.H = LayoutInflater.from(this).inflate(R.layout.net_traffic_correct_cycle, (ViewGroup) null);
                    LinearLayout linearLayout = (LinearLayout) this.H.findViewById(R.id.net_sim_parent);
                    LinearLayout linearLayout2 = (LinearLayout) this.H.findViewById(R.id.net_sim2_parent);
                    TextView textView = (TextView) this.H.findViewById(R.id.net_traffic_auto_correct_sim1_title);
                    this.B = (CheckedTextView) this.H.findViewById(R.id.net_card_radio_week_sim1);
                    this.C = (CheckedTextView) this.H.findViewById(R.id.net_card_radio_week_sim2);
                    this.D = (CheckedTextView) this.H.findViewById(R.id.net_card_radio_ten_sim1);
                    this.E = (CheckedTextView) this.H.findViewById(R.id.net_card_radio_ten_sim2);
                    this.F = (CheckedTextView) this.H.findViewById(R.id.net_card_radio_cancel_sim1);
                    this.G = (CheckedTextView) this.H.findViewById(R.id.net_card_radio_cancel_sim2);
                    if (this.N == a.single) {
                        textView.setVisibility(8);
                        linearLayout2.setVisibility(8);
                        this.C.setVisibility(8);
                        this.E.setVisibility(8);
                        this.G.setVisibility(8);
                    } else {
                        if (TextUtils.isEmpty(this.K.sim1IMSI)) {
                            linearLayout.setVisibility(8);
                        }
                        if (TextUtils.isEmpty(this.K.sim2IMSI)) {
                            linearLayout2.setVisibility(8);
                        }
                    }
                    Log.i("4.1", "sim1 correct = " + Const.getNetCorrectCycle() + ",sim2 correct =" + Const.getNetCorrectCycle2());
                    if (Const.getNetCorrectCycle() == 0) {
                        this.B.setChecked(true);
                    } else if (Const.getNetCorrectCycle() == 1) {
                        this.D.setChecked(true);
                    } else {
                        this.F.setChecked(true);
                    }
                    if (Const.getNetCorrectCycle2() == 0) {
                        this.C.setChecked(true);
                    } else if (Const.getNetCorrectCycle2() == 1) {
                        this.E.setChecked(true);
                    } else {
                        this.G.setChecked(true);
                    }
                    this.I = Const.getNetCorrectCycle();
                    this.J = Const.getNetCorrectCycle2();
                    this.B.setOnClickListener(this.X);
                    this.D.setOnClickListener(this.X);
                    this.F.setOnClickListener(this.X);
                    this.C.setOnClickListener(this.Y);
                    this.E.setOnClickListener(this.Y);
                    this.G.setOnClickListener(this.Y);
                    CustomDialog.Builder builder = new CustomDialog.Builder(this);
                    builder.setTitle(R.string.net_auto_correct_traffic_set_time);
                    builder.setContentView(this.H);
                    builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                        /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass4 */

                        public final void onClick(DialogInterface dialog, int which) {
                            Log.i("4.1", "int 1 =" + NetSetting.this.I + ",int 2 =" + NetSetting.this.J);
                            if (NetSetting.this.N == a.single) {
                                Const.setNetCorrectCycle(NetSetting.this.I);
                                TrafficStatsService.startAutoTrafficCorrectSim1(NetSetting.this.A);
                            } else {
                                Const.setNetCorrectCycle(NetSetting.this.I);
                                Const.setNetCorrectCycle2(NetSetting.this.J);
                                TrafficStatsService.startAutoTrafficCorrectSim1(NetSetting.this.A);
                                TrafficStatsService.startAutoTrafficCorrectSim2(NetSetting.this.A);
                            }
                            NetSetting.this.c();
                        }
                    });
                    builder.show();
                    return;
                }
                Toast.makeText(this, (int) R.string.net_simcard_error3, 1).show();
                return;
            case R.id.traffic_sms_check_Layout:
                DoubleCardUtil.createSettingFloatDialog(this, this, 4);
                return;
            case R.id.net_month_free_click:
                DoubleCardUtil.createSettingCheckBoxDialog(this, this, 5);
                return;
            case R.id.dailyLimitTrafficLayout:
                DoubleCardUtil.createSettingNumberDialog2(this, this, 1, null);
                return;
            default:
                return;
        }
    }

    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        int id = buttonView.getId();
        if (id == R.id.net_monthfree_single_switch) {
            if (!isChecked || !"-1".equals(Const.getMonthLimitTraffic())) {
                Const.setIsNetMonthFreeNoticeOn1(isChecked);
            } else {
                DoubleCardUtil.createSettingNumberDialog(this, this, 7);
                if (NetCache.traffic_mode == 10 && TextUtils.isEmpty(WflUtils.getActiveSubscriberId(this))) {
                    this.a.setChecked(false);
                    Const.setIsNetMonthFreeNoticeOn1(false);
                }
            }
        }
        if (id == R.id.net_traffic_window_switch) {
            if (isChecked) {
                if (SecurityService.instance != null) {
                    SecurityService.instance.setFlowVisibility(0);
                }
                this.M.setVisibility(0);
                SaveData.save_flow_status(this, true);
                TrackEvent.reportTrafficFloatwindowSwitchChanged(true);
            } else {
                if (SecurityService.instance != null) {
                    SecurityService.instance.setFlowVisibility(8);
                }
                this.M.setVisibility(8);
                SaveData.save_flow_status(this, false);
                TrackEvent.reportTrafficFloatwindowSwitchChanged(false);
            }
        }
        if (id == R.id.net_traffic_window_fixed_switch) {
            if (isChecked) {
                if (SecurityService.instance != null) {
                    SecurityService.instance.setFlowIsFixed(true);
                }
                SaveData.save_flow_immove_state(this, true);
            } else {
                if (SecurityService.instance != null) {
                    SecurityService.instance.setFlowIsFixed(false);
                }
                SaveData.save_flow_immove_state(this, false);
            }
        }
        if (id == R.id.net_traffic_auto_deny_checkbox) {
            TrafficStatsService.setIsAutoDeny(this.A, isChecked);
            TrackEvent.reportTrafficOutLimitDisableNetSwitchChanged(isChecked);
        }
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener2
    public void onSettingNumberDialogOK(int[] number, int flag) {
        if (this.N == a.muti) {
            if (!TextUtils.isEmpty(this.K.sim1IMSI)) {
                Const.setMonthLimitTraffic(String.valueOf(number[0]));
            }
            if (!TextUtils.isEmpty(this.K.sim2IMSI)) {
                Const.setMonthLimitTraffic2(String.valueOf(number[1]));
            }
        } else {
            if (TrafficStatsService.getTrafficMode(this.A) == 13) {
                Const.setMonthLimitTraffic(String.valueOf(number[0]));
            } else if (!TextUtils.isEmpty(WflUtils.getActiveSubscriberId(this))) {
                Const.setMonthLimitTraffic(String.valueOf(number[0]));
            }
            if (number[0] == -1) {
                this.a.setChecked(false);
                Const.setIsNetMonthFreeNoticeOn1(false);
            }
        }
        if (flag == 7) {
            if (number[0] == -1) {
                this.a.setChecked(false);
                Const.setIsNetMonthFreeNoticeOn1(false);
            } else {
                this.a.setChecked(true);
                Const.setIsNetMonthFreeNoticeOn1(true);
            }
        }
        TrafficStatsService.statsTrafficMobile(this.A);
        a();
        b();
    }

    private static void b() {
        if (Const.trafficHandler != null) {
            Const.trafficHandler.sendEmptyMessage(5);
        }
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener1
    public void onSettingNumberDialogOK(int number, int id, int postion) {
        switch (id) {
            case 1:
                Log.i("4.1", "number = " + number);
                Const.setNetEverydayLimit((long) number);
                if (number == -1) {
                    this.i.setText(R.string.no_setting_text);
                    return;
                } else {
                    this.i.setText(number + getString(R.string.net_m));
                    return;
                }
            case 2:
                if (postion == 1) {
                    Const.setMonthLimitTraffic(String.valueOf(number));
                }
                if (postion == 2) {
                    Const.setMonthLimitTraffic2(String.valueOf(number));
                }
                TrafficStatsService.statsTrafficMobile(this.A);
                a();
                b();
                return;
            case 3:
            case 4:
            default:
                return;
            case 5:
                a();
                return;
        }
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener1
    public void onSettingNumberDialogCancel(int number) {
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingFloatNumberDialogListener
    public void onSettingFloatNumberDialogOK(int id, Float[] number) {
        TrafficStatsService mAppDatabase = TrafficStatsService.getInstance(this.A);
        if (!(((float) Const.getMonthUsedTraffic()) == number[0].floatValue() || number[0].floatValue() == -1.0f)) {
            DoubleCardUtil.checkTraffic(number[0], mAppDatabase, this.A, 0);
        }
        if (!(((float) Const.getMonthUsedTraffic2()) == number[1].floatValue() || number[1].floatValue() == -1.0f)) {
            DoubleCardUtil.checkTraffic(number[1], mAppDatabase, this.A, 1);
        }
        d();
        b();
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingFloatNumberDialogListener
    public void onSettingFloatNumberDialogCancel(int id, Float[] number) {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void c() {
        int correct1 = Const.getNetCorrectCycle();
        int correct2 = Const.getNetCorrectCycle2();
        a(correct1, "SIM1:");
        if (correct2 == 0) {
            this.u.setText("SIM2:" + getString(R.string.net_week));
        } else if (correct2 == 1) {
            this.u.setText("SIM2:" + getString(R.string.net_every_ten));
        } else {
            this.u.setText("SIM2:" + getString(R.string.net_cancel));
        }
        if (this.P != 12) {
            this.u.setVisibility(4);
        } else if (TextUtils.isEmpty(this.K.sim1IMSI) && TextUtils.isEmpty(this.K.sim2IMSI)) {
            this.t.setText(R.string.net_simcard_error4);
            this.u.setVisibility(4);
        } else if (TextUtils.isEmpty(this.K.sim1IMSI)) {
            a(correct2, "SIM2:");
            this.u.setVisibility(4);
        } else if (TextUtils.isEmpty(this.K.sim2IMSI)) {
            this.u.setVisibility(4);
        } else {
            this.t.setVisibility(0);
            this.u.setVisibility(0);
        }
        if (correct1 == 2 && correct2 == 2) {
            this.t.setText(R.string.net_cancel);
            this.u.setVisibility(4);
        }
    }

    private void a(int correct, String sim) {
        if (correct == 0) {
            if (TrafficStatsService.getTrafficMode(this.A) == 12) {
                this.t.setText(sim + getString(R.string.net_week));
            } else {
                this.t.setText(getString(R.string.net_week));
            }
        } else if (correct == 1) {
            if (TrafficStatsService.getTrafficMode(this.A) == 12) {
                this.t.setText(sim + getString(R.string.net_every_ten));
            } else {
                this.t.setText(getString(R.string.net_every_ten));
            }
        } else if (TrafficStatsService.getTrafficMode(this.A) == 12) {
            this.t.setText(sim + getString(R.string.net_cancel));
        } else {
            this.t.setText(getString(R.string.net_cancel));
        }
    }

    private void d() {
        if (this.P == 12) {
            if (TextUtils.isEmpty(this.K.sim1IMSI) && TextUtils.isEmpty(this.K.sim2IMSI)) {
                this.r.setText(R.string.net_simcard_error4);
                this.s.setVisibility(4);
            } else if (TextUtils.isEmpty(this.K.sim1IMSI)) {
                this.r.setText(this.R + Formatter.formatFileSize(this, Const.getMonthUsedTraffic2()));
            } else if (TextUtils.isEmpty(this.K.sim2IMSI)) {
                this.r.setText(this.Q + Formatter.formatFileSize(this, Const.getMonthUsedTraffic()));
            } else {
                this.r.setVisibility(0);
                this.s.setVisibility(0);
                this.r.setText(this.Q + Formatter.formatFileSize(this, Const.getMonthUsedTraffic()));
                this.s.setText(this.R + Formatter.formatFileSize(this, Const.getMonthUsedTraffic2()));
            }
        } else if (this.P == 10) {
            if (TextUtils.isEmpty(WflUtils.getActiveSubscriberId(this))) {
                this.r.setText(R.string.net_simcard_error4);
            } else {
                this.r.setText(Formatter.formatFileSize(this, Const.getMonthUsedTraffic()));
            }
            this.s.setVisibility(0);
        } else {
            this.r.setText(Formatter.formatFileSize(this, Const.getMonthUsedTraffic()));
        }
    }

    @Override // com.lenovo.safecenter.net.doublemode.DoubleCardUtil.SettingNumberDialogListener2
    public void onSettingNumberDialogCancel(int[] number, int flag) {
        if (flag == 7 && TrafficStatsService.getTrafficMode(this.A) != 12) {
            this.a.setChecked(false);
            Const.setIsNetMonthFreeNoticeOn1(false);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.L);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(final int card) {
        PhoneSimInfo info = TrafficStatsService.getImsiInfo(this);
        if (card == 0) {
            if (TextUtils.isEmpty(info.sim1IMSI)) {
                if (TrafficStatsService.getTrafficMode(this) != 13 || !MyMultiSIMUtils.isMultiSim(this) || TextUtils.isEmpty(info.sim2IMSI)) {
                    Toast.makeText(this, (int) R.string.net_simcard_error2, 1).show();
                    return;
                } else {
                    Toast.makeText(this, (int) R.string.net_error_code12, 1).show();
                    return;
                }
            }
        } else if (TextUtils.isEmpty(info.sim2IMSI)) {
            Toast.makeText(this, (int) R.string.net_simcard_error2, 1).show();
            return;
        }
        if (card == 0) {
            this.V = getSharedPreferences(Utils.SIM1_PROPERTIES, 0);
        } else {
            this.V = getSharedPreferences(Utils.SIM2_PROPERTIES, 0);
        }
        boolean codeHasChanged = "".equals(this.V.getString(Utils.SMS_MESSAGE, "")) || "".equals(this.V.getString(Utils.SMS_ADDRESS, ""));
        if (this.V.getBoolean(Utils.CONFIG_HAS_SETTED, false) || !codeHasChanged) {
            this.U = card;
            View view = LayoutInflater.from(this).inflate(R.layout.net_traffic_correct_info_set, (ViewGroup) null);
            ((RelativeLayout) view.findViewById(R.id.net_correct_sim_info_title)).setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass5 */

                public final void onClick(View v) {
                    NetCache.setNetSettingHandler(NetSetting.this.mHandler);
                    TrafficStatsService.startIntent2TrafficCorrect(card, NetSetting.this.A, 1);
                }
            });
            this.W = (TextView) view.findViewById(R.id.net_correct_sim_info_summary);
            this.S = (EditText) view.findViewById(R.id.net_correct_sms_content);
            this.T = (EditText) view.findViewById(R.id.net_correct_sms_number);
            this.S.setText(this.V.getString(Utils.SMS_MESSAGE, ""));
            this.T.setText(this.V.getString(Utils.SMS_ADDRESS, ""));
            ((TextView) view.findViewById(R.id.net_query_correct_text)).setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass6 */

                public final void onClick(View v) {
                    if (!WflUtils.isNetworkAvailable(NetSetting.this.A)) {
                        Toast.makeText(NetSetting.this.A, (int) R.string.net_correct_update_config_net_error, 0).show();
                        return;
                    }
                    NetSetting.d(NetSetting.this, card);
                    Toast.makeText(NetSetting.this.A, (int) R.string.net_correct_update_config_progress, 0).show();
                }
            });
            StringBuilder sb = new StringBuilder();
            sb.append(getString(R.string.net_correct_limit_type)).append("  ").append(this.V.getString(Utils.CITY_DESC, CookiePolicy.DEFAULT)).append(",").append(this.V.getString(Utils.CARRY_DESC, CookiePolicy.DEFAULT));
            this.W.setText(sb.toString());
            CustomDialog.Builder builder = new CustomDialog.Builder(this);
            builder.setContentView(view);
            builder.setColorNegativeButton(false);
            builder.setColorPositiveButton(true);
            builder.setTitle(R.string.net_traffic_sms_query_config_set);
            builder.setPositiveButton(R.string.save, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass7 */

                public final void onClick(DialogInterface dialog, int which) {
                    String content = NetSetting.this.S.getText().toString();
                    String address = NetSetting.this.T.getText().toString();
                    if (content == null || "".equals(content) || address == null || "".equals(address)) {
                        Toast.makeText(NetSetting.this.A, (int) R.string.net_correct_update_config_input_null_error, 0).show();
                        return;
                    }
                    NetSetting.this.V.edit().putString(Utils.SMS_MESSAGE, content).commit();
                    NetSetting.this.V.edit().putString(Utils.SMS_ADDRESS, address).commit();
                }
            });
            builder.setNegativeButton(R.string.net_correct_cancel, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.net.doublemode.NetSetting.AnonymousClass8 */

                public final void onClick(DialogInterface dialog, int which) {
                }
            });
            if (!isFinishing()) {
                builder.show();
                return;
            }
            return;
        }
        Intent mIntent = new Intent(this, TrafficCorrectSetting.class);
        mIntent.putExtra("card", card);
        mIntent.putExtra("correct_type", 1);
        startActivity(mIntent);
    }
}
