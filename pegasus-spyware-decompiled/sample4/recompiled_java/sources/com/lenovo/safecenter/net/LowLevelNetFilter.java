package com.lenovo.safecenter.net;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.format.Formatter;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.collect.Lists;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.doublemode.NetSetting;
import com.lenovo.safecenter.net.support.AppInfo;
import com.lenovo.safecenter.net.support.Logger;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.net.support.UidDetail;
import com.lenovo.safecenter.net.support.UidDetailProvider;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;

public class LowLevelNetFilter extends Activity implements View.OnClickListener {
    public static final String NETSETTING = "com.lenovo.leos.nac_preferences";
    public static final String RESUIDS = "reserved uids";
    public static final String SELECTED = "selected uids";
    public static String SOCKET = "socketclient";
    public static final String SYSENABLED = "system enabled";
    public static final String SYSINFO = "system info";
    public static final String WLAN_SYSINFO = "wlan info";
    private static Context e;
    public static final HashSet<Integer> netBlackUids = new HashSet<>();
    public static final HashSet<Integer> netBlackUidsWlan = new HashSet<>();
    private boolean a = false;
    private TrafficStatsService b;
    private TextView c;
    private TextView d;
    private DataUsageAdapter f;
    private ListView g;
    private UidDetailProvider h;
    private int i = 0;
    private HashSet<Integer> j = new HashSet<>();
    private ArrayList<AppInfo> k;
    private TextView l;
    private TextView m;
    private ProgressBar n;
    private Handler o = new Handler() {
        /* class com.lenovo.safecenter.net.LowLevelNetFilter.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    if (!LowLevelNetFilter.this.a) {
                        TrafficStatsService.alert(LowLevelNetFilter.this, LowLevelNetFilter.this.getText(R.string.info_failed));
                        return;
                    }
                    return;
                case 1:
                    LowLevelNetFilter.this.d.setText(String.format(LowLevelNetFilter.this.getString(R.string.app_can_conn_net), Integer.valueOf(LowLevelNetFilter.this.f.getCount())));
                    if (LowLevelNetFilter.netBlackUids.size() == LowLevelNetFilter.this.t.size() - 2) {
                        LowLevelNetFilter.this.a((LowLevelNetFilter) false);
                        LowLevelNetFilter.this.b();
                    }
                    if (LowLevelNetFilter.netBlackUidsWlan.size() == LowLevelNetFilter.this.t.size() - 2) {
                        LowLevelNetFilter.this.b((LowLevelNetFilter) false);
                        LowLevelNetFilter.this.c();
                        return;
                    }
                    return;
                case 2:
                default:
                    return;
                case 3:
                    LowLevelNetFilter.this.n.setVisibility(8);
                    LowLevelNetFilter.this.f.bindStats(LowLevelNetFilter.this.k);
                    LowLevelNetFilter.i(LowLevelNetFilter.this);
                    return;
            }
        }
    };
    private ImageView p;
    private ImageView q;
    private boolean r;
    private boolean s;
    private ArrayList<a> t = Lists.newArrayList();
    private boolean u = false;

    static /* synthetic */ void i(LowLevelNetFilter x0) {
        x0.c.setVisibility(x0.f.isEmpty() ? 0 : 8);
    }

    static /* synthetic */ void m(LowLevelNetFilter x0) {
        try {
            StringBuilder sb = new StringBuilder();
            SharedPreferences sharedPreferences = x0.getSharedPreferences("system info", 0);
            Iterator<Integer> it = netBlackUids.iterator();
            while (it.hasNext()) {
                sb.append(it.next() + c.O);
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("selected uids", sb.toString());
            edit.commit();
        } catch (Exception e2) {
            Log.v("Filter", e2.toString());
        }
    }

    static /* synthetic */ void n(LowLevelNetFilter x0) {
        try {
            Log.i("nac", "touch saveWlanList");
            String str = "";
            SharedPreferences sharedPreferences = x0.getSharedPreferences("wlan info", 0);
            Iterator<Integer> it = netBlackUidsWlan.iterator();
            while (it.hasNext()) {
                str = str + it.next() + c.O;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("selected uids", str);
            edit.commit();
            Log.i("nac", "wlan uids string =" + str);
        } catch (Exception e2) {
            Log.v("nac", e2.toString());
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(boolean enabled) {
        TrafficStatsService.setMobileDataButtonValue(e, enabled);
        this.r = enabled;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b(boolean enabled) {
        TrafficStatsService.setWlanDataButtonValue(e, enabled);
        this.s = enabled;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b() {
        this.p.setBackgroundResource(this.r ? R.drawable.net_mobile_all_on : R.drawable.net_mobile_all_off);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void c() {
        this.q.setBackgroundResource(this.s ? R.drawable.net_wifi_all_on : R.drawable.net_wifi_all_off);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_layout_netfilter);
        e = this;
        ImageView imageView = (ImageView) findViewById(R.id.title_set);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(this);
        imageView.setOnClickListener(this);
        imageView.setVisibility(4);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.net_app_title);
        this.l = (TextView) findViewById(R.id.show_root_info);
        this.m = (TextView) findViewById(R.id.show_root_info_select);
        this.n = (ProgressBar) findViewById(R.id.progress_bar);
        this.d = (TextView) findViewById(R.id.can_conn);
        this.b = TrafficStatsService.getInstance(this);
        this.c = (TextView) findViewById(16908292);
        this.h = new UidDetailProvider(e);
        this.g = (ListView) findViewById(R.id.list);
        this.g.setItemsCanFocus(true);
        this.p = (ImageView) findViewById(R.id.net_app_check_mobile_all);
        this.q = (ImageView) findViewById(R.id.net_app_check_wlan_all);
        this.r = TrafficStatsService.getMobileDataButtonValue(e);
        this.s = TrafficStatsService.getWlanDataButtonValue(e);
        this.p.setOnClickListener(this);
        this.q.setOnClickListener(this);
        Log.i("4.2.5", "mMobileDataEnabled = " + this.r + ",mWlanDataEnabled = " + this.s);
        b();
        c();
        this.f = new DataUsageAdapter(this.h, this.i);
        this.g.setAdapter((ListAdapter) this.f);
        this.n.setVisibility(0);
        TrafficStatsService.getExecutorService().execute(new Thread() {
            /* class com.lenovo.safecenter.net.LowLevelNetFilter.AnonymousClass2 */

            public final void run() {
                TrafficStatsService.addNetWhiteList(LowLevelNetFilter.e);
                if (LowLevelNetFilter.netBlackUids == null || LowLevelNetFilter.netBlackUids.size() == 0) {
                    String allUid = LowLevelNetFilter.e.getSharedPreferences("system info", 0).getString("selected uids", "");
                    String[] uidString = allUid.split(c.O);
                    if (!allUid.equals("") && uidString.length > 0) {
                        for (String uid : uidString) {
                            LowLevelNetFilter.netBlackUids.add(Integer.valueOf(Integer.parseInt(uid)));
                        }
                    }
                }
                if (LowLevelNetFilter.netBlackUidsWlan == null || LowLevelNetFilter.netBlackUidsWlan.size() == 0) {
                    String allUid2 = LowLevelNetFilter.e.getSharedPreferences("wlan info", 0).getString("selected uids", "");
                    String[] uidString2 = allUid2.split(c.O);
                    if (!allUid2.equals("") && uidString2.length > 0) {
                        for (String uid2 : uidString2) {
                            LowLevelNetFilter.netBlackUidsWlan.add(Integer.valueOf(Integer.parseInt(uid2)));
                        }
                    }
                }
                LowLevelNetFilter.this.b.refreshUid();
                LowLevelNetFilter.this.k = TrafficStatsService.getAppInfos(LowLevelNetFilter.e, LowLevelNetFilter.this.j);
                Iterator i$ = TrafficStatsService.getApps(LowLevelNetFilter.e).iterator();
                while (i$.hasNext()) {
                    AppInfo appInfo = i$.next();
                    if (!(LowLevelNetFilter.this.j.contains(Integer.valueOf(appInfo.uid)) || appInfo.uid == 10001 || appInfo.uid == 10013 || appInfo.uid == 1001 || appInfo.uid == 1013 || appInfo.uid <= 10000 || appInfo.uid == Process.getUidForName("media"))) {
                        LowLevelNetFilter.this.k.add(appInfo);
                    }
                }
                LowLevelNetFilter.this.o.sendEmptyMessage(3);
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        if (!WflUtils.isRoot()) {
            this.l.setVisibility(0);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        Log.i("nac", "touch onPause and isUserClick " + this.u);
        if (this.u) {
            new Thread() {
                /* class com.lenovo.safecenter.net.LowLevelNetFilter.AnonymousClass3 */

                public final void run() {
                    LowLevelNetFilter.m(LowLevelNetFilter.this);
                    LowLevelNetFilter.n(LowLevelNetFilter.this);
                    LowLevelNetFilter.this.a = TrafficStatsService.createShell(LowLevelNetFilter.this);
                    Log.i("nac", "touch applyRules");
                    LowLevelNetFilter.this.o.sendEmptyMessage(0);
                }
            }.start();
            boolean z = this.a;
        }
        sendBroadcast(new Intent("com.lenovo.safecenter.refreshAppsManager"));
        TrackEvent.trackPause(this);
    }

    public class DataUsageAdapter extends BaseAdapter {
        private final UidDetailProvider b;
        private final int c;

        public DataUsageAdapter(UidDetailProvider provider, int insetSide) {
            this.b = provider;
            this.c = insetSide;
        }

        public void bindStats(ArrayList<AppInfo> stats) {
            LowLevelNetFilter.this.t.clear();
            SparseArray<a> knownUids = new SparseArray<>();
            if ((stats != null ? stats.size() : 0) > 0) {
                Iterator i$ = stats.iterator();
                while (i$.hasNext()) {
                    AppInfo app = i$.next();
                    int uid = app.uid;
                    if (!Const.mNetWhiteApps2.contains(Integer.valueOf(uid))) {
                        a item = knownUids.get(uid);
                        if (item == null) {
                            item = new a(uid);
                            knownUids.put(uid, item);
                            LowLevelNetFilter.this.t.add(item);
                        }
                        item.b = app.item_3g;
                    }
                }
            }
            Collections.sort(LowLevelNetFilter.this.t);
            LowLevelNetFilter.this.o.sendMessage(LowLevelNetFilter.this.o.obtainMessage(1));
            notifyDataSetChanged();
        }

        public int getCount() {
            return LowLevelNetFilter.this.t.size();
        }

        public Object getItem(int position) {
            return LowLevelNetFilter.this.t.get(position);
        }

        public long getItemId(int position) {
            return (long) ((a) LowLevelNetFilter.this.t.get(position)).a[0];
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.data_usage_item, parent, false);
                if (this.c > 0) {
                    convertView.setPadding(this.c, 0, this.c, 0);
                }
            }
            Context context = parent.getContext();
            final ImageView mCheck = (ImageView) convertView.findViewById(R.id.net_app_check);
            final ImageView mCheckWlan = (ImageView) convertView.findViewById(R.id.net_app_check_wlan);
            final a item = (a) LowLevelNetFilter.this.t.get(position);
            b.a(this.b, item, convertView);
            ((TextView) convertView.findViewById(R.id.net_app_total)).setText(Formatter.formatFileSize(context, item.b));
            mCheck.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.net.LowLevelNetFilter.DataUsageAdapter.AnonymousClass1 */

                public final void onClick(View v) {
                    boolean z;
                    if (Const.isObtainRoot() || TrafficStatsService.nacServerIsExist()) {
                        int uid = item.a[0];
                        Logger.i("8.1", "cilck uid = " + uid);
                        a aVar = item;
                        if (!item.c) {
                            z = true;
                        } else {
                            z = false;
                        }
                        aVar.c = z;
                        if (item.c) {
                            LowLevelNetFilter.netBlackUids.add(Integer.valueOf(uid));
                            mCheck.setBackgroundResource(NetFilter.drawable_mobile_off);
                        } else {
                            LowLevelNetFilter.netBlackUids.remove(Integer.valueOf(uid));
                            mCheck.setBackgroundResource(NetFilter.drawable_mobile_on);
                        }
                        if (LowLevelNetFilter.netBlackUids.size() < LowLevelNetFilter.this.t.size() - 2) {
                            LowLevelNetFilter.this.a((LowLevelNetFilter) true);
                        } else {
                            LowLevelNetFilter.this.a((LowLevelNetFilter) false);
                        }
                        LowLevelNetFilter.this.b();
                        LowLevelNetFilter.this.u = true;
                        return;
                    }
                    LowLevelNetFilter.this.d();
                }
            });
            mCheckWlan.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.net.LowLevelNetFilter.DataUsageAdapter.AnonymousClass2 */

                public final void onClick(View v) {
                    boolean z;
                    if (Const.isObtainRoot() || TrafficStatsService.nacServerIsExist()) {
                        int uid = item.a[0];
                        a aVar = item;
                        if (!item.d) {
                            z = true;
                        } else {
                            z = false;
                        }
                        aVar.d = z;
                        if (item.d) {
                            LowLevelNetFilter.netBlackUidsWlan.add(Integer.valueOf(uid));
                            mCheckWlan.setBackgroundResource(NetFilter.drawable_wifi_off);
                        } else {
                            LowLevelNetFilter.netBlackUidsWlan.remove(Integer.valueOf(uid));
                            mCheckWlan.setBackgroundResource(NetFilter.drawable_wifi_on);
                        }
                        if (LowLevelNetFilter.netBlackUidsWlan.size() < LowLevelNetFilter.this.t.size() - 2) {
                            LowLevelNetFilter.this.b((LowLevelNetFilter) true);
                        } else {
                            LowLevelNetFilter.this.b((LowLevelNetFilter) false);
                        }
                        LowLevelNetFilter.this.c();
                        LowLevelNetFilter.this.u = true;
                        Log.i("nac", "wlan uid size =" + LowLevelNetFilter.netBlackUidsWlan.size());
                        return;
                    }
                    LowLevelNetFilter.this.d();
                }
            });
            if (item.a[0] == -4 || item.a[0] == 1000 || Const.mNetWhiteApps.contains(Integer.valueOf(item.a[0]))) {
                mCheck.setBackgroundResource(R.drawable.net_transparent);
                mCheckWlan.setBackgroundResource(R.drawable.net_transparent);
            } else {
                mCheck.setBackgroundResource(item.c ? NetFilter.drawable_mobile_off : NetFilter.drawable_mobile_on);
                mCheckWlan.setBackgroundResource(item.d ? NetFilter.drawable_wifi_off : NetFilter.drawable_wifi_on);
            }
            if (item.a[0] == -4 || item.a[0] == 1000 || Const.mNetWhiteApps.contains(Integer.valueOf(item.a[0]))) {
                mCheck.setClickable(false);
                mCheckWlan.setClickable(false);
            }
            return convertView;
        }
    }

    /* access modifiers changed from: private */
    public static class a implements Comparable<a> {
        public int[] a;
        public long b;
        public boolean c;
        public boolean d;

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(a aVar) {
            a aVar2 = aVar;
            if (aVar2.a[0] == -4 || aVar2.a[0] == 1000 || Const.mNetWhiteApps.contains(Integer.valueOf(aVar2.a[0]))) {
                if ((this.a[0] == -4 || this.a[0] == 1000 || Const.mNetWhiteApps.contains(Integer.valueOf(this.a[0]))) && aVar2.b >= this.b) {
                    return aVar2.b == this.b ? 0 : 1;
                }
                return -1;
            } else if (this.a[0] == -4 || this.a[0] == 1000 || Const.mNetWhiteApps.contains(Integer.valueOf(this.a[0]))) {
                return 1;
            } else {
                if (aVar2.b >= this.b) {
                    return aVar2.b == this.b ? 0 : 1;
                }
                return -1;
            }
        }

        public a(int uid) {
            this.a = new int[]{uid};
            this.c = LowLevelNetFilter.netBlackUids.contains(Integer.valueOf(uid));
            this.d = LowLevelNetFilter.netBlackUidsWlan.contains(Integer.valueOf(uid));
        }
    }

    private static class b extends AsyncTask<Void, Void, UidDetail> {
        private final UidDetailProvider a;
        private final a b;
        private final View c;

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
        /* access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final /* synthetic */ UidDetail doInBackground(Void[] voidArr) {
            return this.a.getUidDetail(this.b.a[0], true);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        /* access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(UidDetail uidDetail) {
            a(uidDetail, this.c, this.b.a[0]);
        }

        private b(UidDetailProvider provider, a item, View target) {
            this.a = provider;
            this.b = item;
            this.c = target;
        }

        public static void a(UidDetailProvider provider, a item, View target) {
            b existing = (b) target.getTag();
            if (existing != null) {
                existing.cancel(false);
            }
            try {
                a(provider.getUidDetail(item.a[0], false), target, item.a[0]);
            } catch (Exception e) {
                target.setTag(new b(provider, item, target).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]));
            }
        }

        private static void a(UidDetail detail, View target, int uid) {
            ImageView icon = (ImageView) target.findViewById(R.id.net_app_icon);
            TextView title = (TextView) target.findViewById(R.id.net_app_name);
            if (detail != null) {
                icon.setImageDrawable(detail.icon);
                if (uid == 1000) {
                    String allText = ((Object) detail.label) + ("(" + LowLevelNetFilter.e.getString(R.string.net_sys_app) + ")");
                    title.setText(allText);
                    MyUtils.setSpannableString(title, allText, detail.label.length(), allText.length(), LowLevelNetFilter.e.getResources().getColor(R.color.blue_btn));
                } else if (Const.mNetWhiteApps.contains(Integer.valueOf(uid))) {
                    String allText2 = ((Object) detail.label) + ("(" + LowLevelNetFilter.e.getString(R.string.net_trust_app) + ")");
                    title.setText(allText2);
                    MyUtils.setSpannableString(title, allText2, detail.label.length(), allText2.length(), LowLevelNetFilter.e.getResources().getColor(R.color.blue_btn));
                } else {
                    title.setText(detail.label);
                }
            } else {
                icon.setImageDrawable(null);
                title.setText((CharSequence) null);
            }
        }

        /* access modifiers changed from: protected */
        public final void onPreExecute() {
            a((UidDetail) null, this.c, this.b.a[0]);
        }
    }

    public void onClick(View v) {
        boolean z = false;
        switch (v.getId()) {
            case R.id.net_app_check_mobile_all:
                if (Const.isObtainRoot() || TrafficStatsService.nacServerIsExist()) {
                    if (!this.r) {
                        z = true;
                    }
                    this.r = z;
                    a(this.r);
                    b();
                    a(R.id.net_app_check_mobile_all);
                    this.u = true;
                    Log.i("4.2.5", "mMobileDataEnabled@ = " + this.r + ",mWlanDataEnabled@ = " + this.s);
                    return;
                }
                d();
                return;
            case R.id.net_app_check_wlan_all:
                if (Const.isObtainRoot() || TrafficStatsService.nacServerIsExist()) {
                    if (!this.s) {
                        z = true;
                    }
                    this.s = z;
                    b(this.s);
                    c();
                    a(R.id.net_app_check_wlan_all);
                    this.u = true;
                    return;
                }
                d();
                return;
            case R.id.title_back:
                finish();
                return;
            case R.id.title_set:
                startActivity(new Intent(this, NetSetting.class));
                return;
            default:
                return;
        }
    }

    private void a(int type) {
        if (type == R.id.net_app_check_mobile_all) {
            if (this.r) {
                Iterator i$ = this.t.iterator();
                while (i$.hasNext()) {
                    i$.next().c = false;
                }
                netBlackUids.clear();
            } else {
                Iterator i$2 = this.t.iterator();
                while (i$2.hasNext()) {
                    a item = i$2.next();
                    item.c = true;
                    if (!Const.mNetWhiteApps.contains(Integer.valueOf(item.a[0]))) {
                        netBlackUids.add(Integer.valueOf(item.a[0]));
                    }
                }
            }
        } else if (this.s) {
            Iterator i$3 = this.t.iterator();
            while (i$3.hasNext()) {
                i$3.next().d = false;
            }
            netBlackUidsWlan.clear();
        } else {
            Iterator i$4 = this.t.iterator();
            while (i$4.hasNext()) {
                a item2 = i$4.next();
                item2.d = true;
                if (!Const.mNetWhiteApps.contains(Integer.valueOf(item2.a[0]))) {
                    netBlackUidsWlan.add(Integer.valueOf(item2.a[0]));
                }
            }
        }
        this.g.invalidateViews();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void d() {
        this.l.setVisibility(8);
        this.m.setVisibility(0);
    }
}
