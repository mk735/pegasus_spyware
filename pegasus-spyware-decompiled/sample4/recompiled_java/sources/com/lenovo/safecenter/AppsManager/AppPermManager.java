package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AppPermManager extends Activity implements View.OnClickListener {
    public static final int CHANGE_BACKGROUND = 8;
    private TextView A;
    private RelativeLayout[] B;
    private View C;
    private LinearLayout D;
    private LinearLayout E;
    private LinearLayout F;
    private String G;
    private String[] H;
    private String[] I;
    private List<String> J;
    private List<SafeLog> K;
    private String L;
    private String M;
    private String N;
    private String O;
    private String P;
    private String Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private int Z;
    private AppDatabase a;
    private Handler aa = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    try {
                        AppPermManager.this.C.setVisibility(8);
                        if (((String) AppPermManager.this.J.get(AppPermManager.this.Z)).equals("0")) {
                            AppPermManager.this.d[AppPermManager.this.Z].setText(AppPermManager.this.O + AppPermManager.this.I[AppPermManager.this.Z]);
                            AppPermManager.this.e[AppPermManager.this.Z].setBackgroundResource(R.drawable.perm_grant);
                            return;
                        } else if (((String) AppPermManager.this.J.get(AppPermManager.this.Z)).equals(DatabaseTables.SYSTEM_MARK)) {
                            AppPermManager.this.d[AppPermManager.this.Z].setText(AppPermManager.this.P + AppPermManager.this.I[AppPermManager.this.Z]);
                            AppPermManager.this.e[AppPermManager.this.Z].setBackgroundResource(R.drawable.perm_deny);
                            return;
                        } else if (((String) AppPermManager.this.J.get(AppPermManager.this.Z)).equals(DatabaseTables.USER_MARK)) {
                            AppPermManager.this.d[AppPermManager.this.Z].setText(AppPermManager.this.Q + AppPermManager.this.I[AppPermManager.this.Z]);
                            AppPermManager.this.e[AppPermManager.this.Z].setBackgroundResource(R.drawable.perm_prompt);
                            return;
                        } else {
                            return;
                        }
                    } catch (Exception e1) {
                        e1.printStackTrace();
                        return;
                    }
                case 1:
                    if (!AppPermManager.this.X) {
                        MyUtils.alert(AppPermManager.this, R.string.error, AppPermManager.this.getString(R.string.info_failed));
                        return;
                    } else if (((String) AppPermManager.this.J.get(AppPermManager.this.Z)).equals("0")) {
                        AppPermManager.this.i.setText(AppPermManager.this.O + AppPermManager.this.I[AppPermManager.this.Z]);
                        AppPermManager.this.t.setBackgroundResource(R.drawable.perm_grant);
                        return;
                    } else {
                        AppPermManager.this.i.setText(AppPermManager.this.P + AppPermManager.this.I[AppPermManager.this.Z]);
                        AppPermManager.this.t.setBackgroundResource(R.drawable.perm_deny);
                        return;
                    }
                case 2:
                    try {
                        if (AppPermManager.this.V) {
                            AppPermManager.this.y.setBackgroundResource(R.drawable.btn_on);
                            AppPermManager.this.C.setVisibility(8);
                            AppPermManager.o(AppPermManager.this);
                            TrackEvent.reportTrustApp(AppPermManager.this.M);
                            return;
                        }
                        AppPermManager.this.y.setBackgroundResource(R.drawable.btn_off);
                        AppPermManager.this.C.setVisibility(8);
                        AppPermManager.o(AppPermManager.this);
                        return;
                    } catch (Exception e12) {
                        e12.printStackTrace();
                        return;
                    }
                case 3:
                    for (int i = 0; i < AppPermManager.this.H.length; i++) {
                        try {
                            if (!AppPermManager.this.H[i].equals(AppDatabase.DB_APP_INTERNET)) {
                                AppPermManager.this.d[i].setText(AppPermManager.this.O + AppPermManager.this.I[i]);
                                AppPermManager.this.e[i].setBackgroundResource(R.drawable.perm_grant);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                    return;
                case 4:
                    for (int i2 = 0; i2 < AppPermManager.this.H.length; i2++) {
                        try {
                            if (!AppPermManager.this.H[i2].equals(AppDatabase.DB_APP_INTERNET)) {
                                AppPermManager.this.d[i2].setText(AppPermManager.this.P + AppPermManager.this.I[i2]);
                                AppPermManager.this.e[i2].setBackgroundResource(R.drawable.perm_deny);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                    return;
                case 5:
                    if (AppPermManager.this.x.getVisibility() == 8) {
                        AppPermManager.this.x.setVisibility(0);
                        return;
                    } else {
                        AppPermManager.this.x.setVisibility(8);
                        return;
                    }
                case 6:
                    if (msg.arg1 == 2) {
                        try {
                            AppPermManager.this.c.dismiss();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                        Toast.makeText(AppPermManager.this, (int) R.string.localblack_successNotice, 0).show();
                        AppPermManager.this.a.updateApp_isupload(AppPermManager.this.M, 1);
                        AppPermManager.this.u.setText(R.string.hadupload_log);
                        AppPermManager.this.u.setEnabled(false);
                        return;
                    } else if (msg.arg1 == 3) {
                        try {
                            AppPermManager.this.c.dismiss();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        Toast.makeText(AppPermManager.this, (int) R.string.neterror, 0).show();
                        AppPermManager.this.u.setEnabled(true);
                        return;
                    } else {
                        return;
                    }
                case 7:
                    try {
                        AppPermManager.this.C.setVisibility(8);
                        for (int i3 = 0; i3 < AppPermManager.this.H.length; i3++) {
                            if (((String) AppPermManager.this.J.get(i3)).equals("0")) {
                                AppPermManager.this.d[i3].setText(AppPermManager.this.O + AppPermManager.this.I[i3]);
                                AppPermManager.this.e[i3].setBackgroundResource(R.drawable.perm_grant);
                            } else if (((String) AppPermManager.this.J.get(i3)).equals(DatabaseTables.SYSTEM_MARK)) {
                                AppPermManager.this.d[i3].setText(AppPermManager.this.P + AppPermManager.this.I[i3]);
                                AppPermManager.this.e[i3].setBackgroundResource(R.drawable.perm_deny);
                            } else if (((String) AppPermManager.this.J.get(i3)).equals(DatabaseTables.USER_MARK)) {
                                AppPermManager.this.d[i3].setText(AppPermManager.this.Q + AppPermManager.this.I[i3]);
                                AppPermManager.this.e[i3].setBackgroundResource(R.drawable.perm_prompt);
                            }
                        }
                        return;
                    } catch (Exception e13) {
                        e13.printStackTrace();
                        return;
                    }
                case 8:
                    AppPermManager.this.z.setVisibility(8);
                    AppPermManager.this.A.setVisibility(0);
                    return;
                default:
                    return;
            }
        }
    };
    private a b;
    private ProgressDialog c;
    private TextView[] d;
    private ImageView[] e;
    private int[] f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private ImageView s;
    private ImageView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private LinearLayout x;
    private ImageView y;
    private TextView z;

    static /* synthetic */ void E(AppPermManager x0) {
        for (int i2 = 0; i2 < x0.K.size(); i2++) {
            SafeLog safeLog = x0.K.get(i2);
            View inflate = LayoutInflater.from(x0).inflate(R.layout.new_loglist_item, (ViewGroup) null);
            inflate.setBackgroundResource(R.drawable.setting_list_normal);
            ((TextView) inflate.findViewById(R.id.log_time)).setVisibility(8);
            ((LinearLayout) inflate.findViewById(R.id.event_layout)).setVisibility(8);
            TextView textView = (TextView) inflate.findViewById(R.id.event_title);
            if (safeLog.logSelected == 1) {
                textView.setText(x0.getString(R.string.when_calling) + AppUtil.getDescriptionByPid(x0, Integer.valueOf(safeLog.type).intValue()));
            } else {
                textView.setText(AppUtil.getDescriptionByPid(x0, Integer.valueOf(safeLog.type).intValue()));
            }
            ((TextView) inflate.findViewById(R.id.event_timestamp)).setText(x0.getString(R.string.last_time) + MyUtils.formatTime(safeLog.time, x0));
            if (safeLog.number == null) {
                ((TextView) inflate.findViewById(R.id.event_package)).setVisibility(8);
            } else {
                ((TextView) inflate.findViewById(R.id.event_package)).setText(safeLog.number);
            }
            if (safeLog.action == 0) {
                ((TextView) inflate.findViewById(R.id.event_action)).setText(x0.getString(R.string.allow_total) + "  " + safeLog.id + x0.getString(R.string.times));
                ((TextView) inflate.findViewById(R.id.event_action)).setTextColor(x0.getResources().getColor(R.color.green_allow));
            } else {
                ((TextView) inflate.findViewById(R.id.event_action)).setText(x0.getString(R.string.forbid_total) + "  " + safeLog.id + x0.getString(R.string.times));
                ((TextView) inflate.findViewById(R.id.event_action)).setTextColor(x0.getResources().getColor(R.color.red_forbid));
            }
            x0.x.addView(inflate);
        }
        x0.U = true;
    }

    static /* synthetic */ void H(AppPermManager x0) {
        x0.c = new ProgressDialog(x0);
        x0.c.setOnDismissListener(new DialogInterface.OnDismissListener() {
            /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass8 */

            public final void onDismiss(DialogInterface dialog) {
                AppPermManager.this.c = null;
            }
        });
        x0.c.setProgressStyle(0);
        x0.c.setMessage(x0.getString(R.string.exec_state));
        x0.c.show();
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass7 */

            public final void run() {
                SafeLog log = (SafeLog) AppPermManager.this.K.get(0);
                String type = log.type;
                if (type.equals("0") || type.equals(DatabaseTables.SYSTEM_MARK)) {
                    if (HttpUtils.reportTariffLog(AppPermManager.this.getBaseContext(), AppPermManager.this.M, log.type, log.appName, MyUtils.formatReportTime(log.time, AppPermManager.this.getBaseContext()), log.number, log.content) == 2) {
                        Message msg = AppPermManager.this.aa.obtainMessage(6);
                        msg.arg1 = 2;
                        AppPermManager.this.aa.sendMessage(msg);
                        return;
                    }
                    Message msg2 = AppPermManager.this.aa.obtainMessage(6);
                    msg2.arg1 = 3;
                    AppPermManager.this.aa.sendMessage(msg2);
                } else if (HttpUtils.reportPermissionLog(AppPermManager.this.getBaseContext(), AppPermManager.this.M, log.type, log.appName, MyUtils.formatReportTime(log.time, AppPermManager.this.getBaseContext())) == 2) {
                    Message msg3 = AppPermManager.this.aa.obtainMessage(6);
                    msg3.arg1 = 2;
                    AppPermManager.this.aa.sendMessage(msg3);
                } else {
                    Message msg4 = AppPermManager.this.aa.obtainMessage(6);
                    msg4.arg1 = 3;
                    AppPermManager.this.aa.sendMessage(msg4);
                }
            }
        }.start();
    }

    static /* synthetic */ void a(AppPermManager x0, int x1, int x2, int x3, int x4) {
        x0.B[x1] = (RelativeLayout) x0.findViewById(x2);
        x0.d[x1] = (TextView) x0.findViewById(x3);
        x0.e[x1] = (ImageView) x0.findViewById(x4);
        x0.B[x1].setVisibility(0);
        x0.e[x1].setVisibility(0);
        x0.B[x1].setOnClickListener(x0);
        x0.e[x1].setOnClickListener(x0);
        if (!x0.T) {
            x0.d[x1].setText(x0.O + x0.I[x1]);
            x0.e[x1].setBackgroundResource(R.drawable.perm_grant);
        } else if (x0.J.get(x1).equals("0")) {
            x0.d[x1].setText(x0.O + x0.I[x1]);
            x0.e[x1].setBackgroundResource(R.drawable.perm_grant);
        } else if (x0.J.get(x1).equals(DatabaseTables.SYSTEM_MARK)) {
            x0.d[x1].setText(x0.P + x0.I[x1]);
            x0.e[x1].setBackgroundResource(R.drawable.perm_deny);
        } else if (x0.J.get(x1).equals(DatabaseTables.USER_MARK)) {
            x0.d[x1].setText(x0.Q + x0.I[x1]);
            x0.e[x1].setBackgroundResource(R.drawable.perm_prompt);
        }
    }

    static /* synthetic */ void a(AppPermManager x0, TextView x1, int x2) {
        if (x2 == 0) {
            x1.setVisibility(0);
            x1.setTextColor(x0.getResources().getColor(R.color.green_allow));
            x1.setText(R.string.suggest_allow);
        } else if (x2 == 1) {
            x1.setVisibility(0);
            x1.setTextColor(x0.getResources().getColor(R.color.red_forbid));
            x1.setText(R.string.suggest_forbid);
        } else {
            x1.setVisibility(4);
        }
    }

    static /* synthetic */ void o(AppPermManager x0) {
        int i2 = 0;
        try {
            if (!x0.W) {
                x0.j.setText(x0.getString(R.string.anti_tariff_closed) + x0.getString(R.string.anti_tariff_perm) + x0.getString(R.string.perm_control_fail));
            } else {
                x0.j.setText(R.string.tariff_perm_manage);
            }
            if (!x0.R) {
                x0.k.setText(x0.getString(R.string.anti_privacy_closed) + x0.getString(R.string.anti_privacy_perm) + x0.getString(R.string.perm_control_fail));
            } else {
                x0.k.setText(R.string.privacy_perm_manage);
            }
            if (x0.V) {
                x0.w.setText(R.string.full_trust);
            } else {
                x0.w.setText(R.string.real_time_monitor);
            }
            if (x0.V || (!x0.W && !x0.R)) {
                x0.a(x0.getResources().getColor(R.color.gray2));
                x0.b(x0.getResources().getColor(R.color.gray2));
                while (i2 < x0.H.length) {
                    x0.B[i2].setEnabled(false);
                    x0.e[i2].setClickable(false);
                    i2++;
                }
                return;
            }
            if (!x0.W) {
                x0.a(x0.getResources().getColor(R.color.gray2));
                for (int i3 = 0; i3 < x0.H.length; i3++) {
                    if (AppUtil.isTariffType(x0.H[i3])) {
                        x0.B[i3].setEnabled(false);
                        x0.e[i3].setClickable(false);
                    }
                }
            } else {
                x0.a(x0.getResources().getColor(R.color.black1));
                for (int i4 = 0; i4 < x0.H.length; i4++) {
                    if (AppUtil.isTariffType(x0.H[i4])) {
                        x0.B[i4].setEnabled(true);
                        x0.e[i4].setClickable(true);
                    }
                }
            }
            if (!x0.R) {
                x0.b(x0.getResources().getColor(R.color.gray2));
                while (i2 < x0.H.length) {
                    if (!AppUtil.isTariffType(x0.H[i2])) {
                        x0.B[i2].setEnabled(false);
                        x0.e[i2].setClickable(false);
                    }
                    i2++;
                }
                return;
            }
            x0.b(x0.getResources().getColor(R.color.black1));
            while (i2 < x0.H.length) {
                if (!AppUtil.isTariffType(x0.H[i2])) {
                    x0.B[i2].setEnabled(true);
                    x0.e[i2].setClickable(true);
                }
                i2++;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.apppermmanager);
        this.T = WflUtils.isRoot();
        this.L = getIntent().getStringExtra("permType");
        this.M = getIntent().getStringExtra(QueryPermissions.PACKAGENAME);
        this.N = getIntent().getStringExtra("from");
        this.O = getString(R.string.allow);
        this.P = getString(R.string.forbid);
        this.Q = getString(R.string.notify);
        this.g = (TextView) findViewById(R.id.txt_title);
        this.g.setText(R.string.appmandesc);
        ((ImageView) findViewById(R.id.title_set)).setVisibility(4);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass2 */

            public final void onClick(View v) {
                if (AppPermManager.this.S != AppPermManager.this.V) {
                    AppPermManager.this.setResult(4);
                } else {
                    AppPermManager.this.setResult(3);
                }
                AppPermManager.this.finish();
            }
        });
        this.h = (TextView) findViewById(R.id.perm_app_name);
        this.s = (ImageView) findViewById(R.id.perm_app_icon);
        this.j = (TextView) findViewById(R.id.tariff_group);
        this.k = (TextView) findViewById(R.id.privacy_group);
        this.l = (TextView) findViewById(R.id.app_no_log);
        this.i = (TextView) findViewById(R.id.txt_internet_state);
        this.t = (ImageView) findViewById(R.id.img_internet_state);
        this.y = (ImageView) findViewById(R.id.trust_app_switch);
        this.x = (LinearLayout) findViewById(R.id.recent_logs_layout);
        this.z = (TextView) findViewById(R.id.show_root_info);
        this.A = (TextView) findViewById(R.id.show_root_info_select);
        this.m = (TextView) findViewById(R.id.txt_internet_per);
        this.n = (TextView) findViewById(R.id.txt_sendsms_per);
        this.o = (TextView) findViewById(R.id.txt_call_per);
        this.p = (TextView) findViewById(R.id.txt_privacy_per);
        this.q = (TextView) findViewById(R.id.txt_location_per);
        this.r = (TextView) findViewById(R.id.txt_device_per);
        this.u = (TextView) findViewById(R.id.app_report);
        this.v = (TextView) findViewById(R.id.app_uninstall);
        this.w = (TextView) findViewById(R.id.perm_app_des);
        this.C = findViewById(R.id.send_msg_choose);
        this.D = (LinearLayout) findViewById(R.id.send_msg_allow);
        this.E = (LinearLayout) findViewById(R.id.send_msg_deny);
        this.F = (LinearLayout) findViewById(R.id.send_msg_tip);
        this.v.setOnClickListener(this);
        this.z.setVisibility(8);
        this.t.setOnClickListener(this);
        this.y.setOnClickListener(this);
        this.u.setOnClickListener(this);
        this.C.setOnClickListener(this);
        this.D.setOnClickListener(this);
        this.E.setOnClickListener(this);
        this.F.setOnClickListener(this);
        if (!this.T) {
            this.z.setVisibility(0);
        }
        this.a = new AppDatabase(this);
        PackageManager packageManager = getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(this.M, 8192);
            this.h.setText(applicationInfo.loadLabel(packageManager).toString());
            this.s.setBackgroundDrawable(applicationInfo.loadIcon(packageManager));
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        if (this.T) {
            this.V = this.a.isAppTrusted(this.M, this.L);
        }
        this.S = this.V;
        if (this.V) {
            this.y.setBackgroundResource(R.drawable.btn_on);
        } else {
            this.y.setBackgroundResource(R.drawable.btn_off);
        }
        initApps();
        this.b = new a(this, (byte) 0);
        IntentFilter filter = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        registerReceiver(this.b, filter);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.b);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            if (this.S != this.V) {
                setResult(4);
            } else {
                setResult(3);
            }
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    private void a(int color) {
        this.m.setTextColor(color);
        this.n.setTextColor(color);
        this.o.setTextColor(color);
    }

    private void b(int color) {
        this.p.setTextColor(color);
        this.q.setTextColor(color);
        this.r.setTextColor(color);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    public synchronized void initApps() {
        final Handler handler = new Handler() {
            /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass3 */

            public final void handleMessage(Message msg) {
                for (int i = 0; i < AppPermManager.this.H.length; i++) {
                    try {
                        if (AppPermManager.this.H[i].equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                            if (AppPermManager.this.j.getVisibility() != 0) {
                                AppPermManager.this.j.setVisibility(0);
                            }
                            AppPermManager.a(AppPermManager.this, i, R.id.perm_sendsms_layout, R.id.txt_sendsms_state, R.id.img_sendsms_state);
                            AppPermManager.a(AppPermManager.this, (TextView) AppPermManager.this.findViewById(R.id.sendsms_suggest), AppPermManager.this.f[i]);
                        } else if (AppPermManager.this.H[i].equals(AppDatabase.DB_APP_CALL)) {
                            if (AppPermManager.this.j.getVisibility() != 0) {
                                AppPermManager.this.j.setVisibility(0);
                            }
                            AppPermManager.a(AppPermManager.this, i, R.id.perm_call_layout, R.id.txt_call_state, R.id.img_call_state);
                            AppPermManager.a(AppPermManager.this, (TextView) AppPermManager.this.findViewById(R.id.call_suggest), AppPermManager.this.f[i]);
                        } else if (AppPermManager.this.H[i].equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                            if (AppPermManager.this.k.getVisibility() != 0) {
                                AppPermManager.this.k.setVisibility(0);
                            }
                            AppPermManager.a(AppPermManager.this, i, R.id.perm_privacy_layout, R.id.txt_privacy_state, R.id.img_privacy_state);
                            AppPermManager.a(AppPermManager.this, (TextView) AppPermManager.this.findViewById(R.id.privacy_suggest), AppPermManager.this.f[i]);
                        } else if (AppPermManager.this.H[i].equals("location")) {
                            if (AppPermManager.this.k.getVisibility() != 0) {
                                AppPermManager.this.k.setVisibility(0);
                            }
                            AppPermManager.a(AppPermManager.this, i, R.id.perm_location_layout, R.id.txt_location_state, R.id.img_location_state);
                            AppPermManager.a(AppPermManager.this, (TextView) AppPermManager.this.findViewById(R.id.location_suggest), AppPermManager.this.f[i]);
                        } else if (AppPermManager.this.H[i].equals(AppDatabase.PERM_TYPE_DEVICE)) {
                            if (AppPermManager.this.k.getVisibility() != 0) {
                                AppPermManager.this.k.setVisibility(0);
                            }
                            AppPermManager.a(AppPermManager.this, i, R.id.perm_device_layout, R.id.txt_device_state, R.id.img_device_state);
                            AppPermManager.a(AppPermManager.this, (TextView) AppPermManager.this.findViewById(R.id.device_suggest), AppPermManager.this.f[i]);
                        }
                        if (AppPermManager.this.K.size() == 0) {
                            AppPermManager.this.l.setVisibility(0);
                            AppPermManager.this.u.setEnabled(false);
                        } else {
                            AppPermManager.this.l.setVisibility(8);
                            if (AppPermManager.this.a.getApp_isupload(AppPermManager.this.M) == 0) {
                                AppPermManager.this.u.setEnabled(true);
                            } else {
                                AppPermManager.this.u.setText(R.string.hadupload_log);
                                AppPermManager.this.u.setEnabled(false);
                            }
                            if (!AppPermManager.this.U) {
                                AppPermManager.E(AppPermManager.this);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                AppPermManager.o(AppPermManager.this);
                if (AppPermManager.this.G.equals("")) {
                    AppPermManager.this.y.setVisibility(8);
                } else {
                    AppPermManager.this.y.setVisibility(0);
                }
            }
        };
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass4 */

            public final void run() {
                try {
                    AppPermManager.this.W = Const.getProtectTrafficSwitchState();
                    AppPermManager.this.R = Const.getProtectPeepSwitchState();
                    AppPermManager.this.Y = AppPermManager.this.a.getUid(AppPermManager.this.M);
                    AppPermManager.this.G = AppPermManager.this.a.queryAllPermType(AppPermManager.this.M, AppPermManager.this.L);
                    AppPermManager.this.H = AppPermManager.this.G.split(",");
                    int len = AppPermManager.this.H.length;
                    AppPermManager.this.J = new ArrayList(len);
                    AppPermManager.this.B = new RelativeLayout[len];
                    AppPermManager.this.d = new TextView[len];
                    AppPermManager.this.e = new ImageView[len];
                    AppPermManager.this.I = new String[len];
                    AppPermManager.this.f = new int[len];
                    HashMap<String, String> map = AppUtil.getAppPermissionConfigurs(AppPermManager.this.getContentResolver(), AppPermManager.this.M);
                    for (int i = 0; i < len; i++) {
                        AppPermManager.this.J.add(AppPermManager.this.a.queryPerEnable(AppPermManager.this.M, AppPermManager.this.H[i]));
                        AppPermManager.this.I[i] = AppPermManager.this.a.getAllPermDescription(AppPermManager.this.getBaseContext(), AppPermManager.this.M, AppPermManager.this.H[i]);
                        AppPermManager.this.f[i] = Integer.valueOf(map.get(AppPermManager.this.H[i])).intValue();
                    }
                    AppPermManager.this.K = AppPermManager.this.a.getRecentLogs(AppPermManager.this.M, AppPermManager.this.L);
                    handler.sendMessage(handler.obtainMessage(0));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void onClick(View v2) {
        if (!this.T) {
            this.aa.sendMessage(this.aa.obtainMessage(8));
            return;
        }
        switch (v2.getId()) {
            case R.id.app_report /*{ENCODED_INT: 2131296743}*/:
                new CustomDialog.Builder(this).setTitle(R.string.info).setMessage(getString(R.string.report_sure)).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass6 */
                    final /* synthetic */ int a = 0;

                    public final void onClick(DialogInterface dialog, int which) {
                        if (this.a == 0) {
                            AppPermManager.H(AppPermManager.this);
                        }
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.AppsManager.AppPermManager.AnonymousClass5 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                }).show();
                return;
            case R.id.app_uninstall /*{ENCODED_INT: 2131296744}*/:
                startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + this.M)));
                return;
            case R.id.trust_app_switch /*{ENCODED_INT: 2131296747}*/:
                this.V = !this.V;
                try {
                    if (this.V) {
                        this.a.updateAppTrust(this.M, this.L, 1);
                        this.aa.sendMessage(this.aa.obtainMessage(2));
                        for (int i2 = 0; i2 < this.H.length; i2++) {
                            this.J.set(i2, "0");
                        }
                        this.aa.sendMessage(this.aa.obtainMessage(3));
                        return;
                    }
                    this.a.updateAppTrust(this.M, this.L, 0);
                    this.aa.sendMessage(this.aa.obtainMessage(2));
                    for (int i3 = 0; i3 < this.H.length; i3++) {
                        if (this.f[i3] > -1) {
                            this.J.set(i3, Integer.toString(this.f[i3]));
                        } else if (this.H[i3].equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                            this.J.set(i3, DatabaseTables.USER_MARK);
                        } else if (this.H[i3].equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                            this.J.set(i3, DatabaseTables.SYSTEM_MARK);
                        } else {
                            this.J.set(i3, "0");
                        }
                    }
                    this.aa.sendMessage(this.aa.obtainMessage(7));
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case R.id.send_msg_allow /*{ENCODED_INT: 2131296762}*/:
                a(this.Z, 0);
                this.aa.sendMessage(this.aa.obtainMessage(0));
                return;
            case R.id.send_msg_tip /*{ENCODED_INT: 2131296763}*/:
                a(this.Z, 2);
                this.aa.sendMessage(this.aa.obtainMessage(0));
                return;
            case R.id.send_msg_deny /*{ENCODED_INT: 2131296764}*/:
                a(this.Z, 1);
                this.aa.sendMessage(this.aa.obtainMessage(0));
                return;
            default:
                for (int i4 = 0; i4 < this.H.length; i4++) {
                    if (v2 == this.B[i4] || v2 == this.e[i4]) {
                        String type = this.H[i4];
                        this.Z = i4;
                        if (!type.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                            if (this.J.get(i4).equals(DatabaseTables.SYSTEM_MARK)) {
                                this.J.set(i4, "0");
                                Log.i("test", this.Y + "on ok" + "--" + type);
                            } else {
                                this.J.set(i4, DatabaseTables.SYSTEM_MARK);
                                Log.i("test", this.Y + "off ok" + "--" + type);
                            }
                            if (this.C.isShown()) {
                                this.C.setVisibility(8);
                            }
                            this.aa.sendMessage(this.aa.obtainMessage(0));
                        } else if (this.C.isShown()) {
                            this.C.setVisibility(8);
                        } else {
                            this.C.setVisibility(0);
                        }
                    }
                }
                return;
        }
    }

    private void a(int pos, int selected) {
        if (selected == 2) {
            this.J.set(pos, DatabaseTables.USER_MARK);
            Log.i("test", this.Y + "tip ok" + "--" + AppDatabase.DB_APP_SENDMESSAGE);
        } else if (selected == 1) {
            this.J.set(pos, DatabaseTables.SYSTEM_MARK);
            Log.i("test", this.Y + "off ok" + "--" + AppDatabase.DB_APP_SENDMESSAGE);
        } else if (selected == 0) {
            this.J.set(pos, "0");
            Log.i("test", this.Y + "on ok" + "--" + AppDatabase.DB_APP_SENDMESSAGE);
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        for (int i2 = 0; i2 < this.H.length; i2++) {
            try {
                String type = this.H[i2];
                this.a.updateApp(Integer.valueOf(this.J.get(i2)).intValue(), this.Y, type);
            } catch (Exception e2) {
            }
        }
        if (this.T) {
            startService(new Intent(this, SafeCenterService.class));
        }
        if (this.N != null) {
            sendBroadcast(new Intent("com.lenovo.safecenter.refreshAppsManager"));
        }
        TrackEvent.trackPause(this);
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(AppPermManager x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED") && intent.getDataString().substring(8).equals(AppPermManager.this.M)) {
                TrackEvent.reportUninstallApp(AppPermManager.this.M);
                AppPermManager.this.finish();
            }
        }
    }
}
