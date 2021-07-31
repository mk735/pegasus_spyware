package com.lenovo.safecenter.antivirus.views;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
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
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.MainActivity;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.domain.PermAdapter;
import com.lenovo.safecenter.antivirus.domain.ScanInfo;
import com.lenovo.safecenter.antivirus.domain.Virus;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.utils.ScanUtils;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.Untils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ScanVirusActivity extends BaseTitleActivity {
    public static final String TAG = "FullSystemScanActivity";
    private ImageView A;
    private Handler B = new Handler() {
        /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 9:
                    String v_str = HttpUtils.execService("viruspkgname", ScanVirusActivity.this);
                    if (v_str.equals("")) {
                        Toast.makeText(ScanVirusActivity.this, (int) R.string.done, 0).show();
                        ScanVirusActivity.this.finish();
                        return;
                    }
                    ScanVirusActivity.this.o.clear();
                    ScanVirusActivity.this.a = v_str.split(",").length;
                    for (String str : v_str.split(",")) {
                        ScanVirusActivity.this.o.add(str);
                    }
                    ScanVirusActivity.this.g.setVisibility(8);
                    ScanVirusActivity.this.d.setVisibility(0);
                    ScanVirusActivity.this.a = ScanVirusActivity.this.o.size();
                    ScanVirusActivity.this.setView();
                    return;
                default:
                    return;
            }
        }
    };
    private NotificationManager C;
    private int a = 0;
    private List<List<Virus>> b = new ArrayList();
    private List<String> c = new ArrayList();
    private TextView d;
    private TextView e;
    private RelativeLayout f;
    private TextView g;
    private ListView h;
    private a i;
    private ExpandableListView j;
    private TextView k;
    private b l;
    private List<Virus> m;
    private List<ScanInfo> n = new ArrayList();
    private ArrayList<String> o;
    private PermAdapter p;
    private Button q;
    private Button r;
    private LinearLayout s;
    private LinearLayout t;
    private LinearLayout u;
    private LinearLayout v;
    private LinearLayout w;
    private List<Appinfo> x = new ArrayList();
    private ImageView y;
    private TranslateAnimation z;

    /* access modifiers changed from: package-private */
    public class a extends BroadcastReceiver {
        Context a;

        public a(Context c) {
            this.a = c;
        }

        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
                String packageName = intent.getDataString().substring(8);
                for (int i = 0; i < ScanVirusActivity.this.b.size(); i++) {
                    for (int k = 0; k < ((List) ScanVirusActivity.this.b.get(i)).size(); k++) {
                        if (((Virus) ((List) ScanVirusActivity.this.b.get(i)).get(k)).getPackageName().equals(packageName)) {
                            ((Virus) ((List) ScanVirusActivity.this.b.get(i)).get(k)).setOperate(true);
                            ScanVirusActivity.this.j.invalidateViews();
                        }
                    }
                }
                for (int i2 = ScanVirusActivity.this.o.size() - 1; i2 >= 0; i2--) {
                    if (((String) ScanVirusActivity.this.o.get(i2)).equals(packageName)) {
                        ScanVirusActivity.this.o.remove(i2);
                    }
                }
                if (ScanVirusActivity.this.a <= 0 || ScanVirusActivity.this.o.size() != 0) {
                    ScanVirusActivity.this.setDealTxt();
                } else {
                    ScanVirusActivity.this.j.setVisibility(0);
                    ScanVirusActivity.this.q.setText(R.string.Complete);
                    ScanVirusActivity.this.d.setText(R.string.detail3_killed_virus_home_page);
                    ScanVirusActivity.this.y.setBackgroundResource(R.drawable.virus_status_green1);
                }
                HttpUtils.removeConfig(AppUtils.getVirusDescKey(packageName), context);
            }
        }
    }

    public void setDealTxt() {
        SpannableString spannable = new SpannableString(String.format(getString(R.string.detail3_has_virus_home_page), Integer.valueOf(this.o.size())));
        if (Const.getScreenHeight() == 480) {
            spannable.setSpan(new AbsoluteSizeSpan(30), 0, String.valueOf(this.o.size()).length() + 0, 33);
        } else {
            spannable.setSpan(new AbsoluteSizeSpan(48), 0, String.valueOf(this.o.size()).length() + 0, 33);
        }
        spannable.setSpan(new ForegroundColorSpan(-65536), 0, String.valueOf(this.o.size()).length() + 0, 0);
        spannable.setSpan(new StyleSpan(2), 0, String.valueOf(this.o.size()).length() + 0, 33);
        this.d.setText(spannable);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        this.i = new a(this);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.antivirusfull_system_scan);
        this.C = (NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION);
        this.C.cancel(554);
        this.y = (ImageView) findViewById(R.id.antivirusfulldisk_icon);
        this.y.setBackgroundResource(R.drawable.virus_status_green1);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.antivirusapp_name, (Integer) null);
        this.e = (TextView) findViewById(R.id.novirus_txt);
        this.f = (RelativeLayout) findViewById(R.id.novirus_layout);
        this.j = (ExpandableListView) findViewById(R.id.viruslistview);
        this.w = (LinearLayout) findViewById(R.id.pro_lin);
        this.o = new ArrayList<>();
        this.q = (Button) findViewById(R.id.antivirusbutton_pause001);
        this.r = (Button) findViewById(R.id.antivirusbutton_stop002);
        this.g = (TextView) findViewById(R.id.antivirusscaning);
        this.d = (TextView) findViewById(R.id.antivirusscaningapp);
        this.h = (ListView) findViewById(R.id.scanlistview);
        this.k = (TextView) findViewById(R.id.antivirushasScaned);
        this.s = (LinearLayout) findViewById(R.id.antivirusresult_view);
        this.u = (LinearLayout) findViewById(R.id.antivirusscan_btn);
        this.t = (LinearLayout) findViewById(R.id.antivirusdeal_btn);
        this.v = (LinearLayout) findViewById(R.id.antivirusdeal_novirus);
        this.s.setVisibility(8);
        this.t.setVisibility(0);
        this.v.setVisibility(8);
        this.g.setVisibility(8);
        this.w.setVisibility(8);
        this.r.setVisibility(8);
        this.p = new PermAdapter(this, this.n, true);
        this.h.setAdapter((ListAdapter) this.p);
        ScanUtils.isNetScan_cancel = false;
        this.u.setVisibility(8);
        onBtnClick();
        registerAction();
        this.q.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.AnonymousClass2 */

            public final void onClick(View v) {
                if (ScanVirusActivity.this.o.size() == 0) {
                    if (!ScanVirusActivity.this.getIntent().getBooleanExtra("from_healthcheck", false)) {
                        ScanVirusActivity.this.finish();
                        ScanVirusActivity.this.startActivity(new Intent(ScanVirusActivity.this, MainActivity.class));
                    } else {
                        ScanVirusActivity.this.finish();
                    }
                }
                Iterator i$ = ScanVirusActivity.this.o.iterator();
                while (i$.hasNext()) {
                    ScanVirusActivity.this.uninstall((String) i$.next());
                }
            }
        });
        this.q.setText(R.string.clear);
        setScanAnimation();
        this.B.sendEmptyMessage(9);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v2) {
        if (v2.getId() != R.id.base_title_left) {
            return;
        }
        if (this.o.size() <= 0 || getIntent().getBooleanExtra("from_healthcheck", false)) {
            finish();
        } else {
            a();
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return true;
        }
        if (this.o.size() <= 0 || getIntent().getBooleanExtra("from_healthcheck", false)) {
            finish();
            return true;
        }
        a();
        return true;
    }

    private void a() {
        new CustomDialog.Builder(this).setTitle(R.string.info).setMessage(R.string.hasvirus_back).setColorNegativeButton(true).setColorPositiveButton(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.AnonymousClass4 */

            public final void onClick(DialogInterface arg0, int arg1) {
                ScanVirusActivity.this.finish();
                ScanVirusActivity.this.startActivity(new Intent(ScanVirusActivity.this, MainActivity.class));
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.AnonymousClass3 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    public void uninstall(String pkgname) {
        startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pkgname)));
    }

    public void setView() {
        this.h.setVisibility(8);
        this.s.setVisibility(8);
        findViewById(R.id.antivirusnetscan_btn).setVisibility(8);
        this.u.setVisibility(8);
        this.k.setVisibility(8);
        setDealTxt();
        if (this.o.size() > 0) {
            this.j.setVisibility(0);
            this.j.setGroupIndicator(null);
            Log.i("msg", "==============" + this.o.size());
            getVirus();
            if (this.b.size() > 0) {
                this.l = new b(this);
                this.j.setAdapter(this.l);
                this.j.expandGroup(0);
            }
        } else {
            this.j.setVisibility(8);
            this.e.setVisibility(8);
            this.f.setVisibility(8);
            this.h.setVisibility(0);
        }
        if (this.o.size() <= 0) {
            this.v.setVisibility(0);
            if (PreferenceManager.getDefaultSharedPreferences(this).getInt("netScan_switch", 1) == 1 && ScanUtils.isNetworkAvailable(this) && !ScanUtils.isNetScan_cancel) {
                stopAnimation();
                this.y.setBackgroundResource(R.drawable.virus_status_green1);
                this.h.setVisibility(8);
                this.e.setVisibility(0);
                this.f.setVisibility(0);
                this.e.setText(String.format(getString(R.string.scanfinish), Integer.valueOf(this.a), 11, Formatter.formatFileSize(this, (long) (this.x.size() * 40))));
                return;
            }
            return;
        }
        stopAnimation();
        this.y.setBackgroundResource(R.drawable.virus_status_red1);
        this.t.setVisibility(0);
    }

    public void registerAction() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addDataScheme("package");
        registerReceiver(this.i, filter);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0073  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.lenovo.safecenter.antivirus.domain.Virus> getVirus() {
        /*
        // Method dump skipped, instructions count: 257
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.antivirus.views.ScanVirusActivity.getVirus():java.util.List");
    }

    public void onBtnClick() {
        this.j.setOnChildClickListener(new ExpandableListView.OnChildClickListener() {
            /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.AnonymousClass5 */

            public final boolean onChildClick(ExpandableListView parent, View v, int groupPosition, int childPosition, long id) {
                Virus vir = (Virus) ((List) ScanVirusActivity.this.b.get(groupPosition)).get(childPosition);
                if (vir.isOperate()) {
                    return false;
                }
                Intent intent = new Intent(ScanVirusActivity.this, VirusInfo.class);
                intent.putExtra(QueryPermissions.PACKAGENAME, vir.getPackageName());
                intent.putExtra("desc", vir.getVirusDesc());
                intent.putExtra("type", vir.getType());
                ScanVirusActivity.this.startActivity(intent);
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
        super.onResume();
        TrackEvent.trackResume(this);
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
        unregisterReceiver(this.i);
        new Thread() {
            /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.AnonymousClass6 */

            public final void run() {
                ScanVirusActivity.this.notifyVirus();
            }
        }.start();
    }

    public void notifyVirus() {
        try {
            String[] virus_pkgname_split = HttpUtils.execService("viruspkgname", this).split(",");
            StringBuilder sb = new StringBuilder();
            for (String str : virus_pkgname_split) {
                sb.append(getPackageManager().getApplicationInfo(str, 8192).loadLabel(getPackageManager())).append(Untils.PAUSE);
            }
            Intent showVirus = new Intent(this, ScanVirusActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("fromnotify", "notify");
            showVirus.putExtras(bundle);
            showVirus.setFlags(536870912);
            PendingIntent intent = PendingIntent.getActivity(this, 0, showVirus, 0);
            Notification mNotification = new Notification(R.drawable.antiviruswarning, getString(R.string.antivirusvirus_notify), System.currentTimeMillis());
            mNotification.flags = 10;
            mNotification.setLatestEventInfo(this, getString(R.string.antivirusvirus_notify), String.format(getString(R.string.antivirusvirus_notifycontent), sb.deleteCharAt(sb.length() - 1).toString()), intent);
            this.C.notify(554, mNotification);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public class b extends BaseExpandableListAdapter {
        private LayoutInflater b;

        public b(Context context) {
            this.b = LayoutInflater.from(context);
        }

        public final Object getChild(int groupPosition, int childPosition) {
            return ((List) ScanVirusActivity.this.b.get(groupPosition)).get(childPosition);
        }

        public final long getChildId(int groupPosition, int childPosition) {
            return (long) childPosition;
        }

        public final int getChildrenCount(int groupPosition) {
            return ((List) ScanVirusActivity.this.b.get(groupPosition)).size();
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
            final Virus virus = (Virus) ((List) ScanVirusActivity.this.b.get(groupPosition)).get(childPosition);
            holder.a.setText(virus.getAppName());
            if (virus.getType() == 0) {
                holder.b.setText(String.format(ScanVirusActivity.this.getString(R.string.antivirusvirusname), virus.getVirusName()));
            } else {
                holder.b.setText(String.format(ScanVirusActivity.this.getString(R.string.antivirusvirus_carefuluse), virus.getVirusName()));
            }
            ScanVirusActivity.this.getResources().getDrawable(R.drawable.icon3);
            try {
                drawable = ScanVirusActivity.this.getPackageManager().getApplicationInfo(virus.getPackageName(), 8192).loadIcon(ScanVirusActivity.this.getPackageManager());
            } catch (Exception e) {
                e.printStackTrace();
                drawable = ScanVirusActivity.this.getResources().getDrawable(R.drawable.icon3);
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
                /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.b.AnonymousClass1 */

                public final void onClick(View v) {
                    ScanVirusActivity.this.forwardAppInfo(virus.getPackageName());
                }
            });
            holder.f.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.antivirus.views.ScanVirusActivity.b.AnonymousClass2 */

                public final void onClick(View v) {
                    ScanVirusActivity.this.removePackageActivity(virus.getPackageName());
                }
            });
            return convertView;
        }

        public final Object getGroup(int groupPosition) {
            return ScanVirusActivity.this.c.get(groupPosition);
        }

        public final int getGroupCount() {
            return ScanVirusActivity.this.c.size();
        }

        public final long getGroupId(int groupPosition) {
            return (long) groupPosition;
        }

        public final View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            C0003b holder;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.antivirusshowviruwparent, (ViewGroup) null);
                holder = new C0003b();
                holder.a = (TextView) convertView.findViewById(R.id.antivirusvirus_type);
                convertView.setTag(holder);
            } else {
                holder = (C0003b) convertView.getTag();
            }
            holder.a.setText((CharSequence) ScanVirusActivity.this.c.get(groupPosition));
            return convertView;
        }

        public final boolean hasStableIds() {
            return false;
        }

        public final boolean isChildSelectable(int groupPosition, int childPosition) {
            return true;
        }

        /* renamed from: com.lenovo.safecenter.antivirus.views.ScanVirusActivity$b$b  reason: collision with other inner class name */
        class C0003b {
            TextView a;

            C0003b() {
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
        this.A = (ImageView) findViewById(R.id.zoom_icon1);
        this.z = new TranslateAnimation(20.0f, 20.0f, 0.0f, 70.0f);
        this.z.setDuration(1500);
        this.z.setRepeatCount(-1);
        this.z.setRepeatMode(2);
        this.z.setFillAfter(true);
    }

    public void startAnimation() {
        this.A.setAnimation(this.z);
        this.A.setVisibility(0);
        this.z.start();
    }

    public void stopAnimation() {
        this.A.clearAnimation();
        this.A.setVisibility(8);
    }
}
