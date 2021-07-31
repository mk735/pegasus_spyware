package com.lenovo.safecenter.net;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.content.SharedPreferences;
import android.net.NetworkStats;
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
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.collect.Lists;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.doublemode.NetSetting;
import com.lenovo.safecenter.net.support.Logger;
import com.lenovo.safecenter.net.support.PhoneSimInfo;
import com.lenovo.safecenter.net.support.SummaryForAllUidLoader;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.net.support.UidDetail;
import com.lenovo.safecenter.net.support.UidDetailProvider;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;

public class NetFilter extends Activity implements View.OnClickListener {
    public static final String NETSETTING = "com.lenovo.leos.nac_preferences";
    public static final String RESUIDS = "reserved uids";
    public static final String SELECTED = "selected uids";
    public static final String SYSENABLED = "system enabled";
    public static final String SYSINFO = "system info";
    public static final int WHITE_LIST_SIZE = 2;
    public static final String WLAN_SYSINFO = "wlan info";
    public static int drawable_mobile_off = R.drawable.net_mobile_single_off;
    public static int drawable_mobile_on = R.drawable.net_mobile_single_on;
    public static int drawable_wifi_off = R.drawable.net_wifi_single_off;
    public static int drawable_wifi_on = R.drawable.net_wifi_single_on;
    private static Context e;
    public static final HashSet<Integer> netBlackUids = new HashSet<>();
    public static final HashSet<Integer> netBlackUidsWlan = new HashSet<>();
    private boolean a = false;
    private TextView b;
    private TextView c;
    private ArrayList<a> d = Lists.newArrayList();
    private Object f;
    private DataUsageAdapter g;
    private ListView h;
    private UidDetailProvider i;
    private int j = 0;
    private int k = 0;
    private a l;
    private Handler m = new Handler() {
        /* class com.lenovo.safecenter.net.NetFilter.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    if (!NetFilter.this.a) {
                        TrafficStatsService.alert(NetFilter.this, NetFilter.this.getText(R.string.info_failed));
                        return;
                    }
                    return;
                case 1:
                    NetFilter.this.c.setText(String.format(NetFilter.this.getString(R.string.app_can_conn_net), Integer.valueOf(NetFilter.this.d.size())));
                    if (NetFilter.netBlackUids.size() == NetFilter.this.d.size() - 2) {
                        NetFilter.this.a((NetFilter) false);
                        NetFilter.this.b();
                    }
                    if (NetFilter.netBlackUidsWlan.size() == NetFilter.this.d.size() - 2) {
                        NetFilter.this.b((NetFilter) false);
                        NetFilter.this.c();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private ProgressBar n;
    private ImageView o;
    private ImageView p;
    private boolean q;
    private boolean r;
    private boolean s = false;
    private AdapterView.OnItemClickListener t = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.safecenter.net.NetFilter.AnonymousClass2 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            NetFilter.this.l = (a) NetFilter.this.d.get(position);
            NetFilter.this.l.g = !NetFilter.this.l.g;
            if (NetFilter.this.k != position) {
                ((a) NetFilter.this.d.get(NetFilter.this.k)).g = false;
                NetFilter.this.k = position;
            }
            NetFilter.this.h.invalidateViews();
        }
    };
    private final LoaderManager.LoaderCallbacks<PhoneSimInfo> u = new LoaderManager.LoaderCallbacks<PhoneSimInfo>() {
        /* class com.lenovo.safecenter.net.NetFilter.AnonymousClass4 */

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.content.Loader, java.lang.Object] */
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<PhoneSimInfo> loader, PhoneSimInfo phoneSimInfo) {
            NetFilter.this.n.setVisibility(8);
            NetFilter.this.g.bindStats(phoneSimInfo);
            a();
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<PhoneSimInfo> onCreateLoader(int id, Bundle args) {
            NetFilter.this.n.setVisibility(0);
            return new SummaryForAllUidLoader(NetFilter.e, NetFilter.this.f, args);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<PhoneSimInfo> loader) {
            NetFilter.this.g.bindStats(null);
            a();
        }

        private void a() {
            NetFilter.this.b.setVisibility(NetFilter.this.g.isEmpty() ? 0 : 8);
        }
    };

    static /* synthetic */ boolean a(int[] x0, int x1) {
        for (int i2 : x0) {
            if (i2 == x1) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ void i(NetFilter x0) {
        String str = "";
        try {
            SharedPreferences sharedPreferences = x0.getSharedPreferences("system info", 0);
            Iterator<Integer> it = netBlackUids.iterator();
            while (it.hasNext()) {
                str = str + it.next() + c.O;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("selected uids", str);
            edit.commit();
        } catch (Exception e2) {
            Log.v("Filter", e2.toString());
        }
    }

    static /* synthetic */ void j(NetFilter x0) {
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
        this.q = enabled;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b(boolean enabled) {
        TrafficStatsService.setWlanDataButtonValue(e, enabled);
        this.r = enabled;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b() {
        this.o.setBackgroundResource(this.q ? R.drawable.net_mobile_all_on : R.drawable.net_mobile_all_off);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void c() {
        this.p.setBackgroundResource(this.r ? R.drawable.net_wifi_all_on : R.drawable.net_wifi_all_off);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_layout_netfilter);
        e = this;
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(this);
        ((ImageView) findViewById(R.id.title_set)).setOnClickListener(this);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.net_app_title);
        this.f = TrafficStatsService.getNetWorkStatsService();
        this.c = (TextView) findViewById(R.id.can_conn);
        this.n = (ProgressBar) findViewById(R.id.progress_bar);
        this.b = (TextView) findViewById(16908292);
        this.i = new UidDetailProvider(e);
        this.h = (ListView) findViewById(R.id.list);
        this.h.setItemsCanFocus(true);
        this.g = new DataUsageAdapter(this.i, this.j);
        this.h.setAdapter((ListAdapter) this.g);
        this.h.setOnItemClickListener(this.t);
        this.o = (ImageView) findViewById(R.id.net_app_check_mobile_all);
        this.p = (ImageView) findViewById(R.id.net_app_check_wlan_all);
        this.q = TrafficStatsService.getMobileDataButtonValue(e);
        this.r = TrafficStatsService.getWlanDataButtonValue(e);
        this.o.setOnClickListener(this);
        this.p.setOnClickListener(this);
        b();
        c();
        getLoaderManager().restartLoader(3, SummaryForAllUidLoader.buildArgs(TrafficStatsService.getImsiInfo(this), WflUtils.parseMonthStartTime(Long.valueOf(System.currentTimeMillis())).longValue(), System.currentTimeMillis()), this.u);
        Log.i("nac", "oncreate  = " + this.s);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        e = null;
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
        if (this.s) {
            new Thread() {
                /* class com.lenovo.safecenter.net.NetFilter.AnonymousClass3 */

                public final void run() {
                    NetFilter.i(NetFilter.this);
                    NetFilter.j(NetFilter.this);
                    NetFilter.this.a = TrafficStatsService.createShell(NetFilter.this);
                    NetFilter.this.m.sendEmptyMessage(0);
                }
            }.start();
            boolean z = this.a;
        }
        sendBroadcast(new Intent("com.lenovo.safecenter.refreshAppsManager"));
    }

    public class DataUsageAdapter extends BaseAdapter {
        final SparseArray<a> a = new SparseArray<>();
        final a b = new a(1000);
        private final UidDetailProvider d;
        private final int e;

        public DataUsageAdapter(UidDetailProvider provider, int insetSide) {
            this.d = (UidDetailProvider) NetFilter.checkNotNull(provider);
            this.e = insetSide;
        }

        public void bindStats(PhoneSimInfo info) {
            NetFilter.this.d.clear();
            if (info != null) {
                if (info.networkInfo1 != null) {
                    a(info.networkInfo1);
                }
                if (info.networkInfo2 != null) {
                    a(info.networkInfo2);
                }
                if (info.getNetworkInfoWlan() != null) {
                    NetworkStats networkInfoWlan = info.getNetworkInfoWlan();
                    a aVar = new a(1000);
                    int size = networkInfoWlan != null ? networkInfoWlan.size() : 0;
                    NetworkStats.Entry entry = null;
                    int i = 0;
                    while (i < size) {
                        NetworkStats.Entry values = networkInfoWlan.getValues(i, entry);
                        Logger.i("4.3", "entry set=" + values.set);
                        int i2 = values.uid;
                        if ((i2 >= 10000 && i2 <= 99999 && !Const.mNetWhiteApps2.contains(Integer.valueOf(i2))) || i2 == -5) {
                            a aVar2 = this.a.get(i2);
                            if (aVar2 == null) {
                                aVar2 = new a(i2);
                                this.a.put(i2, aVar2);
                                NetFilter.this.d.add(aVar2);
                            }
                            if (values.set == 0) {
                                aVar2.i += values.rxBytes + values.txBytes;
                            } else {
                                aVar2.h += values.rxBytes + values.txBytes;
                            }
                            aVar2.j += values.rxBytes + values.txBytes;
                        } else {
                            if (aVar.i == 0) {
                                aVar.i += values.rxBytes + values.txBytes;
                            } else {
                                aVar.h += values.rxBytes + values.txBytes;
                            }
                            aVar.j += values.rxBytes + values.txBytes;
                            aVar.a(i2);
                        }
                        i++;
                        entry = values;
                    }
                }
            }
            if (info != null) {
                a(info);
            }
            Collections.sort(NetFilter.this.d);
            Logger.i("4.0", "mItems.size =" + NetFilter.this.d.size());
            NetFilter.this.m.sendMessage(NetFilter.this.m.obtainMessage(1));
            notifyDataSetChanged();
        }

        private void a(PhoneSimInfo info) {
            HashSet<Integer> apps = info.networkList;
            if (apps.size() > 0) {
                Iterator i$ = apps.iterator();
                while (i$.hasNext()) {
                    int uid = i$.next().intValue();
                    if (!(uid == 10001 || uid == 10013 || uid == 1001 || uid == Process.getUidForName("media") || uid <= 10000 || Const.mNetWhiteApps2.contains(Integer.valueOf(uid)))) {
                        a item = new a(uid);
                        item.d = 0;
                        item.c = 0;
                        item.b = 0;
                        NetFilter.this.d.add(item);
                    }
                }
            }
        }

        private void a(NetworkStats stats) {
            NetworkStats.Entry entry = null;
            int size = stats != null ? stats.size() : 0;
            for (int i = 0; i < size; i++) {
                entry = stats.getValues(i, entry);
                Logger.i("4.3", "entry set=" + entry.set);
                int uid = entry.uid;
                if ((uid >= 10000 && uid <= 99999 && !Const.mNetWhiteApps2.contains(Integer.valueOf(uid))) || uid == -5) {
                    a item = this.a.get(uid);
                    if (item == null) {
                        item = new a(uid);
                        this.a.put(uid, item);
                        NetFilter.this.d.add(item);
                    }
                    if (entry.set == 0) {
                        item.d += entry.rxBytes + entry.txBytes;
                    } else {
                        item.c += entry.rxBytes + entry.txBytes;
                    }
                    item.b += entry.rxBytes + entry.txBytes;
                } else {
                    if (this.b.d == 0) {
                        this.b.d += entry.rxBytes + entry.txBytes;
                    } else {
                        this.b.c += entry.rxBytes + entry.txBytes;
                    }
                    this.b.b += entry.rxBytes + entry.txBytes;
                    this.b.a(uid);
                }
            }
        }

        public int getCount() {
            return NetFilter.this.d.size();
        }

        public Object getItem(int position) {
            return NetFilter.this.d.get(position);
        }

        public long getItemId(int position) {
            return (long) ((a) NetFilter.this.d.get(position)).a[0];
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.data_usage_item, parent, false);
                if (this.e > 0) {
                    convertView.setPadding(this.e, 0, this.e, 0);
                }
            }
            Context context = parent.getContext();
            final ImageView mCheck = (ImageView) convertView.findViewById(R.id.net_app_check);
            final ImageView mCheckWlan = (ImageView) convertView.findViewById(R.id.net_app_check_wlan);
            TextView mTotalTextView = (TextView) convertView.findViewById(R.id.net_app_total);
            TextView mTotalWlanTextView = (TextView) convertView.findViewById(R.id.net_app_total_wlan);
            RelativeLayout chooseLayout = (RelativeLayout) convertView.findViewById(R.id.item_choose_layout);
            TextView mForeTextView = (TextView) convertView.findViewById(R.id.net_fore_traffic);
            TextView mBackTextView = (TextView) convertView.findViewById(R.id.net_back_traffic);
            TextView mForeTextWlanView = (TextView) convertView.findViewById(R.id.net_fore_traffic_wlan);
            TextView mBackTextWlanView = (TextView) convertView.findViewById(R.id.net_back_traffic_wlan);
            final a item = (a) NetFilter.this.d.get(position);
            b.a(this.d, item, convertView);
            if (item.g) {
                chooseLayout.setVisibility(0);
            } else {
                chooseLayout.setVisibility(8);
            }
            mTotalTextView.setText(String.format(NetFilter.this.getString(R.string.net_traffic_mobile_app_useage), TrafficStatsService.getDataString(item.b)));
            mTotalWlanTextView.setText(String.format(NetFilter.this.getString(R.string.net_traffic_wlan_app_useage), TrafficStatsService.getDataString(item.j)));
            mForeTextView.setText(Formatter.formatFileSize(context, item.c));
            mBackTextView.setText(Formatter.formatFileSize(context, item.d));
            mForeTextWlanView.setText(Formatter.formatFileSize(context, item.h));
            mBackTextWlanView.setText(Formatter.formatFileSize(context, item.i));
            mCheck.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.net.NetFilter.DataUsageAdapter.AnonymousClass1 */

                public final void onClick(View v) {
                    int uid = item.a[0];
                    item.e = !item.e;
                    if (item.e) {
                        NetFilter.netBlackUids.add(Integer.valueOf(uid));
                        mCheck.setBackgroundResource(NetFilter.drawable_mobile_off);
                    } else {
                        NetFilter.netBlackUids.remove(Integer.valueOf(uid));
                        mCheck.setBackgroundResource(NetFilter.drawable_mobile_on);
                    }
                    if (NetFilter.netBlackUids.size() < NetFilter.this.d.size() - 2) {
                        NetFilter.this.a((NetFilter) true);
                    } else {
                        NetFilter.this.a((NetFilter) false);
                    }
                    NetFilter.this.b();
                    NetFilter.this.s = true;
                    Log.i("nac", "2g uid size =" + NetFilter.netBlackUids.size());
                }
            });
            mCheckWlan.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.net.NetFilter.DataUsageAdapter.AnonymousClass2 */

                public final void onClick(View v) {
                    int uid = item.a[0];
                    item.f = !item.f;
                    if (item.f) {
                        NetFilter.netBlackUidsWlan.add(Integer.valueOf(uid));
                        mCheckWlan.setBackgroundResource(NetFilter.drawable_wifi_off);
                    } else {
                        NetFilter.netBlackUidsWlan.remove(Integer.valueOf(uid));
                        mCheckWlan.setBackgroundResource(NetFilter.drawable_wifi_on);
                    }
                    if (NetFilter.netBlackUidsWlan.size() < NetFilter.this.d.size() - 2) {
                        NetFilter.this.b((NetFilter) true);
                    } else {
                        NetFilter.this.b((NetFilter) false);
                    }
                    NetFilter.this.c();
                    NetFilter.this.s = true;
                }
            });
            if (item.a[0] == -4 || Const.mNetWhiteApps.contains(Integer.valueOf(item.a[0]))) {
                mCheck.setBackgroundResource(R.drawable.net_transparent);
                mCheckWlan.setBackgroundResource(R.drawable.net_transparent);
            } else {
                mCheck.setBackgroundResource(item.e ? NetFilter.drawable_mobile_off : NetFilter.drawable_mobile_on);
                mCheckWlan.setBackgroundResource(item.f ? NetFilter.drawable_wifi_off : NetFilter.drawable_wifi_on);
            }
            if (item.a[0] == -4 || Const.mNetWhiteApps.contains(Integer.valueOf(item.a[0]))) {
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
        public long c;
        public long d;
        public boolean e;
        public boolean f;
        public boolean g = false;
        public long h;
        public long i;
        public long j;

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
            this.e = NetFilter.netBlackUids.contains(Integer.valueOf(uid));
            this.f = NetFilter.netBlackUidsWlan.contains(Integer.valueOf(uid));
        }

        public final void a(int uid) {
            if (!NetFilter.a(this.a, uid)) {
                int length = this.a.length;
                this.a = Arrays.copyOf(this.a, length + 1);
                this.a[length] = uid;
            }
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

        public static void a(UidDetailProvider provider, a item, View target) {
            b existing = (b) target.getTag();
            if (existing != null) {
                existing.cancel(false);
            }
            a(provider.getUidDetail(item.a[0], false), target, item.a[0]);
        }

        private static void a(UidDetail detail, View target, int uid) {
            ImageView icon = (ImageView) target.findViewById(R.id.net_app_icon);
            TextView title = (TextView) target.findViewById(R.id.net_app_name);
            if (detail != null) {
                icon.setImageDrawable(detail.icon);
                if (uid == 1000) {
                    String allText = ((Object) detail.label) + ("(" + NetFilter.e.getString(R.string.net_sys_app) + ")");
                    title.setText(allText);
                    MyUtils.setSpannableString(title, allText, detail.label.length(), allText.length(), NetFilter.e.getResources().getColor(R.color.blue_btn));
                } else if (Const.mNetWhiteApps.contains(Integer.valueOf(uid))) {
                    String allText2 = ((Object) detail.label) + ("(" + NetFilter.e.getString(R.string.net_trust_app) + ")");
                    title.setText(allText2);
                    MyUtils.setSpannableString(title, allText2, detail.label.length(), allText2.length(), NetFilter.e.getResources().getColor(R.color.blue_btn));
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
                if (!this.q) {
                    z = true;
                }
                this.q = z;
                a(this.q);
                b();
                a(R.id.net_app_check_mobile_all);
                this.s = true;
                return;
            case R.id.net_app_check_wlan_all:
                if (!this.r) {
                    z = true;
                }
                this.r = z;
                b(this.r);
                c();
                a(R.id.net_app_check_wlan_all);
                this.s = true;
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

    public static <T> T checkNotNull(T reference) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException();
    }

    private void a(int type) {
        if (type == R.id.net_app_check_mobile_all) {
            if (this.q) {
                Iterator i$ = this.d.iterator();
                while (i$.hasNext()) {
                    i$.next().e = false;
                }
                netBlackUids.clear();
            } else {
                Iterator i$2 = this.d.iterator();
                while (i$2.hasNext()) {
                    a item = i$2.next();
                    item.e = true;
                    if (!Const.mNetWhiteApps.contains(Integer.valueOf(item.a[0]))) {
                        netBlackUids.add(Integer.valueOf(item.a[0]));
                    }
                }
            }
        } else if (this.r) {
            Iterator i$3 = this.d.iterator();
            while (i$3.hasNext()) {
                i$3.next().f = false;
            }
            netBlackUidsWlan.clear();
        } else {
            Iterator i$4 = this.d.iterator();
            while (i$4.hasNext()) {
                a item2 = i$4.next();
                item2.f = true;
                if (!Const.mNetWhiteApps.contains(Integer.valueOf(item2.a[0]))) {
                    netBlackUidsWlan.add(Integer.valueOf(item2.a[0]));
                }
            }
        }
        this.h.invalidateViews();
    }
}
