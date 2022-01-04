package com.lenovo.safecenter.antivirus.views;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.format.Formatter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.domain.PermAdapter;
import com.lenovo.safecenter.antivirus.domain.ScanInfo;
import com.lenovo.safecenter.antivirus.domain.Virus;
import com.lenovo.safecenter.antivirus.domain.VirusDemo;
import com.lenovo.safecenter.antivirus.support.AntiVirusDBHelper;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.utils.ScanUtils;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class FullSystemScanActivity extends BaseTitleActivity {
    private boolean A = false;
    private String B = "";
    private Button C;
    private Button D;
    private Button E;
    private Button F;
    private Button G;
    private c H;
    private String I;
    private LinearLayout J;
    private LinearLayout K;
    private LinearLayout L;
    private LinearLayout M;
    private LinearLayout N;
    private List<Appinfo> O = new ArrayList();
    private AntiVirusDBHelper P;
    private Button Q;
    private boolean R = false;
    private ImageView S;
    private long T;
    private long U;
    private int V = 0;
    private TranslateAnimation W;
    private ImageView X;
    private QScannerManager Y;
    private boolean Z = false;
    private ProgressBar a;
    private boolean aa = false;
    private List<ApplicationInfo> ab;
    private int ac = 0;
    private d ad;
    private Handler ae = new Handler() {
        /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    if (FullSystemScanActivity.this.af) {
                        FullSystemScanActivity.b(FullSystemScanActivity.this);
                        FullSystemScanActivity.c(FullSystemScanActivity.this);
                        QScanResultEntity scanResult = (QScanResultEntity) msg.obj;
                        int progress = msg.arg1;
                        FullSystemScanActivity.this.B = FullSystemScanActivity.this.getResources().getString(R.string.antivirushasScaned);
                        FullSystemScanActivity.this.t.setText(String.format(FullSystemScanActivity.this.B, Integer.valueOf(FullSystemScanActivity.this.b - 1), Integer.valueOf(FullSystemScanActivity.this.c)));
                        FullSystemScanActivity.this.a.setVisibility(0);
                        FullSystemScanActivity.this.a.setProgress(progress);
                        FullSystemScanActivity.this.k.setText(String.format(FullSystemScanActivity.this.j, Integer.valueOf(progress / FullSystemScanActivity.this.a.getMax())));
                        if (scanResult.apkType == 1) {
                            FullSystemScanActivity.this.x.add(new ScanInfo(scanResult.packageName, scanResult.softName, false));
                        } else {
                            FullSystemScanActivity.this.x.add(new ScanInfo(scanResult.packageName, scanResult.softName, scanResult.type == 3));
                        }
                        FullSystemScanActivity.this.z.notifyDataSetChanged();
                        FullSystemScanActivity.this.q.setSelectionFromTop(FullSystemScanActivity.this.x.size() - 1, 0);
                        return;
                    }
                    FullSystemScanActivity.b(FullSystemScanActivity.this);
                    FullSystemScanActivity.c(FullSystemScanActivity.this);
                    FullSystemScanActivity.this.B = FullSystemScanActivity.this.getResources().getString(R.string.antivirushasScaned);
                    FullSystemScanActivity.this.t.setText(String.format(FullSystemScanActivity.this.B, Integer.valueOf(FullSystemScanActivity.this.b - 1), Integer.valueOf(FullSystemScanActivity.this.c)));
                    FullSystemScanActivity.this.a.setVisibility(0);
                    int percent = (FullSystemScanActivity.this.b * 100) / FullSystemScanActivity.this.ac;
                    FullSystemScanActivity.this.a.setProgress(percent);
                    FullSystemScanActivity.this.k.setText(String.format(FullSystemScanActivity.this.j, Integer.valueOf(percent)));
                    FullSystemScanActivity.this.x.add(new ScanInfo((ApplicationInfo) FullSystemScanActivity.this.ab.get(FullSystemScanActivity.this.b - 1), msg.getData().getBoolean("isvirus")));
                    FullSystemScanActivity.this.z.notifyDataSetChanged();
                    FullSystemScanActivity.this.q.setSelectionFromTop(FullSystemScanActivity.this.x.size() - 1, 0);
                    return;
                case 1:
                    FullSystemScanActivity.this.L.setVisibility(8);
                    FullSystemScanActivity.this.N.setVisibility(8);
                    HttpUtils.UpdateConfig("scantime", String.valueOf(System.currentTimeMillis()), FullSystemScanActivity.this);
                    if (PreferenceManager.getDefaultSharedPreferences(FullSystemScanActivity.this).getInt("netScan_switch", 1) != 1) {
                        FullSystemScanActivity.this.ae.sendEmptyMessage(9);
                        return;
                    } else if (ScanUtils.isNetworkAvailable(FullSystemScanActivity.this)) {
                        FullSystemScanActivity.this.ae.sendEmptyMessage(7);
                        return;
                    } else {
                        FullSystemScanActivity.this.ae.sendEmptyMessage(9);
                        try {
                            FullSystemScanActivity.this.openNetworkSettings();
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                case 2:
                    if (FullSystemScanActivity.this.f) {
                        FullSystemScanActivity.this.g = 3;
                        FullSystemScanActivity.this.o.setText(R.string.antivirusvirus_isgoing);
                        FullSystemScanActivity.this.ae.sendEmptyMessage(FullSystemScanActivity.this.g);
                        FullSystemScanActivity.this.x.add(new ScanInfo());
                        FullSystemScanActivity.this.z.notifyDataSetChanged();
                        FullSystemScanActivity.this.q.setSelectionFromTop(0, 0);
                        return;
                    }
                    return;
                case 3:
                    if (FullSystemScanActivity.this.f) {
                        FullSystemScanActivity.this.g++;
                        FullSystemScanActivity.this.ae.sendEmptyMessage(FullSystemScanActivity.this.g);
                        FullSystemScanActivity.this.x.add(new ScanInfo());
                        FullSystemScanActivity.this.z.notifyDataSetChanged();
                        FullSystemScanActivity.this.q.setSelectionFromTop(1, 0);
                        return;
                    }
                    return;
                case 4:
                    if (!FullSystemScanActivity.this.f) {
                        return;
                    }
                    if (FullSystemScanActivity.this.af) {
                        FullSystemScanActivity.this.g++;
                        FullSystemScanActivity.this.ae.sendEmptyMessage(FullSystemScanActivity.this.g);
                        FullSystemScanActivity.this.x.add(new ScanInfo());
                        FullSystemScanActivity.this.z.notifyDataSetChanged();
                        FullSystemScanActivity.this.q.setSelectionFromTop(2, 0);
                        return;
                    }
                    FullSystemScanActivity.this.ab = AppUtils.getInstalledApps(FullSystemScanActivity.this);
                    FullSystemScanActivity.this.ac = FullSystemScanActivity.this.ab.size();
                    FullSystemScanActivity.this.ad = new d(0, FullSystemScanActivity.this.ac);
                    FullSystemScanActivity.this.g++;
                    FullSystemScanActivity.this.ae.sendEmptyMessage(FullSystemScanActivity.this.g);
                    FullSystemScanActivity.this.x.add(new ScanInfo());
                    FullSystemScanActivity.this.z.notifyDataSetChanged();
                    FullSystemScanActivity.this.q.setSelectionFromTop(2, 0);
                    return;
                case 5:
                    if (!FullSystemScanActivity.this.f) {
                        return;
                    }
                    if (FullSystemScanActivity.this.af) {
                        FullSystemScanActivity.this.Y = (QScannerManager) ManagerCreator.getManager(QScannerManager.class);
                        FullSystemScanActivity.this.o.setText(R.string.antivirusscaning);
                        FullSystemScanActivity.this.g++;
                        try {
                            if (FullSystemScanActivity.this.H == null || !FullSystemScanActivity.this.H.isAlive() || !FullSystemScanActivity.this.Z) {
                                FullSystemScanActivity.this.H = new c();
                                FullSystemScanActivity.this.H.start();
                                FullSystemScanActivity.this.setGoing(true);
                                return;
                            }
                            return;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return;
                        }
                    } else {
                        String virus_pkgname = HttpUtils.execService("viruspkgname", FullSystemScanActivity.this);
                        if (!virus_pkgname.equals("")) {
                            FullSystemScanActivity.this.c = virus_pkgname.split(",").length;
                            if (!virus_pkgname.equalsIgnoreCase("")) {
                                for (String vir : virus_pkgname.split(",")) {
                                    FullSystemScanActivity.this.y.put(vir, null);
                                }
                            }
                        }
                        FullSystemScanActivity.this.o.setText(R.string.antivirusscaning);
                        FullSystemScanActivity.this.g++;
                        try {
                            FullSystemScanActivity.this.ad.a(true);
                            FullSystemScanActivity.this.ad.start();
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                case 6:
                case 10:
                default:
                    return;
                case 7:
                    FullSystemScanActivity.this.o.setText(R.string.netscaning);
                    FullSystemScanActivity.this.findViewById(R.id.antivirusscan_btn).setVisibility(8);
                    FullSystemScanActivity.this.findViewById(R.id.antivirusnetscan_btn).setVisibility(0);
                    new Thread() {
                        /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass1.AnonymousClass1 */

                        public final void run() {
                            FullSystemScanActivity.this.u = new ScanUtils().cloudScanGlobal(FullSystemScanActivity.this.O, FullSystemScanActivity.this);
                            if (FullSystemScanActivity.this.u == null) {
                                FullSystemScanActivity.this.ae.sendEmptyMessage(12);
                                FullSystemScanActivity.this.ae.sendEmptyMessage(9);
                                return;
                            }
                            FullSystemScanActivity.this.ae.sendEmptyMessage(8);
                        }
                    }.start();
                    return;
                case 8:
                    Log.i("msg", "ScanUtils.isNetScan_cancel=" + ScanUtils.isNetScan_cancel + "case 8");
                    if (!ScanUtils.isNetScan_cancel) {
                        FullSystemScanActivity.this.R = true;
                        FullSystemScanActivity.this.o.setText(R.string.antivirussuccess_scan);
                        FullSystemScanActivity.this.l.setVisibility(0);
                        if (FullSystemScanActivity.this.u != null && FullSystemScanActivity.this.u.size() > 0) {
                            for (VirusDemo v_str : FullSystemScanActivity.this.u) {
                                if (!FullSystemScanActivity.this.y.containsKey(v_str.getPkgName())) {
                                    FullSystemScanActivity.this.y.put(v_str.getPkgName(), null);
                                    HttpUtils.UpdateConfig(AppUtils.getVirusDescKey(v_str.getPkgName()), v_str.getVirusDesc(), FullSystemScanActivity.this);
                                }
                            }
                            FullSystemScanActivity.this.c = FullSystemScanActivity.this.y.size();
                        }
                        StringBuilder sb = new StringBuilder();
                        for (String pkg : FullSystemScanActivity.this.y.keySet()) {
                            sb.append(pkg);
                            sb.append(",");
                        }
                        HttpUtils.UpdateConfig("viruspkgname", "", FullSystemScanActivity.this);
                        if (sb.length() > 0) {
                            HttpUtils.UpdateConfig("viruspkgname", sb.deleteCharAt(sb.length() - 1).toString(), FullSystemScanActivity.this);
                        }
                        FullSystemScanActivity.a(FullSystemScanActivity.this, System.currentTimeMillis() - FullSystemScanActivity.this.T);
                        FullSystemScanActivity.this.setView();
                        int sumdesc = FullSystemScanActivity.this.c + FullSystemScanActivity.this.d;
                        if (sumdesc == 0) {
                            LeSafeObservable.get(FullSystemScanActivity.this).noticeHasScanedVirus();
                            FullSystemScanActivity.this.o.setText(R.string.detail3_scaned_no_virus_home_page);
                            FullSystemScanActivity.this.l.setVisibility(8);
                            FullSystemScanActivity.this.l.setText(R.string.antivirusscan_reslut1);
                            if (!FullSystemScanActivity.this.ag) {
                                FullSystemScanActivity.this.P.insertLog(FullSystemScanActivity.this.getString(R.string.antiviruslogdescfull4), String.valueOf(System.currentTimeMillis()), "0");
                            }
                        } else {
                            LeSafeObservable.get(FullSystemScanActivity.this).noticeHasVirus();
                            if (!FullSystemScanActivity.this.ag) {
                                FullSystemScanActivity.this.P.insertLog(String.format(FullSystemScanActivity.this.getString(R.string.antiviruslogdescpart5), Integer.valueOf(FullSystemScanActivity.this.c)), String.valueOf(System.currentTimeMillis()), DatabaseTables.SYSTEM_MARK);
                            }
                            FullSystemScanActivity.this.l.setText(String.format(FullSystemScanActivity.this.getString(R.string.antivirusscan_reslut2), Integer.valueOf(sumdesc)));
                        }
                        ScanUtils.isNetScan_cancel = false;
                        return;
                    }
                    return;
                case 9:
                    FullSystemScanActivity.this.o.setText(R.string.antivirussuccess_scanlocal);
                    FullSystemScanActivity.this.l.setVisibility(0);
                    int sumdesc1 = FullSystemScanActivity.this.c + FullSystemScanActivity.this.d;
                    if (sumdesc1 == 0) {
                        FullSystemScanActivity.this.stopAnimation();
                        LeSafeObservable.get(FullSystemScanActivity.this).noticeKilledVirus();
                        FullSystemScanActivity.this.l.setText(R.string.detail3_scaned_no_virus_netscan);
                        if (!FullSystemScanActivity.this.ag) {
                            FullSystemScanActivity.this.P.insertLog(FullSystemScanActivity.this.getString(R.string.antiviruslogdescfull4), String.valueOf(System.currentTimeMillis()), "0");
                        }
                    } else {
                        LeSafeObservable.get(FullSystemScanActivity.this).noticeHasVirus();
                        if (!FullSystemScanActivity.this.ag) {
                            FullSystemScanActivity.this.P.insertLog(String.format(FullSystemScanActivity.this.getString(R.string.antiviruslogdescpart5), Integer.valueOf(FullSystemScanActivity.this.c)), String.valueOf(System.currentTimeMillis()), DatabaseTables.SYSTEM_MARK);
                        }
                        FullSystemScanActivity.this.l.setText(String.format(FullSystemScanActivity.this.getString(R.string.antivirusscan_reslut2), Integer.valueOf(sumdesc1)));
                    }
                    HttpUtils.UpdateConfig("viruspkgname", "", FullSystemScanActivity.this);
                    if (FullSystemScanActivity.this.y.size() > 0) {
                        StringBuilder sb2 = new StringBuilder();
                        for (String pkg2 : FullSystemScanActivity.this.y.keySet()) {
                            sb2.append(pkg2);
                            sb2.append(",");
                        }
                        HttpUtils.UpdateConfig("viruspkgname", sb2.deleteCharAt(sb2.length() - 1).toString(), FullSystemScanActivity.this);
                    }
                    FullSystemScanActivity.this.setView();
                    return;
                case 11:
                    if (Boolean.parseBoolean(msg.obj.toString())) {
                        FullSystemScanActivity.this.startAnimation();
                        return;
                    } else {
                        FullSystemScanActivity.this.stopAnimation();
                        return;
                    }
                case 12:
                    Toast.makeText(FullSystemScanActivity.this, FullSystemScanActivity.this.getString(R.string.antispamserver_disconnect), 0).show();
                    return;
            }
        }
    };
    private boolean af = false;
    private boolean ag;
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private boolean e = false;
    private boolean f = true;
    private int g = -1;
    private List<List<Virus>> h = new ArrayList();
    private List<String> i = new ArrayList();
    private String j;
    private TextView k;
    private TextView l;
    private TextView m;
    private RelativeLayout n;
    private TextView o;
    private TextView p;
    private ListView q;
    private b r;
    private ExpandableListView s;
    private TextView t;
    private List<VirusDemo> u;
    private e v;
    private List<Virus> w;
    private List<ScanInfo> x = new ArrayList();
    private HashMap<String, QScanResultEntity> y;
    private PermAdapter z;

    static /* synthetic */ void T(FullSystemScanActivity x0) {
        if (!x0.A) {
            String string = x0.getResources().getString(R.string.antivirushasScaned);
            new CustomDialog.Builder(x0).setTitle(R.string.antivirusresulttitle).setMessage(String.format(string, Integer.valueOf(x0.b), Integer.valueOf(x0.c))).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass11 */

                public final void onClick(DialogInterface dialog, int which) {
                    FullSystemScanActivity.this.b = 0;
                    LeSafeObservable.get(FullSystemScanActivity.this).noticeKilledVirus();
                    FullSystemScanActivity.this.freeManage();
                    FullSystemScanActivity.this.finish();
                    System.gc();
                }
            }).create().show();
        } else if (!x0.e) {
            View inflate = LayoutInflater.from(x0).inflate(R.layout.antivirusshowviruwresult, (ViewGroup) null);
            String string2 = x0.getString(R.string.antivirustotalresult);
            String string3 = x0.getString(R.string.antivirusviruscount);
            String string4 = x0.getString(R.string.antivirushitcount);
            String format = String.format(string2, Integer.valueOf(x0.b));
            String format2 = String.format(string3, Integer.valueOf(x0.c));
            String format3 = String.format(string4, Integer.valueOf(x0.d));
            ((TextView) inflate.findViewById(R.id.antivirusreuslt_total)).setText(format);
            ((TextView) inflate.findViewById(R.id.antivirusresult_viruscount)).setText(format2);
            ((TextView) inflate.findViewById(R.id.antivirusreuslt_hitcount)).setText(format3);
            new CustomDialog.Builder(x0).setTitle(R.string.antivirusresulttitle).setContentView(inflate).setPositiveButton(x0.getString(R.string.antivirusappvirus_nowdeal), new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass10 */

                public final void onClick(DialogInterface dialog, int which) {
                    Intent showVirus = new Intent(FullSystemScanActivity.this, ScanVirusActivity.class);
                    Bundle bundle = new Bundle();
                    bundle.putStringArrayList("virusPackageNameList", new ArrayList<>(FullSystemScanActivity.this.y.keySet()));
                    showVirus.putExtras(bundle);
                    FullSystemScanActivity.this.startActivity(showVirus);
                    FullSystemScanActivity.this.b = 0;
                    LeSafeObservable.get(FullSystemScanActivity.this).noticeHasVirus();
                    FullSystemScanActivity.this.freeManage();
                    FullSystemScanActivity.this.finish();
                    System.gc();
                }
            }).setNegativeButton(R.string.antivirusappvirus_nodeal, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass9 */

                public final void onClick(DialogInterface dialog, int which) {
                    FullSystemScanActivity.this.b = 0;
                    LeSafeObservable.get(FullSystemScanActivity.this).noticeHasVirus();
                    FullSystemScanActivity.this.freeManage();
                    FullSystemScanActivity.this.finish();
                    System.gc();
                }
            }).create().show();
        }
    }

    static /* synthetic */ int Z(FullSystemScanActivity x0) {
        int i2 = x0.c;
        x0.c = i2 + 1;
        return i2;
    }

    static /* synthetic */ long a(FullSystemScanActivity x0, long x1) {
        long j2 = x0.U + x1;
        x0.U = j2;
        return j2;
    }

    static /* synthetic */ int b(FullSystemScanActivity x0) {
        int i2 = x0.V;
        x0.V = i2 + 1;
        return i2;
    }

    static /* synthetic */ int c(FullSystemScanActivity x0) {
        int i2 = x0.b;
        x0.b = i2 + 1;
        return i2;
    }

    /* access modifiers changed from: package-private */
    public class b extends BroadcastReceiver {
        Context a;

        public b(Context c) {
            this.a = c;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
                String packageName = intent.getDataString().substring(8);
                for (int i = 0; i < FullSystemScanActivity.this.h.size(); i++) {
                    for (int k = 0; k < ((List) FullSystemScanActivity.this.h.get(i)).size(); k++) {
                        if (((Virus) ((List) FullSystemScanActivity.this.h.get(i)).get(k)).getPackageName().equals(packageName)) {
                            ((Virus) ((List) FullSystemScanActivity.this.h.get(i)).get(k)).setOperate(true);
                            FullSystemScanActivity.this.s.invalidateViews();
                        }
                    }
                }
                FullSystemScanActivity.this.y.remove(packageName);
                if (FullSystemScanActivity.this.c > 0 && FullSystemScanActivity.this.y.size() == 0) {
                    LeSafeObservable.get(FullSystemScanActivity.this).noticeKilledVirus();
                    FullSystemScanActivity.this.s.setVisibility(8);
                    FullSystemScanActivity.this.m.setText(String.format(FullSystemScanActivity.this.getString(R.string.virusdeal_all), Integer.valueOf(FullSystemScanActivity.this.c)));
                    FullSystemScanActivity.this.m.setVisibility(0);
                    FullSystemScanActivity.this.n.setVisibility(0);
                    FullSystemScanActivity.this.K.setVisibility(8);
                    FullSystemScanActivity.this.Q.setText(R.string.virusdeal_txt);
                    FullSystemScanActivity.this.M.setVisibility(0);
                    FullSystemScanActivity.this.l.setText(String.format(FullSystemScanActivity.this.getString(R.string.virusdeal_txtdesc), Integer.valueOf(FullSystemScanActivity.this.c)));
                    FullSystemScanActivity.this.S.setBackgroundResource(R.drawable.virus_status_green1);
                }
                HttpUtils.removeConfig(AppUtils.getVirusDescKey(packageName), context);
            }
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return true;
        }
        if (this.y.size() > 0) {
            a();
            return true;
        }
        freeManage();
        finish();
        System.gc();
        return true;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a() {
        new CustomDialog.Builder(this).setTitle(R.string.info).setMessage(R.string.hasvirus_back).setColorNegativeButton(true).setColorPositiveButton(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass13 */

            public final void onClick(DialogInterface arg0, int arg1) {
                FullSystemScanActivity.this.b = 0;
                FullSystemScanActivity.this.freeManage();
                FullSystemScanActivity.this.finish();
                System.gc();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass12 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    public void openNetworkSettings() {
        new CustomDialog.Builder(this).setTitle(R.string.set_net_text).setMessage(R.string.notice_no_net_text).setPositiveButton(R.string.set_net_text, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass15 */

            public final void onClick(DialogInterface dialog, int which) {
                WflUtils.startWirelessSettingsActivity(FullSystemScanActivity.this);
                dialog.cancel();
            }
        }).setNegativeButton(R.string.no, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass14 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.cancel();
            }
        }).show();
    }

    public void openNetScan() {
        new CustomDialog.Builder(this).setTitle(R.string.safecenter).setMessage(R.string.netscaning_desc).setPositiveButton(R.string.netscaning_sure, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass18 */

            public final void onClick(DialogInterface dialog, int which) {
                FullSystemScanActivity.this.ae.sendEmptyMessage(7);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass17 */

            public final void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                ScanUtils.isNetScan_cancel = true;
                FullSystemScanActivity.this.ae.sendEmptyMessage(9);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass16 */

            public final void onCancel(DialogInterface dialog) {
                Log.i("msg", "openNetScan onCancel");
            }
        }).show();
    }

    public void setAnimation() {
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        this.r = new b(this);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antivirusfull_system_scan);
        this.S = (ImageView) findViewById(R.id.antivirusfulldisk_icon);
        this.S.setBackgroundResource(R.drawable.virus_status_green1);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antivirusapp_name, (Integer) null);
        this.m = (TextView) findViewById(R.id.novirus_txt);
        this.n = (RelativeLayout) findViewById(R.id.novirus_layout);
        this.s = (ExpandableListView) findViewById(R.id.viruslistview);
        this.P = new AntiVirusDBHelper(this);
        this.N = (LinearLayout) findViewById(R.id.pro_lin);
        this.p = (TextView) findViewById(R.id.cancel_txt);
        this.E = (Button) findViewById(R.id.antivirusnet_stop);
        this.y = new HashMap<>();
        this.F = (Button) findViewById(R.id.antivirusbutton_pause001);
        this.G = (Button) findViewById(R.id.antivirusbutton_stop002);
        this.o = (TextView) findViewById(R.id.antivirusscaning);
        this.l = (TextView) findViewById(R.id.antivirusscaningapp);
        this.a = (ProgressBar) findViewById(R.id.antivirusprocessbar);
        this.C = (Button) findViewById(R.id.antivirusbutton_stop);
        this.D = (Button) findViewById(R.id.antivirusbutton_pause);
        this.j = getResources().getString(R.string.antivirusscan_percent);
        this.k = (TextView) findViewById(R.id.antiviruspercent);
        this.q = (ListView) findViewById(R.id.scanlistview);
        this.t = (TextView) findViewById(R.id.antivirushasScaned);
        this.J = (LinearLayout) findViewById(R.id.antivirusresult_view);
        this.L = (LinearLayout) findViewById(R.id.antivirusscan_btn);
        this.K = (LinearLayout) findViewById(R.id.antivirusdeal_btn);
        this.M = (LinearLayout) findViewById(R.id.antivirusdeal_novirus);
        this.Q = (Button) findViewById(R.id.antivirusbutton_pause010);
        this.J.setVisibility(8);
        this.K.setVisibility(8);
        this.M.setVisibility(8);
        this.l.setVisibility(8);
        this.af = AppUtils.isNeedScan(this);
        this.z = new PermAdapter(this, this.x, this.af);
        this.q.setAdapter((ListAdapter) this.z);
        ScanUtils.isNetScan_cancel = false;
        this.L.setVisibility(8);
        onBtnClick();
        setAnimation();
        registerAction();
        this.ag = false;
        this.I = getResources().getString(R.string.antivirusgoon_scan);
        this.D.setText(this.I);
        this.F.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass19 */

            public final void onClick(View v) {
                if (FullSystemScanActivity.this.y.size() != 0) {
                    for (String name : FullSystemScanActivity.this.y.keySet()) {
                        FullSystemScanActivity.this.uninstall(name);
                    }
                }
            }
        });
        this.G.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass2 */

            public final void onClick(View v) {
                FullSystemScanActivity.this.a();
            }
        });
        this.Q.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass3 */

            public final void onClick(View v) {
                FullSystemScanActivity.this.b = 0;
                FullSystemScanActivity.this.freeManage();
                FullSystemScanActivity.this.finish();
                System.gc();
            }
        });
        this.C.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass4 */

            public final void onClick(View v) {
                if (FullSystemScanActivity.this.af) {
                    FullSystemScanActivity.this.f = false;
                    Message message = new Message();
                    message.what = 11;
                    message.obj = Boolean.valueOf(FullSystemScanActivity.this.f);
                    FullSystemScanActivity.this.ae.sendMessage(message);
                    if (FullSystemScanActivity.this.H != null && FullSystemScanActivity.this.H.isAlive()) {
                        FullSystemScanActivity.this.Y.cancelScan();
                        try {
                            FullSystemScanActivity.this.H.stop();
                        } catch (RuntimeException e) {
                            e.printStackTrace();
                        }
                        FullSystemScanActivity.this.H = null;
                    }
                    FullSystemScanActivity.T(FullSystemScanActivity.this);
                    return;
                }
                FullSystemScanActivity.this.ad.a(false);
                FullSystemScanActivity.this.f = false;
                if (FullSystemScanActivity.this.b != FullSystemScanActivity.this.ac) {
                    FullSystemScanActivity.T(FullSystemScanActivity.this);
                }
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass5 */

            public final void onClick(View v) {
                if (FullSystemScanActivity.this.g <= 5) {
                    return;
                }
                if (FullSystemScanActivity.this.af) {
                    FullSystemScanActivity.a(FullSystemScanActivity.this, System.currentTimeMillis() - FullSystemScanActivity.this.T);
                    FullSystemScanActivity.this.setGoing(false);
                    if (FullSystemScanActivity.this.H != null && FullSystemScanActivity.this.H.isAlive()) {
                        FullSystemScanActivity.this.Y.pauseScan();
                    }
                    FullSystemScanActivity.this.D.setText(R.string.antivirusgoon_scan);
                    FullSystemScanActivity.this.L.setVisibility(0);
                    FullSystemScanActivity.this.N.setVisibility(8);
                    FullSystemScanActivity.this.o.setText(R.string.antivirusspause);
                    return;
                }
                if (FullSystemScanActivity.this.b != FullSystemScanActivity.this.ac) {
                    FullSystemScanActivity.this.L.setVisibility(0);
                    FullSystemScanActivity.this.N.setVisibility(8);
                    FullSystemScanActivity.this.D.setText(R.string.antivirusgoon_scan);
                    FullSystemScanActivity.this.ad.a(false);
                    FullSystemScanActivity.this.o.setText(R.string.antivirusspause);
                }
                FullSystemScanActivity.a(FullSystemScanActivity.this, System.currentTimeMillis() - FullSystemScanActivity.this.T);
            }
        });
        this.D.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass6 */

            public final void onClick(View v) {
                if (FullSystemScanActivity.this.af) {
                    if (FullSystemScanActivity.this.D.getText().toString().equals(FullSystemScanActivity.this.I)) {
                        FullSystemScanActivity.this.setGoing(true);
                        FullSystemScanActivity.this.N.setVisibility(0);
                        FullSystemScanActivity.this.L.setVisibility(8);
                        FullSystemScanActivity.this.o.setText(R.string.antivirusscaning);
                        FullSystemScanActivity.this.T = System.currentTimeMillis();
                        if (FullSystemScanActivity.this.H != null && FullSystemScanActivity.this.H.isAlive()) {
                            FullSystemScanActivity.this.Y.continueScan();
                        }
                    }
                } else if (FullSystemScanActivity.this.D.getText().toString().equals(FullSystemScanActivity.this.I) && FullSystemScanActivity.this.b != FullSystemScanActivity.this.ac) {
                    FullSystemScanActivity.this.N.setVisibility(0);
                    FullSystemScanActivity.this.L.setVisibility(8);
                    FullSystemScanActivity.this.o.setText(R.string.antivirusscaning);
                    FullSystemScanActivity.this.T = System.currentTimeMillis();
                    try {
                        FullSystemScanActivity.this.ad = new d(FullSystemScanActivity.this.b, FullSystemScanActivity.this.ac);
                        FullSystemScanActivity.this.ad.a(true);
                        FullSystemScanActivity.this.ad.start();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        this.E.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass7 */

            public final void onClick(View v) {
                ScanUtils.isNetScan_cancel = true;
                if (!FullSystemScanActivity.this.R) {
                    FullSystemScanActivity.this.ae.sendEmptyMessage(9);
                }
            }
        });
        setScanAnimation();
        this.T = System.currentTimeMillis();
        this.ae.sendEmptyMessage(2);
    }

    public void setGoing(boolean isGoing) {
        Message message = new Message();
        message.what = 11;
        message.obj = Boolean.valueOf(isGoing);
        this.ae.sendMessage(message);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v2) {
        if (v2.getId() != R.id.base_title_left) {
            return;
        }
        if (this.y.size() > 0) {
            a();
            return;
        }
        freeManage();
        finish();
        System.gc();
    }

    public void uninstall(String pkgname) {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pkgname)));
    }

    public void setView() {
        String formatFileSize;
        Log.i("setView", this.e + "");
        this.q.setVisibility(8);
        this.J.setVisibility(8);
        findViewById(R.id.antivirusnetscan_btn).setVisibility(8);
        this.L.setVisibility(8);
        this.t.setVisibility(8);
        if (this.y.size() > 0) {
            this.s.setVisibility(0);
            this.s.setGroupIndicator(null);
            Log.i("msg", "==============" + this.y.size());
            getVirus();
            if (this.h.size() > 0) {
                this.v = new e(this);
                this.s.setAdapter(this.v);
                this.s.expandGroup(0);
            }
        } else {
            this.s.setVisibility(8);
            this.m.setVisibility(8);
            this.n.setVisibility(8);
            this.q.setVisibility(0);
        }
        if (this.y.size() <= 0) {
            this.M.setVisibility(0);
            if (PreferenceManager.getDefaultSharedPreferences(this).getInt("netScan_switch", 1) != 1 || !ScanUtils.isNetworkAvailable(this) || ScanUtils.isNetScan_cancel || this.u == null) {
                stopAnimation();
                this.S.setBackgroundResource(R.drawable.virus_status_green1);
                this.q.setVisibility(8);
                this.m.setVisibility(0);
                this.n.setVisibility(0);
                if (this.U == 0) {
                    this.U = System.currentTimeMillis() - this.T;
                }
                if (this.af) {
                    this.m.setText(String.format(getString(R.string.scanfinish1), Integer.valueOf(this.V), Long.valueOf((this.U / 1000) + 1)));
                    return;
                }
                this.m.setText(String.format(getString(R.string.scanfinish1), Integer.valueOf(this.ab.size()), Long.valueOf((this.U / 1000) + 1)));
                return;
            }
            stopAnimation();
            this.S.setBackgroundResource(R.drawable.virus_status_green1);
            this.q.setVisibility(8);
            this.m.setVisibility(0);
            this.n.setVisibility(0);
            if (this.U == 0) {
                this.U = System.currentTimeMillis() - this.T;
            }
            TextView textView = this.m;
            String string = getString(R.string.scanfinish);
            Object[] objArr = new Object[3];
            objArr[0] = Integer.valueOf(this.V);
            objArr[1] = Long.valueOf((this.U / 1000) + 1);
            if (this.O.size() > 3) {
                formatFileSize = HttpUtils.usenet;
            } else {
                formatFileSize = Formatter.formatFileSize(this, (long) (this.O.size() * 40));
            }
            objArr[2] = formatFileSize;
            textView.setText(String.format(string, objArr));
            return;
        }
        stopAnimation();
        this.S.setBackgroundResource(R.drawable.virus_status_red1);
        this.K.setVisibility(0);
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        registerReceiver(this.r, filter);
    }

    public List<Virus> getVirus() {
        this.w = new ArrayList();
        List<String> errorList = new ArrayList<>();
        for (String virusPackageName : this.y.keySet()) {
            try {
                ApplicationInfo mAppInfo = getPackageManager().getApplicationInfo(virusPackageName, 8192);
                Virus virus = new Virus(virusPackageName, mAppInfo.loadLabel(getPackageManager()).toString(), false);
                QScanResultEntity result = this.y.get(virusPackageName);
                if (result != null) {
                    virus.setVirusName(result.name);
                    virus.setType(0);
                    virus.setVirusDesc(result.discription);
                } else {
                    virus.setType(0);
                    virus.setVirusName(mAppInfo.loadLabel(getPackageManager()).toString());
                    if (!HttpUtils.execService(AppUtils.getVirusDescKey(virusPackageName), this).equals("")) {
                        virus.setVirusDesc(HttpUtils.execService(AppUtils.getVirusDescKey(virusPackageName), this));
                    } else {
                        virus.setVirusDesc(getString(R.string.antivirusvirusdesc_default));
                    }
                }
                this.w.add(virus);
            } catch (Exception e2) {
                errorList.add(virusPackageName);
                Log.i("p_name", "==============errorListPackageName==" + virusPackageName);
                new ScanUtils().ExecError(virusPackageName, this);
                e2.printStackTrace();
            }
        }
        for (String pkg : errorList) {
            this.y.remove(pkg);
        }
        if (this.w.size() > 0) {
            Log.i("msg", "==============" + this.w.size() + "========" + this.c);
            this.i.add(String.format(getString(R.string.antivirusvirus_suredesc), Integer.valueOf(this.c)));
            this.l.setText(String.format(getString(R.string.antivirusscan_reslut2), Integer.valueOf(this.c)));
            this.h.add(this.w);
        }
        return this.w;
    }

    public void onBtnClick() {
        this.s.setOnChildClickListener(new ExpandableListView.OnChildClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.AnonymousClass8 */

            public final boolean onChildClick(ExpandableListView parent, View v, int groupPosition, int childPosition, long id) {
                Virus vir = (Virus) ((List) FullSystemScanActivity.this.h.get(groupPosition)).get(childPosition);
                if (vir.isOperate()) {
                    return false;
                }
                Intent intent = new Intent(FullSystemScanActivity.this, VirusInfo.class);
                intent.putExtra(QueryPermissions.PACKAGENAME, vir.getPackageName());
                intent.putExtra("desc", vir.getVirusDesc());
                intent.putExtra("type", vir.getType());
                FullSystemScanActivity.this.startActivity(intent);
                return false;
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        Log.i("mm", "onStart");
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onRestart() {
        super.onRestart();
        Log.i("setView", this.e + "==onRestart");
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        Log.i("mm", "onPause");
        TrackEvent.trackPause(this);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        TrackEvent.trackResume(this);
        super.onResume();
    }

    public void freeManage() {
        this.ag = true;
        try {
            if (this.ad != null) {
                this.ad.a(false);
                this.ad = null;
            }
            if (this.Y != null) {
                this.Y.cancelScan();
                this.Y.freeScanner();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        Log.i("mm", "onStop");
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onDestroy() {
        super.onDestroy();
        setGoing(false);
        unregisterReceiver(this.r);
        try {
            if (this.Y != null) {
                this.Y.freeScanner();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends Thread {
        c() {
        }

        public final void run() {
            FullSystemScanActivity.this.Y.scanInstalledPackages(new a(), false);
        }
    }

    /* access modifiers changed from: private */
    public class e extends BaseExpandableListAdapter {
        private LayoutInflater b;

        public e(Context context) {
            this.b = LayoutInflater.from(context);
        }

        public final Object getChild(int groupPosition, int childPosition) {
            return ((List) FullSystemScanActivity.this.h.get(groupPosition)).get(childPosition);
        }

        public final long getChildId(int groupPosition, int childPosition) {
            return (long) childPosition;
        }

        public final int getChildrenCount(int groupPosition) {
            return ((List) FullSystemScanActivity.this.h.get(groupPosition)).size();
        }

        public final View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            a holder;
            Drawable drawable;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.antivirusshowviruwitem, (ViewGroup) null);
                holder = new a();
                holder.a = (TextView) convertView.findViewById(R.id.antivirusappname);
                holder.b = (TextView) convertView.findViewById(R.id.antivirusvirusname);
                holder.c = (ImageView) convertView.findViewById(R.id.antivirusviruscheckbox);
                holder.f = (TextView) convertView.findViewById(R.id.antivirusshowdesc);
                holder.d = (ImageView) convertView.findViewById(R.id.antiviruspkg_icon);
                holder.e = (ImageView) convertView.findViewById(R.id.del_icon);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            final Virus virus = (Virus) ((List) FullSystemScanActivity.this.h.get(groupPosition)).get(childPosition);
            holder.a.setText(virus.getAppName());
            if (virus.getType() == 0) {
                holder.b.setText(String.format(FullSystemScanActivity.this.getString(R.string.antivirusvirusname), virus.getVirusName()));
            } else {
                holder.b.setText(String.format(FullSystemScanActivity.this.getString(R.string.antivirusvirus_carefuluse), virus.getVirusName()));
            }
            FullSystemScanActivity.this.getResources().getDrawable(R.drawable.icon3);
            try {
                drawable = FullSystemScanActivity.this.getPackageManager().getApplicationInfo(virus.getPackageName(), 8192).loadIcon(FullSystemScanActivity.this.getPackageManager());
            } catch (Exception e) {
                e.printStackTrace();
                drawable = FullSystemScanActivity.this.getResources().getDrawable(R.drawable.icon3);
            }
            holder.d.setImageDrawable(drawable);
            if (virus.isOperate()) {
                holder.f.setText(R.string.uninstall);
                holder.e.setVisibility(0);
                holder.f.setVisibility(8);
                holder.f.setEnabled(false);
            } else {
                holder.e.setVisibility(8);
                holder.f.setVisibility(0);
                holder.f.setEnabled(true);
                Log.i("type", "type==" + virus.getType());
                if (virus.getType() == 0) {
                    holder.f.setText(R.string.uninstall);
                    holder.f.setEnabled(true);
                } else if (virus.getType() == 1) {
                    holder.f.setText(R.string.uninstall);
                    holder.f.setEnabled(true);
                }
            }
            holder.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.e.AnonymousClass1 */

                public final void onClick(View v) {
                    FullSystemScanActivity.this.forwardAppInfo(virus.getPackageName());
                }
            });
            holder.f.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.FullSystemScanActivity.e.AnonymousClass2 */

                public final void onClick(View v) {
                    FullSystemScanActivity.this.removePackageActivity(virus.getPackageName());
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return FullSystemScanActivity.this.i.get(groupPosition);
        }

        public final int getGroupCount() {
            return FullSystemScanActivity.this.i.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            b holder;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.antivirusshowviruwparent, (ViewGroup) null);
                holder = new b();
                holder.a = (TextView) convertView.findViewById(R.id.antivirusvirus_type);
                convertView.setTag(holder);
            } else {
                holder = (b) convertView.getTag();
            }
            holder.a.setText((CharSequence) FullSystemScanActivity.this.i.get(groupPosition));
            return convertView;
        }

        public final boolean hasStableIds() {
            return false;
        }

        public final boolean isChildSelectable(int groupPosition, int childPosition) {
            return true;
        }

        class b {
            TextView a;

            b() {
            }
        }

        class a {
            TextView a;
            TextView b;
            ImageView c;
            ImageView d;
            ImageView e;
            TextView f;

            a() {
            }
        }
    }

    public void forwardAppInfo(String pkgName) {
        ComponentName comp = new ComponentName("com.android.settings", "com.android.settings.InstalledAppDetails");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setComponent(comp);
        intent.putExtra("pkg", pkgName);
        startActivity(intent);
    }

    public void removePackageActivity(String pkgName) {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pkgName)));
    }

    public void setScanAnimation() {
        this.X = (ImageView) findViewById(R.id.zoom_icon1);
        this.W = new TranslateAnimation(20.0f, 20.0f, 0.0f, 70.0f);
        this.W.setDuration(1500);
        this.W.setRepeatCount(-1);
        this.W.setRepeatMode(2);
        this.W.setFillAfter(true);
    }

    public void startAnimation() {
        this.X.setAnimation(this.W);
        this.X.setVisibility(0);
        this.W.start();
    }

    public void stopAnimation() {
        this.X.clearAnimation();
        this.X.setVisibility(8);
    }

    class a extends QScanListener {
        a() {
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onScanStarted() {
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onPackageScanProgress(int progress, QScanResultEntity result) {
            if (!result.packageName.equals(TrafficStatsService.PACKAGE_NAME)) {
                Log.i("demo", progress + ">>" + result.softName);
                Message message = new Message();
                message.what = 0;
                message.arg1 = progress;
                message.obj = result;
                FullSystemScanActivity.this.ae.sendMessage(message);
            }
            try {
                if (result.apkType == 1) {
                    return;
                }
                if (result.type == 3) {
                    FullSystemScanActivity.this.A = true;
                    FullSystemScanActivity.Z(FullSystemScanActivity.this);
                    FullSystemScanActivity.this.y.put(result.packageName, result);
                    HttpUtils.UpdateConfig(AppUtils.getVirusDescKey(result.packageName), result.discription, FullSystemScanActivity.this);
                    return;
                }
                Appinfo info = FullSystemScanActivity.this.P.getAppInfo(result.packageName);
                if (info != null) {
                    FullSystemScanActivity.this.O.add(info);
                }
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onSdcardScanProgress(int progress, QScanResultEntity result) {
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onCloudScan() {
            FullSystemScanActivity.this.Z = true;
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onCloudScanError(int errCode) {
            FullSystemScanActivity.this.Z = false;
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onScanPaused() {
            FullSystemScanActivity.this.Z = false;
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onScanContinue() {
            FullSystemScanActivity.this.aa = false;
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onScanCanceled() {
            FullSystemScanActivity.this.Z = false;
            FullSystemScanActivity.this.aa = true;
        }

        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
        public final void onScanFinished(ArrayList<QScanResultEntity> arrayList) {
            if (!FullSystemScanActivity.this.aa) {
                AppUtils.isNeedScan(FullSystemScanActivity.this);
                Log.i("mes", "onScanFinished====");
                Message msg = new Message();
                msg.what = 1;
                FullSystemScanActivity.this.ae.sendMessage(msg);
                FullSystemScanActivity.this.Z = false;
            }
            FullSystemScanActivity.this.aa = false;
        }
    }

    /* access modifiers changed from: package-private */
    public class d extends Thread {
        int a;
        int b;
        boolean c;

        public d(int pos, int totalapp) {
            this.a = pos;
            this.b = totalapp;
        }

        public final void a(boolean isGoing) {
            this.c = isGoing;
            Message message = new Message();
            message.what = 11;
            message.obj = Boolean.valueOf(isGoing);
            FullSystemScanActivity.this.ae.sendMessage(message);
        }

        public final void run() {
            while (this.c && this.a < this.b) {
                ApplicationInfo packageInfo = (ApplicationInfo) FullSystemScanActivity.this.ab.get(this.a);
                this.a++;
                Message message = new Message();
                message.what = 0;
                message.getData().putString(AppDatabase.DB_APP, packageInfo.sourceDir);
                message.getData().putBoolean("isvirus", FullSystemScanActivity.this.y.containsKey(packageInfo.packageName));
                try {
                    Appinfo info = FullSystemScanActivity.this.P.getAppInfo(packageInfo.packageName);
                    Log.i("info", info + "==" + packageInfo.packageName);
                    if (info != null) {
                        FullSystemScanActivity.this.O.add(info);
                    }
                    Thread.sleep(10);
                    FullSystemScanActivity.this.ae.sendMessage(message);
                } catch (Exception e1) {
                    e1.printStackTrace();
                }
            }
            Log.i("mm", "pos==" + this.a + "toal==" + this.b);
            if (this.a == this.b) {
                Message msg = new Message();
                msg.what = 1;
                FullSystemScanActivity.this.ae.sendMessage(msg);
            }
        }
    }
}
