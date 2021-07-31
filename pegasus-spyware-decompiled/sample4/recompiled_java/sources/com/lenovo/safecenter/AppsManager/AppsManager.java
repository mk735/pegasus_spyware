package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.AppPerInfo;
import com.lenovo.safecenter.support.ProcessInfo;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AppsManager extends Activity {
    private ListView a;
    private List<AppPerInfo> b;
    private List<ProcessInfo> c;
    private PackageManager d;
    private AppDatabase e;
    private myAdapter f;
    private ProgressBar g;
    private TextView h;
    private TextView i;
    private TextView j;
    private LinearLayout k;
    private GridView l;
    private TextView m;
    private TextView n;
    private ActivityManager o;
    private DisplayMetrics p;
    private int q;
    private GridAdapter r;
    private int s = -1;
    private a t;
    private String u = AppDatabase.PERM_TYPE_PRIVCY;
    private boolean v;
    private boolean w;
    private int x;
    private Handler y = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.AppsManager.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    AppsManager.this.n.setText(String.format(AppsManager.this.getString(R.string.trusted_apps_count), Integer.valueOf(AppsManager.this.x), Integer.valueOf(AppsManager.this.b.size() - AppsManager.this.x)));
                    AppsManager.this.g.setVisibility(8);
                    AppsManager.this.f = new myAdapter(AppsManager.this, AppsManager.this.b);
                    AppsManager.this.a.setAdapter((ListAdapter) AppsManager.this.f);
                    if (AppsManager.this.b.size() == 0) {
                        AppsManager.this.i.setVisibility(0);
                        return;
                    } else {
                        AppsManager.this.i.setVisibility(8);
                        return;
                    }
                case 1:
                default:
                    return;
                case 2:
                    AppsManager.this.n.setText(String.format(AppsManager.this.getString(R.string.trusted_apps_count), Integer.valueOf(AppsManager.this.x), Integer.valueOf(AppsManager.this.b.size() - AppsManager.this.x)));
                    return;
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getIntent() != null) {
            this.u = getIntent().getStringExtra("permType");
        }
        setContentView(R.layout.testperssion);
        this.w = WflUtils.isRoot();
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.trust_apps);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.AppsManager.AnonymousClass2 */

            public final void onClick(View v) {
                if (AppsManager.this.v) {
                    AppsManager.this.setResult(0);
                }
                AppsManager.this.finish();
            }
        });
        this.m = (TextView) findViewById(R.id.unroot_tip);
        this.n = (TextView) findViewById(R.id.trusted_apps_des);
        if (this.w) {
            this.n.setVisibility(0);
        } else {
            this.m.setVisibility(0);
            this.m.setText(getString(R.string.unobtain_root2));
        }
        this.a = (ListView) findViewById(R.id.perssion_listView);
        this.h = (TextView) findViewById(R.id.process_empty);
        this.i = (TextView) findViewById(R.id.app_empty);
        this.j = (TextView) findViewById(R.id.onkillkey);
        this.l = (GridView) findViewById(R.id.process_gridview);
        this.g = (ProgressBar) findViewById(R.id.pkg_progressbar);
        this.k = (LinearLayout) findViewById(R.id.gridlin);
        this.d = getPackageManager();
        this.e = new AppDatabase(this);
        this.o = (ActivityManager) getSystemService("activity");
        this.p = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(this.p);
        this.q = 50;
        this.l.setEmptyView(this.h);
        onClick();
        initData();
        this.t = new a(this, (byte) 0);
        registerReceiver(this.t, new IntentFilter("com.lenovo.safecenter.refreshAppsManager"));
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            if (this.v) {
                setResult(0);
            }
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        unregisterReceiver(this.t);
        this.t = null;
        super.onDestroy();
    }

    public void initData() {
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.AppsManager.AnonymousClass3 */

            public final void run() {
                AppsManager.this.b = AppsManager.this.e.getAppPers(AppsManager.this.u);
                AppsManager.this.x = AppsManager.this.e.getTrustedApps(AppsManager.this.u);
                AppsManager.this.y.sendMessage(AppsManager.this.y.obtainMessage(0));
            }
        }.start();
    }

    public void notifyUpdate() {
        int num;
        if (this.c.size() % 2 == 0) {
            num = this.c.size() / 2;
        } else {
            num = (this.c.size() / 2) + 1;
        }
        if (num <= 6) {
            int width = this.q * 6;
            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) this.k.getLayoutParams();
            lp.width = width;
            this.k.setLayoutParams(lp);
            this.l.setNumColumns(6);
            Log.i("ww", (this.c.size() / 2) + "==" + width + "itemWidth=" + this.q + "processList.size()==" + this.c.size() + "dm.widthPixels" + this.p.widthPixels + "num==" + num);
            return;
        }
        this.l.setNumColumns(num);
        int width2 = this.q * num;
        FrameLayout.LayoutParams lp2 = (FrameLayout.LayoutParams) this.k.getLayoutParams();
        lp2.width = width2;
        this.k.setLayoutParams(lp2);
        Log.i("ww", (this.c.size() / 2) + "==" + width2 + "itemWidth=" + this.q + "processList.size()==" + this.c.size() + "dm.widthPixels" + this.p.widthPixels + "num==" + num);
    }

    public void onClick() {
        this.a.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.AppsManager.AppsManager.AnonymousClass4 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                AppsManager.this.s = position;
                Intent it = new Intent(AppsManager.this, AppPermManager.class);
                it.putExtra("permType", AppsManager.this.u);
                it.putExtra(QueryPermissions.PACKAGENAME, ((AppPerInfo) AppsManager.this.b.get(position)).pkgName);
                AppsManager.this.startActivityForResult(it, 0);
            }
        });
        this.l.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.AppsManager.AppsManager.AnonymousClass5 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                if (AppsManager.this.c.size() > 0) {
                    AppsManager.this.o.killBackgroundProcesses(((ProcessInfo) AppsManager.this.c.get(position)).getAppInfo().packageName);
                    AppsManager.this.c.remove(position);
                    AppsManager.this.notifyUpdate();
                    AppsManager.this.r.notifyDataSetChanged();
                    AppsManager.this.y.sendEmptyMessageDelayed(1, 500);
                }
            }
        });
        this.j.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.AppsManager.AnonymousClass6 */

            public final void onClick(View v) {
                AppsManager.this.c.size();
                for (int i = AppsManager.this.c.size() - 1; i >= 0; i--) {
                    AppsManager.this.o.killBackgroundProcesses(((ProcessInfo) AppsManager.this.c.get(i)).getAppInfo().packageName);
                    AppsManager.this.c.remove(i);
                    AppsManager.this.r.notifyDataSetChanged();
                }
                AppsManager.this.y.sendEmptyMessageDelayed(1, 1000);
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (this.s == -1) {
            return;
        }
        if (resultCode == 3) {
            AppPerInfo newInfo = this.e.getAppPerInfo(this.b.get(this.s).pkgName, this.u);
            if (newInfo != null) {
                this.b.get(this.s).forbidCount = newInfo.forbidCount;
                this.b.get(this.s).forbidmes = newInfo.forbidmes;
                this.b.get(this.s).hasNotice = newInfo.hasNotice;
                this.b.get(this.s).isTrust = newInfo.isTrust;
                this.b.get(this.s).totalCount = newInfo.totalCount;
                this.b.get(this.s).totaldmes = newInfo.totaldmes;
                this.b.get(this.s).isUpload = newInfo.isUpload;
                this.a.invalidateViews();
            }
        } else if (resultCode == 4) {
            this.v = true;
            this.x = this.e.getTrustedApps(this.u);
            this.y.sendMessage(this.y.obtainMessage(2));
            AppPerInfo newInfo2 = this.e.getAppPerInfo(this.b.get(this.s).pkgName, this.u);
            if (newInfo2 != null) {
                this.b.get(this.s).forbidCount = newInfo2.forbidCount;
                this.b.get(this.s).forbidmes = newInfo2.forbidmes;
                this.b.get(this.s).hasNotice = newInfo2.hasNotice;
                this.b.get(this.s).isTrust = newInfo2.isTrust;
                this.b.get(this.s).totalCount = newInfo2.totalCount;
                this.b.get(this.s).totaldmes = newInfo2.totaldmes;
                this.b.get(this.s).isUpload = newInfo2.isUpload;
                this.a.invalidateViews();
            }
        }
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(AppsManager x0, byte b) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            AppsManager.this.initData();
        }
    }

    public List<ProcessInfo> getFilteredApps() {
        List<ProcessInfo> processList = new ArrayList<>();
        List<ApplicationInfo> pAppList = getPackageManager().getInstalledApplications(8192);
        List<ActivityManager.RunningAppProcessInfo> procList = this.o.getRunningAppProcesses();
        if (procList == null || procList.size() == 0) {
            return null;
        }
        HashMap<String, ActivityManager.RunningAppProcessInfo> runningMap = new HashMap<>();
        for (ActivityManager.RunningAppProcessInfo appProcInfo : procList) {
            if (!(appProcInfo == null || appProcInfo.pkgList == null)) {
                int size = appProcInfo.pkgList.length;
                for (int i2 = 0; i2 < size; i2++) {
                    runningMap.put(appProcInfo.pkgList[i2], appProcInfo);
                }
            }
        }
        for (ApplicationInfo appInfo : pAppList) {
            if (!(appInfo == null || !AppUtil.isThirdpartApp(appInfo) || runningMap.get(appInfo.packageName) == null)) {
                ProcessInfo info = new ProcessInfo();
                info.setAppInfo(appInfo);
                try {
                    new int[1][0] = runningMap.get(appInfo.packageName).pid;
                    info.setSize("");
                    info.setState(runningMap.get(appInfo.packageName).importance);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (!appInfo.packageName.equals(TrafficStatsService.PACKAGE_NAME)) {
                    processList.add(info);
                }
            }
        }
        return processList;
    }

    public class GridAdapter extends BaseAdapter {
        Context a;
        List<ProcessInfo> b;
        a c;

        public GridAdapter(Context context, List<ProcessInfo> Plist) {
            this.a = context;
            this.b = Plist;
        }

        public int getCount() {
            return this.b.size();
        }

        public Object getItem(int position) {
            return this.b.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(this.a).inflate(R.layout.processitem, (ViewGroup) null);
                this.c = new a();
                this.c.a = (ImageView) convertView.findViewById(R.id.itemImage);
                this.c.b = (TextView) convertView.findViewById(R.id.itemText);
                convertView.setTag(this.c);
            } else {
                this.c = (a) convertView.getTag();
            }
            ProcessInfo info = this.b.get(position);
            this.c.a.setImageDrawable(info.getAppInfo().loadIcon(this.a.getPackageManager()));
            this.c.b.setText(info.getAppInfo().loadLabel(this.a.getPackageManager()));
            this.c.b.setVisibility(8);
            return convertView;
        }

        class a {
            ImageView a;
            TextView b;

            a() {
            }
        }
    }

    public class myAdapter extends BaseAdapter {
        private Context b;
        private List<AppPerInfo> c;

        public myAdapter(Context context, List<AppPerInfo> list) {
            this.b = context;
            this.c = list;
        }

        public int getCount() {
            return this.c.size();
        }

        public Object getItem(int position) {
            return this.c.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            a holder;
            String appMes;
            if (convertView == null) {
                convertView = LayoutInflater.from(this.b).inflate(R.layout.testperssionitem, (ViewGroup) null);
                holder = new a(this, (byte) 0);
                holder.a = (TextView) convertView.findViewById(R.id.pkg_name);
                holder.b = (TextView) convertView.findViewById(R.id.pkg_mes);
                holder.c = (TextView) convertView.findViewById(R.id.pkg_trust);
                holder.d = (ImageView) convertView.findViewById(R.id.pkg_icon);
                holder.e = (ImageView) convertView.findViewById(R.id.img_upload);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            try {
                AppPerInfo info = this.c.get(position);
                ApplicationInfo mAppInfo = AppsManager.this.d.getApplicationInfo(info.pkgName, 8192);
                Log.i("info", info.forbidCount + "//" + info.totalCount + "===" + info.pkgName + "pm==" + AppsManager.this.d + "===mAppInfo" + mAppInfo + "===mAppInfo.loadLabel(pm)" + ((Object) mAppInfo.loadLabel(AppsManager.this.d)) + "holder:" + holder.a);
                holder.a.setText(mAppInfo.loadLabel(AppsManager.this.d));
                holder.d.setImageDrawable(mAppInfo.loadIcon(AppsManager.this.d));
                if (AppsManager.this.w) {
                    if (info.forbidCount == 0) {
                        appMes = this.b.getString(R.string.allow_all);
                    } else if (info.forbidCount == info.totalCount) {
                        appMes = this.b.getString(R.string.forbid_all);
                    } else {
                        StringBuffer sb = new StringBuffer();
                        sb.append(this.b.getString(R.string.forbid));
                        for (String apptype : info.forbidmes.split(",")) {
                            sb.append(AppUtil.getDescriptionByType(this.b, AppsManager.this.e, info.pkgName, apptype)).append(", ");
                        }
                        appMes = "" + sb.deleteCharAt(sb.length() - 2).toString();
                    }
                    holder.b.setText(appMes);
                    if (info.isTrust) {
                        holder.c.setVisibility(0);
                        holder.b.setText(R.string.not_control);
                    } else {
                        holder.c.setVisibility(8);
                    }
                } else {
                    holder.b.setText(this.b.getString(R.string.allow_all));
                    holder.c.setVisibility(8);
                }
                if (info.isUpload == 1) {
                    holder.e.setVisibility(0);
                } else {
                    holder.e.setVisibility(8);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return convertView;
        }

        private class a {
            TextView a;
            TextView b;
            TextView c;
            ImageView d;
            ImageView e;

            private a() {
            }

            /* synthetic */ a(myAdapter x0, byte b2) {
                this();
            }
        }
    }
}
