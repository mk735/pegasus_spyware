package com.lenovo.install;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.PermissionInfo;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.lenovo.install.PackageUtil;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.support.WhiteAppsList;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class InstallActivity extends Activity implements View.OnClickListener {
    private TextView A;
    private RelativeLayout B;
    private ImageView C;
    private ImageView D;
    private RelativeLayout[] E;
    private LinearLayout[] F;
    private ImageView[] G;
    private TextView[] H;
    private List<AppInfo> I = new ArrayList();
    private View J;
    private LinearLayout K;
    private LinearLayout L;
    private LinearLayout M;
    private TextView N;
    private QScannerManager O;
    private int P;
    private boolean Q;
    private boolean R;
    private String S;
    private FrameLayout T;
    private ImageView U;
    private boolean V;
    private boolean W;
    private String X;
    private String Y;
    private Handler Z = new Handler() {
        /* class com.lenovo.install.InstallActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    InstallActivity.this.V = false;
                    InstallActivity.this.U.clearAnimation();
                    InstallActivity.this.T.setVisibility(8);
                    InstallActivity.this.L.setVisibility(0);
                    InstallActivity.this.t.setBackgroundResource(R.drawable.safe_state);
                    InstallActivity.this.v.setText(R.string.pass_antivirus);
                    InstallActivity.this.v.setTextColor(InstallActivity.this.getResources().getColor(R.color.white));
                    InstallActivity.this.J.setVisibility(8);
                    InstallActivity.this.initAfterScan();
                    return;
                case 1:
                    InstallActivity.this.V = true;
                    InstallActivity.this.U.clearAnimation();
                    InstallActivity.this.T.setVisibility(8);
                    InstallActivity.this.L.setVisibility(0);
                    InstallActivity.this.t.setBackgroundResource(R.drawable.warning);
                    InstallActivity.this.v.setText(R.string.find_antivirus);
                    InstallActivity.this.v.setTextColor(InstallActivity.this.getResources().getColor(R.color.red));
                    InstallActivity.this.J.setVisibility(0);
                    InstallActivity.this.showVirusDesc((QScanResultEntity) msg.obj);
                    InstallActivity.this.initAfterScan();
                    return;
                case 2:
                    InstallActivity.this.B.setVisibility(0);
                    InstallActivity.this.x.setEnabled(true);
                    InstallActivity.this.y.setEnabled(true);
                    InstallActivity.this.x.setTextColor(InstallActivity.this.getResources().getColor(R.color.white));
                    InstallActivity.this.y.setTextColor(InstallActivity.this.getResources().getColor(R.color.white));
                    for (int i = 0; i < InstallActivity.this.I.size(); i++) {
                        if (((AppInfo) InstallActivity.this.I.get(i)).appType.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                            InstallActivity.a(InstallActivity.this, i, R.id.privacy_layout, R.id.changepri_layout, R.id.privacy_img);
                            if (((AppInfo) InstallActivity.this.I.get(i)).selected == 0) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_on);
                            } else if (((AppInfo) InstallActivity.this.I.get(i)).selected == 1) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_off);
                            }
                            InstallActivity.this.S = InstallActivity.l(InstallActivity.this);
                            ((TextView) InstallActivity.this.findViewById(R.id.privacy_perm_detail)).setText(InstallActivity.this.S);
                        } else if (((AppInfo) InstallActivity.this.I.get(i)).appType.equals("location")) {
                            InstallActivity.a(InstallActivity.this, i, R.id.location_layout, R.id.changeloc_layout, R.id.location_img);
                            if (((AppInfo) InstallActivity.this.I.get(i)).selected == 0) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_on);
                            } else if (((AppInfo) InstallActivity.this.I.get(i)).selected == 1) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_off);
                            }
                        } else if (((AppInfo) InstallActivity.this.I.get(i)).appType.equals(AppDatabase.PERM_TYPE_DEVICE)) {
                            InstallActivity.a(InstallActivity.this, i, R.id.record_layout, R.id.changerecord_layout, R.id.record_img);
                            if (((AppInfo) InstallActivity.this.I.get(i)).selected == 0) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_on);
                            } else if (((AppInfo) InstallActivity.this.I.get(i)).selected == 1) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_off);
                            }
                        } else if (((AppInfo) InstallActivity.this.I.get(i)).appType.equals(AppDatabase.DB_APP_CALL)) {
                            InstallActivity.a(InstallActivity.this, i, R.id.call_layout, R.id.changecall_layout, R.id.call_img);
                            if (((AppInfo) InstallActivity.this.I.get(i)).selected == 0) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_on);
                            } else if (((AppInfo) InstallActivity.this.I.get(i)).selected == 1) {
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.dark_off);
                            }
                        } else if (((AppInfo) InstallActivity.this.I.get(i)).appType.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                            InstallActivity.a(InstallActivity.this, i, R.id.sendmsg_layout, R.id.changemsg_layout, R.id.sendmsg_img);
                            InstallActivity.this.z.setVisibility(0);
                            if (((AppInfo) InstallActivity.this.I.get(i)).selected == 0) {
                                InstallActivity.this.z.setText(R.string.allow);
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.perm_grant1);
                            } else if (((AppInfo) InstallActivity.this.I.get(i)).selected == 1) {
                                InstallActivity.this.z.setText(R.string.forbid);
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.perm_deny1);
                            } else if (((AppInfo) InstallActivity.this.I.get(i)).selected == 2) {
                                InstallActivity.this.z.setText(R.string.notify);
                                InstallActivity.this.G[i].setBackgroundResource(R.drawable.perm_prompt1);
                            }
                        }
                    }
                    return;
                case 3:
                    if (((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).appType.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                        if (((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).selected == 0) {
                            InstallActivity.this.z.setText(R.string.allow);
                            InstallActivity.this.G[InstallActivity.this.P].setBackgroundResource(R.drawable.perm_grant1);
                            return;
                        } else if (((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).selected == 1) {
                            InstallActivity.this.z.setText(R.string.forbid);
                            InstallActivity.this.G[InstallActivity.this.P].setBackgroundResource(R.drawable.perm_deny1);
                            if (!InstallActivity.this.m.getBoolean("next_notip", false)) {
                                InstallActivity.this.changePopState(((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).appType);
                                return;
                            }
                            return;
                        } else if (((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).selected == 2) {
                            InstallActivity.this.z.setText(R.string.notify);
                            InstallActivity.this.G[InstallActivity.this.P].setBackgroundResource(R.drawable.perm_prompt1);
                            return;
                        } else {
                            return;
                        }
                    } else if (((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).selected == 0) {
                        InstallActivity.this.G[InstallActivity.this.P].setBackgroundResource(R.drawable.dark_on);
                        return;
                    } else if (((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).selected == 1) {
                        InstallActivity.this.G[InstallActivity.this.P].setBackgroundResource(R.drawable.dark_off);
                        if (!InstallActivity.this.m.getBoolean("next_notip", false)) {
                            InstallActivity.this.changePopState(((AppInfo) InstallActivity.this.I.get(InstallActivity.this.P)).appType);
                            return;
                        }
                        return;
                    } else {
                        return;
                    }
                case 4:
                case 5:
                case 6:
                default:
                    return;
                case 7:
                    InstallActivity.this.B.setVisibility(0);
                    InstallActivity.this.y.setEnabled(true);
                    InstallActivity.this.x.setEnabled(true);
                    InstallActivity.this.x.setTextColor(InstallActivity.this.getResources().getColor(R.color.white));
                    InstallActivity.this.y.setTextColor(InstallActivity.this.getResources().getColor(R.color.white));
                    if (InstallActivity.this.R) {
                        InstallActivity.this.A.setText(R.string.detail_perm2);
                        InstallActivity.this.w.setVisibility(0);
                        return;
                    }
                    InstallActivity.this.A.setText(R.string.detail_perm3);
                    InstallActivity.this.w.setVisibility(8);
                    InstallActivity.t(InstallActivity.this);
                    return;
            }
        }
    };
    PackageManager a;
    private int aa = 0;
    private PopupWindow ab;
    PackageParser.Package b;
    PackageUtil.AppSnippet c;
    boolean d = false;
    boolean e = false;
    private final int f = 0;
    private final int g = 1;
    private final int h = 2;
    private final int i = 3;
    private final int j = 4;
    private final int k = 5;
    private final int l = 6;
    private SharedPreferences m;
    private PopupWindow n;
    private Context o;
    private AppDatabase p;
    private String q;
    private List<PermissionInfo> r;
    private ImageView s;
    private ImageView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;

    static /* synthetic */ void a(InstallActivity x0, int x1, int x2, int x3, int x4) {
        x0.E[x1] = (RelativeLayout) x0.findViewById(x2);
        x0.F[x1] = (LinearLayout) x0.findViewById(x3);
        x0.G[x1] = (ImageView) x0.findViewById(x4);
        x0.E[x1].setVisibility(0);
        x0.F[x1].setOnClickListener(x0);
    }

    static /* synthetic */ boolean a(String x1) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.READ_SMS");
        arrayList.add("android.permission.WRITE_SMS");
        arrayList.add("android.permission.RECEIVE_SMS");
        arrayList.add("android.permission.READ_CONTACTS");
        arrayList.add("android.permission.WRITE_CONTACTS");
        arrayList.add("android.permission.READ_CALENDAR");
        arrayList.add("com.android.browser.permission.READ_HISTORY_BOOKMARKS");
        return arrayList.contains(x1);
    }

    static /* synthetic */ boolean a(List x1, String x2) {
        for (int i2 = 0; i2 < x1.size(); i2++) {
            if (((AppInfo) x1.get(i2)).appType.equals(x2)) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean b(String x1) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
        arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        arrayList.add("android.permission.ACCESS_LOCATION_EXTRA_COMMANDS");
        return arrayList.contains(x1);
    }

    static /* synthetic */ String l(InstallActivity x0) {
        String str = "";
        for (PermissionInfo permissionInfo : x0.r) {
            if (permissionInfo.name.equals("android.permission.READ_CONTACTS")) {
                str = str + x0.getString(R.string.privacy_contact);
            }
            if (permissionInfo.name.equals("android.permission.READ_SMS")) {
                str = str + x0.getString(R.string.privacy_sms);
            }
            if (permissionInfo.name.equals("android.permission.READ_CALENDAR")) {
                str = str + x0.getString(R.string.privacy_schedule);
            }
            if (permissionInfo.name.equals("com.android.browser.permission.READ_HISTORY_BOOKMARKS")) {
                str = str + x0.getString(R.string.privacy_history);
            }
        }
        return str.length() > 0 ? str.substring(0, str.length() - 1) : str;
    }

    static /* synthetic */ void t(InstallActivity x0) {
        x0.B.setVisibility(0);
        x0.findViewById(R.id.btn_detail).setVisibility(8);
        if (x0.r.size() > 0) {
            x0.K.removeAllViews();
            for (PermissionInfo permissionInfo : x0.r) {
                LinearLayout linearLayout = x0.K;
                String obj = permissionInfo.loadLabel(x0.getPackageManager()).toString();
                permissionInfo.loadLogo(x0.getPackageManager());
                linearLayout.addView(x0.c(obj));
            }
            return;
        }
        x0.B.setVisibility(8);
        x0.K.removeAllViews();
        x0.K.addView(x0.c(x0.getString(R.string.no_premit)));
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.m = getSharedPreferences("isFirst", 0);
        this.a = getPackageManager();
        this.b = PackageUtil.getPackageInfo(getIntent().getData());
        if (this.b == null) {
            startActivity(new Intent(this, InstallErrorActivity.class).putExtra("uri", getIntent().getData().toString()));
            finish();
            return;
        }
        this.O = (QScannerManager) ManagerCreator.getManager(QScannerManager.class);
        setContentView(R.layout.installing);
        this.s = (ImageView) findViewById(R.id.app_icon);
        this.u = (TextView) findViewById(R.id.app_name);
        this.t = (ImageView) findViewById(R.id.checkresult_icon);
        this.v = (TextView) findViewById(R.id.checkresult_text);
        this.w = (TextView) findViewById(R.id.btn_detail);
        this.x = (TextView) findViewById(R.id.btn_cancel);
        this.y = (TextView) findViewById(R.id.btn_install);
        this.x.setEnabled(false);
        this.y.setEnabled(false);
        this.B = (RelativeLayout) findViewById(R.id.layout3);
        this.M = (LinearLayout) findViewById(R.id.install_replace);
        this.D = (ImageView) findViewById(R.id.bottom_img);
        this.J = findViewById(R.id.virus_detail_view);
        this.K = (LinearLayout) findViewById(R.id.perm_detail_view);
        this.C = (ImageView) findViewById(R.id.sendmsg_img_arrow);
        this.N = (TextView) findViewById(R.id.repalce_warning);
        this.z = (TextView) findViewById(R.id.sendmsg_txt);
        this.A = (TextView) findViewById(R.id.txt_detail);
        this.w.setOnClickListener(this);
        this.x.setOnClickListener(this);
        this.y.setOnClickListener(this);
        this.J.setOnClickListener(this);
        this.T = (FrameLayout) findViewById(R.id.frameLayout_scan);
        this.U = (ImageView) findViewById(R.id.checkresult_scan);
        this.L = (LinearLayout) findViewById(R.id.layout_scan);
        this.o = this;
        this.p = new AppDatabase(this);
        this.R = WflUtils.isRoot();
        this.q = this.b.packageName;
        this.r = PackageUtil.getPerssions(this.b, this.o);
        this.c = PackageUtil.getAppSnippet(this, this.b.applicationInfo, getIntent().getData());
        this.s.setImageDrawable(this.c.b);
        this.u.setText(this.c.a);
        translate(this.U);
        new Thread() {
            /* class com.lenovo.install.InstallActivity.AnonymousClass4 */

            public final void run() {
                List<String> strs = new ArrayList<>();
                strs.add(InstallActivity.this.getIntent().getData().getPath());
                ArrayList<QScanResultEntity> results = InstallActivity.this.O.scanApks(strs, null, false);
                InstallActivity.this.X = results.get(0).certMd5;
                if (results.get(0).type != 3) {
                    InstallActivity.this.Z.sendEmptyMessageDelayed(0, 1000);
                    return;
                }
                Message msg = new Message();
                msg.what = 1;
                msg.obj = results.get(0);
                Log.i("ww", results.get(0).discription);
                InstallActivity.this.Z.sendMessageDelayed(msg, 1000);
            }
        }.start();
        TrackEvent.reportUseLeSafeAppInstallManager(this.q);
    }

    public void translate(ImageView view) {
        Animation animation = AnimationUtils.loadAnimation(this, R.anim.scanvirus_in_install);
        animation.setDuration(1000);
        animation.setRepeatCount(-1);
        view.startAnimation(animation);
    }

    public void showVirusDesc(QScanResultEntity entity) {
        TextView virus_detail = (TextView) findViewById(R.id.virus_detail);
        ((TextView) findViewById(R.id.virus_name)).setText(String.format(getString(R.string.virus_name), entity.name));
        ((TextView) findViewById(R.id.virus_risk)).setText(R.string.antivirusvirus_notifyadvice);
        virus_detail.setText(entity.discription);
        virus_detail.setOnClickListener(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this.o);
    }

    public void initAfterScan() {
        boolean z2;
        Iterator<ApplicationInfo> it = this.a.getInstalledApplications(0).iterator();
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            ApplicationInfo next = it.next();
            if (next.packageName.equals(this.q)) {
                final ArrayList arrayList = new ArrayList();
                arrayList.add(next.sourceDir);
                new Thread() {
                    /* class com.lenovo.install.InstallActivity.AnonymousClass6 */

                    public final void run() {
                        ArrayList<QScanResultEntity> results = InstallActivity.this.O.scanApks(arrayList, null, false);
                        InstallActivity.this.Y = results.get(0).certMd5;
                    }
                }.start();
                z2 = true;
                break;
            }
        }
        if (z2) {
            this.N.setVisibility(0);
        }
        if (WhiteAppsList.contains(WhiteAppsList.md5s, this.X)) {
            this.Z.sendMessage(this.Z.obtainMessage(7));
            return;
        }
        if (TextUtils.isEmpty(Const.LENOVO_APKS)) {
            Const.LENOVO_APKS = WhiteAppsList.getWhiteList(this, "lenovoapks");
        }
        if (Const.LENOVO_APKS.contains(this.q + "\n")) {
            this.Z.sendMessage(this.Z.obtainMessage(7));
        } else if (this.R) {
            new Thread() {
                /* class com.lenovo.install.InstallActivity.AnonymousClass5 */

                public final void run() {
                    Map<String, Integer> map = InstallActivity.this.p.getAppperms(InstallActivity.this.q);
                    for (PermissionInfo perm : InstallActivity.this.r) {
                        InstallActivity installActivity = InstallActivity.this;
                        if (!InstallActivity.a(InstallActivity.this.I, AppDatabase.PERM_TYPE_PRIVCY)) {
                            InstallActivity installActivity2 = InstallActivity.this;
                            if (InstallActivity.a(perm.name)) {
                                InstallActivity.this.Q = true;
                                AppInfo app = new AppInfo();
                                app.appType = AppDatabase.PERM_TYPE_PRIVCY;
                                if (map.get(AppDatabase.PERM_TYPE_PRIVCY) == null) {
                                    app.selected = 0;
                                } else {
                                    app.selected = map.get(AppDatabase.PERM_TYPE_PRIVCY).intValue();
                                }
                                InstallActivity.this.I.add(app);
                            }
                        }
                        InstallActivity installActivity3 = InstallActivity.this;
                        if (!InstallActivity.a(InstallActivity.this.I, "location")) {
                            InstallActivity installActivity4 = InstallActivity.this;
                            if (InstallActivity.b(perm.name)) {
                                InstallActivity.this.Q = true;
                                AppInfo app2 = new AppInfo();
                                app2.appType = "location";
                                if (map.get("location") == null) {
                                    app2.selected = 0;
                                } else {
                                    app2.selected = map.get("location").intValue();
                                }
                                InstallActivity.this.I.add(app2);
                            }
                        }
                        InstallActivity installActivity5 = InstallActivity.this;
                        if (!InstallActivity.a(InstallActivity.this.I, AppDatabase.PERM_TYPE_DEVICE) && (perm.name.equals("android.permission.RECORD_AUDIO") || perm.name.equals("android.permission.CAMERA"))) {
                            InstallActivity.this.Q = true;
                            AppInfo app3 = new AppInfo();
                            app3.appType = AppDatabase.PERM_TYPE_DEVICE;
                            if (map.get(AppDatabase.PERM_TYPE_DEVICE) == null) {
                                app3.selected = 0;
                            } else {
                                app3.selected = map.get(AppDatabase.PERM_TYPE_DEVICE).intValue();
                            }
                            InstallActivity.this.I.add(app3);
                        }
                        InstallActivity installActivity6 = InstallActivity.this;
                        if (!InstallActivity.a(InstallActivity.this.I, AppDatabase.DB_APP_CALL) && (perm.name.equals("android.permission.CALL_PHONE") || perm.name.equals("android.permission.CALL_PRIVILEGED"))) {
                            InstallActivity.this.Q = true;
                            AppInfo app4 = new AppInfo();
                            app4.appType = AppDatabase.DB_APP_CALL;
                            if (map.get(AppDatabase.DB_APP_CALL) == null) {
                                app4.selected = 0;
                            } else {
                                app4.selected = map.get(AppDatabase.DB_APP_CALL).intValue();
                            }
                            InstallActivity.this.I.add(app4);
                        }
                        if (perm.name.equals("android.permission.SEND_SMS")) {
                            InstallActivity.this.Q = true;
                            AppInfo app5 = new AppInfo();
                            app5.appType = AppDatabase.DB_APP_SENDMESSAGE;
                            if (map.get(AppDatabase.DB_APP_SENDMESSAGE) == null) {
                                app5.selected = 0;
                            } else {
                                app5.selected = map.get(AppDatabase.DB_APP_SENDMESSAGE).intValue();
                            }
                            InstallActivity.this.I.add(app5);
                        }
                        if (perm.name.equals("android.permission.RECEIVE_BOOT_COMPLETED")) {
                            InstallActivity.this.W = true;
                        }
                    }
                    if (InstallActivity.this.Q) {
                        int len = InstallActivity.this.I.size();
                        InstallActivity.this.E = new RelativeLayout[len];
                        InstallActivity.this.F = new LinearLayout[len];
                        InstallActivity.this.G = new ImageView[len];
                        InstallActivity.this.H = new TextView[len];
                        InstallActivity.this.Z.sendMessage(InstallActivity.this.Z.obtainMessage(2));
                        return;
                    }
                    InstallActivity.this.Z.sendMessage(InstallActivity.this.Z.obtainMessage(7));
                }
            }.start();
        } else {
            this.Z.sendMessage(this.Z.obtainMessage(7));
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        if (this.O != null) {
            try {
                this.O.freeScanner();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void onClick(View v2) {
        switch (v2.getId()) {
            case R.id.allow /*{ENCODED_INT: 2131296869}*/:
                this.ab.dismiss();
                this.I.get(this.P).selected = 0;
                this.Z.sendMessage(this.Z.obtainMessage(3));
                return;
            case R.id.tip /*{ENCODED_INT: 2131296871}*/:
                this.ab.dismiss();
                this.I.get(this.P).selected = 2;
                this.Z.sendMessage(this.Z.obtainMessage(3));
                return;
            case R.id.deny /*{ENCODED_INT: 2131296873}*/:
                this.ab.dismiss();
                this.I.get(this.P).selected = 1;
                this.Z.sendMessage(this.Z.obtainMessage(3));
                return;
            case R.id.btn_cancel /*{ENCODED_INT: 2131296947}*/:
                finish();
                return;
            case R.id.virus_detail_view /*{ENCODED_INT: 2131297112}*/:
                if (this.aa == 0) {
                    this.aa = 1;
                    ((TextView) findViewById(R.id.virus_detail)).setSingleLine(false);
                    ((ImageView) findViewById(R.id.virus_detail_img)).setBackgroundResource(R.drawable.arrow_up);
                    return;
                }
                this.aa = 0;
                ((TextView) findViewById(R.id.virus_detail)).setSingleLine(true);
                ((ImageView) findViewById(R.id.virus_detail_img)).setBackgroundResource(R.drawable.arrow_down);
                return;
            case R.id.btn_install /*{ENCODED_INT: 2131297135}*/:
                if (!this.R) {
                    Uri uri = Uri.parse("file://" + getIntent().getData().getPath());
                    Intent it = new Intent("android.intent.action.VIEW", uri);
                    it.setData(uri);
                    it.addFlags(1);
                    it.setClassName("com.android.packageinstaller", "com.android.packageinstaller.PackageInstallerActivity");
                    startActivity(it);
                    finish();
                    return;
                } else if (!TextUtils.isEmpty(this.Y) && !this.Y.equals(this.X)) {
                    startActivity(new Intent(this, InstallErrorActivity.class).putExtra("uri", getIntent().getData().toString()));
                    finish();
                    return;
                } else if (this.q.equals(TrafficStatsService.PACKAGE_NAME)) {
                    Uri uri2 = Uri.parse("file://" + getIntent().getData().getPath());
                    Intent it2 = new Intent("android.intent.action.VIEW", uri2);
                    it2.setData(uri2);
                    it2.addFlags(1);
                    it2.setClassName("com.android.packageinstaller", "com.android.packageinstaller.PackageInstallerActivity");
                    startActivity(it2);
                    finish();
                    return;
                } else {
                    startActivity(new Intent(this, InstallProgress.class).putExtra("uri", getIntent().getData().toString()).putExtra("has_virus", this.V).putExtra("has_boot", this.W));
                    finish();
                    return;
                }
            case R.id.btn_detail /*{ENCODED_INT: 2131297138}*/:
                startActivity(new Intent(this, ShowPkgInfoActivity.class).putExtra("uri", getIntent().getData().toString()));
                return;
            default:
                for (int i2 = 0; i2 < this.I.size(); i2++) {
                    if (v2 == this.F[i2]) {
                        this.P = i2;
                        if (this.I.get(i2).appType.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                            showPopupMenu();
                        } else {
                            if (this.I.get(i2).selected == 1) {
                                this.I.get(i2).selected = 0;
                            } else {
                                this.I.get(i2).selected = 1;
                            }
                            this.Z.sendMessage(this.Z.obtainMessage(3));
                        }
                    }
                }
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        new Thread() {
            /* class com.lenovo.install.InstallActivity.AnonymousClass7 */

            public final void run() {
                int appTrust = InstallActivity.this.p.getAppTrusted(InstallActivity.this.q);
                if (appTrust == 1) {
                    int i = 0;
                    while (true) {
                        if (i >= InstallActivity.this.I.size()) {
                            break;
                        } else if (((AppInfo) InstallActivity.this.I.get(i)).selected > 0) {
                            appTrust = 0;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                HashMap hashMap = new HashMap();
                for (int i2 = 0; i2 < InstallActivity.this.I.size(); i2++) {
                    ((AppInfo) InstallActivity.this.I.get(i2)).trusted = appTrust;
                    if (((AppInfo) InstallActivity.this.I.get(i2)).appType.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                        hashMap.put(AppDatabase.PERM_TYPE_PRIVCY, InstallActivity.this.I.get(i2));
                    } else if (((AppInfo) InstallActivity.this.I.get(i2)).appType.equals("location")) {
                        hashMap.put("location", InstallActivity.this.I.get(i2));
                    } else if (((AppInfo) InstallActivity.this.I.get(i2)).appType.equals(AppDatabase.PERM_TYPE_DEVICE)) {
                        hashMap.put(AppDatabase.PERM_TYPE_DEVICE, InstallActivity.this.I.get(i2));
                    } else if (((AppInfo) InstallActivity.this.I.get(i2)).appType.equals(AppDatabase.DB_APP_CALL)) {
                        hashMap.put(AppDatabase.DB_APP_CALL, InstallActivity.this.I.get(i2));
                    } else if (((AppInfo) InstallActivity.this.I.get(i2)).appType.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                        hashMap.put(AppDatabase.DB_APP_SENDMESSAGE, InstallActivity.this.I.get(i2));
                    }
                }
                PackageUtil.newAppMap.put(InstallActivity.this.q, hashMap);
            }
        }.start();
        TrackEvent.trackPause(this.o);
    }

    private View c(String str) {
        View view1 = LayoutInflater.from(this).inflate(R.layout.permission_detail_item, (ViewGroup) null);
        ((TextView) view1.findViewById(R.id.tab_name)).setText(str);
        return view1;
    }

    public void changePopState(String appType) {
        this.d = !this.d;
        if (this.d) {
            popAwindow(appType);
        } else if (this.n != null) {
            this.n.dismiss();
        }
    }

    public void popAwindow(String appType) {
        boolean z2;
        if (!this.m.getBoolean("next_notip", false)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.e = z2;
        View v2 = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.install_popup, (ViewGroup) null);
        TextView text1 = (TextView) v2.findViewById(R.id.content1);
        String str = "";
        if (appType.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
            str = String.format(getString(R.string.safe_tip), this.c.a, String.format(getString(R.string.privacy_detail2), this.S), getString(R.string.permission_control));
        } else if (appType.equals("location")) {
            str = String.format(getString(R.string.safe_tip), this.c.a, getString(R.string.get_phoneloc), getString(R.string.permission_control));
        } else if (appType.equals(AppDatabase.PERM_TYPE_DEVICE)) {
            str = String.format(getString(R.string.safe_tip), this.c.a, getString(R.string.perm_tap_calling), getString(R.string.permission_control));
        } else if (appType.equals(AppDatabase.DB_APP_CALL)) {
            str = String.format(getString(R.string.safe_tip), this.c.a, getString(R.string.perm_call), getString(R.string.charge_safe));
        } else if (appType.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
            str = String.format(getString(R.string.safe_tip), this.c.a, getString(R.string.perm_send_sms), getString(R.string.charge_safe));
        }
        text1.setText(str);
        final ImageView imageView = (ImageView) v2.findViewById(R.id.img_checkbox);
        imageView.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.install.InstallActivity.AnonymousClass8 */

            public final void onClick(View v) {
                InstallActivity.this.e = !InstallActivity.this.e;
                if (InstallActivity.this.e) {
                    imageView.setBackgroundResource(R.drawable.checkbox_check);
                } else {
                    imageView.setBackgroundResource(R.drawable.checkbox_nocheck);
                }
            }
        });
        ((TextView) v2.findViewById(R.id.neutralButton)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.install.InstallActivity.AnonymousClass9 */

            public final void onClick(View v) {
                InstallActivity.this.m.edit().putBoolean("next_notip", InstallActivity.this.e).commit();
                InstallActivity.this.n.dismiss();
            }
        });
        this.n = new PopupWindow(v2, -2, -2, true);
        this.n.setBackgroundDrawable(new BitmapDrawable());
        this.n.setFocusable(true);
        this.n.setOutsideTouchable(true);
        this.n.setOnDismissListener(new PopupWindow.OnDismissListener() {
            /* class com.lenovo.install.InstallActivity.AnonymousClass2 */

            public final void onDismiss() {
                InstallActivity.this.n = null;
                InstallActivity.this.d = false;
            }
        });
        this.n.showAtLocation(findViewById(R.id.layout_bottom), 80, 0, 70);
        this.n.update();
    }

    public void showPopupMenu() {
        this.d = !this.d;
        if (this.d) {
            this.C.setBackgroundResource(R.drawable.arrow_up);
            View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.changeitemxml, (ViewGroup) null);
            ((ImageView) inflate.findViewById(R.id.grant_img)).setBackgroundResource(R.drawable.perm_grant1);
            ((ImageView) inflate.findViewById(R.id.prompt_img)).setBackgroundResource(R.drawable.perm_prompt1);
            ((ImageView) inflate.findViewById(R.id.deny_img)).setBackgroundResource(R.drawable.perm_deny1);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.allow);
            LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.tip);
            LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(R.id.deny);
            linearLayout.setBackgroundResource(R.drawable.msg_btn_bg);
            linearLayout2.setBackgroundResource(R.drawable.msg_btn_bg);
            linearLayout3.setBackgroundResource(R.drawable.msg_btn_bg);
            linearLayout.setOnClickListener(this);
            linearLayout2.setOnClickListener(this);
            linearLayout3.setOnClickListener(this);
            this.ab = new PopupWindow(inflate, -1, -2, true);
            this.ab.setAnimationStyle(R.style.PopupAnimation);
            this.ab.setBackgroundDrawable(new BitmapDrawable());
            this.ab.setFocusable(true);
            this.ab.setOutsideTouchable(true);
            this.ab.setOnDismissListener(new PopupWindow.OnDismissListener() {
                /* class com.lenovo.install.InstallActivity.AnonymousClass3 */

                public final void onDismiss() {
                    InstallActivity.this.ab = null;
                    InstallActivity.this.d = false;
                    InstallActivity.this.C.setBackgroundResource(R.drawable.arrow_down);
                }
            });
            this.ab.showAsDropDown(findViewById(R.id.sendmsg_layout));
            this.ab.update();
        } else if (this.n != null) {
            this.n.dismiss();
        }
    }
}
