package com.lenovo.performancecenter.performance;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.format.Formatter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.service.object.ApplicationDataInfo;
import com.lenovo.safecenter.MainTab.LeSafeMainActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class PhoneAccelerateActivity extends Activity implements View.OnClickListener {
    private Context a;
    private CpuAndMemeoryLayout b;
    private TextView c;
    private TextView d;
    private LinearLayout e;
    private ProgressBar f;
    private TextView g;
    private TextView h;
    private ScrollView i;
    private RelativeLayout j;
    private TextView k;
    private TextView l;
    private TextView m;
    private ListView n;
    private ArrayList<String> o;
    private ArrayList<DataLayerManager.CacheInfo> p;
    private ArrayList<a> q;
    private ArrayList<a> r;
    private int s;
    private ProgressDialog t;
    private boolean u = false;
    private boolean v = false;
    private Handler w = new Handler() {
        /* class com.lenovo.performancecenter.performance.PhoneAccelerateActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    PhoneAccelerateActivity.this.v = true;
                    PhoneAccelerateActivity.this.w.sendMessage(PhoneAccelerateActivity.this.w.obtainMessage(3));
                    PhoneAccelerateActivity.this.j.setClickable(true);
                    if (PhoneAccelerateActivity.this.o.size() == 0) {
                        PhoneAccelerateActivity.this.k.setText(PhoneAccelerateActivity.this.a.getString(R.string.phone_acc_running_app_none));
                        return;
                    }
                    PhoneAccelerateActivity.this.k.setText(Html.fromHtml(PhoneAccelerateActivity.this.getString(R.string.phone_acc_running_app, new Object[]{Integer.valueOf(PhoneAccelerateActivity.this.o.size())})));
                    return;
                case 2:
                    PhoneAccelerateActivity.this.u = true;
                    Log.i("HomePage", "handleMessage ---> cacheAppSize == " + PhoneAccelerateActivity.this.p.size());
                    PhoneAccelerateActivity.this.w.sendMessage(PhoneAccelerateActivity.this.w.obtainMessage(3));
                    if (PhoneAccelerateActivity.this.p.size() == 0) {
                        PhoneAccelerateActivity.this.l.setText(PhoneAccelerateActivity.this.getString(R.string.clear_cache_getting));
                        return;
                    }
                    PhoneAccelerateActivity.this.l.setText(Html.fromHtml(PhoneAccelerateActivity.this.a.getString(R.string.title_clear_cache_summery, Integer.valueOf(PhoneAccelerateActivity.this.p.size()))));
                    return;
                case 3:
                    if (PhoneAccelerateActivity.this.v && PhoneAccelerateActivity.this.u) {
                        PhoneAccelerateActivity.this.a((PhoneAccelerateActivity) false);
                        Log.i("HomePage", "mRunningCount == " + PhoneAccelerateActivity.this.o.size() + " cacheAppList.size() == " + PhoneAccelerateActivity.this.p.size());
                        if (PhoneAccelerateActivity.this.o.size() == 0 && PhoneAccelerateActivity.this.p.size() == 0) {
                            PhoneAccelerateActivity.this.g.setVisibility(8);
                            PhoneAccelerateActivity.this.c.setText(PhoneAccelerateActivity.this.a.getString(R.string.one_key_speed_notice_4));
                            PhoneAccelerateActivity.this.d.setVisibility(0);
                            PhoneAccelerateActivity.this.d.setText(PhoneAccelerateActivity.this.a.getString(R.string.one_key_speed_title_4));
                            PhoneAccelerateActivity.this.d.setTextColor(PhoneAccelerateActivity.this.a.getResources().getColor(R.color.green_36a022));
                            return;
                        }
                        PhoneAccelerateActivity.this.g.setText(PhoneAccelerateActivity.this.a.getString(R.string.one_key_speed_btn));
                        PhoneAccelerateActivity.this.g.setVisibility(0);
                        PhoneAccelerateActivity.this.c.setText(PhoneAccelerateActivity.this.a.getString(R.string.one_key_speed_notice_1));
                        PhoneAccelerateActivity.this.d.setVisibility(0);
                        PhoneAccelerateActivity.this.d.setText(PhoneAccelerateActivity.this.a.getString(R.string.one_key_speed_title_1));
                        PhoneAccelerateActivity.this.d.setTextColor(PhoneAccelerateActivity.this.a.getResources().getColor(R.color.red_d74b06));
                        return;
                    }
                    return;
                case 4:
                    if (!WflUtils.isRoot()) {
                        PhoneAccelerateActivity.this.m.setText(PhoneAccelerateActivity.this.a.getString(R.string.notice_no_rooted_for_boot_mainpage));
                        return;
                    } else if (msg.arg1 == 0) {
                        PhoneAccelerateActivity.this.m.setText(PhoneAccelerateActivity.this.a.getString(R.string.taskmanager_avail_boot_autorun_fine));
                        return;
                    } else {
                        PhoneAccelerateActivity.this.m.setText(Html.fromHtml(PhoneAccelerateActivity.this.getString(R.string.taskmanager_avail_boot_autorun, new Object[]{Integer.valueOf(msg.arg1)})));
                        return;
                    }
                case 5:
                    Log.i("HomePage", "handler receive, update ui");
                    PhoneAccelerateActivity.n(PhoneAccelerateActivity.this);
                    return;
                case 6:
                    PhoneAccelerateActivity.this.u = true;
                    Log.i("HomePage", "Handler.receive ---> totalCacheSize == 0");
                    PhoneAccelerateActivity.this.w.sendMessage(PhoneAccelerateActivity.this.w.obtainMessage(3));
                    PhoneAccelerateActivity.this.l.setText(PhoneAccelerateActivity.this.getString(R.string.clear_cache_getting));
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void n(PhoneAccelerateActivity x0) {
        x0.r = new ArrayList<>();
        x0.q = new ArrayList<>();
        PackageManager packageManager = x0.getPackageManager();
        Iterator<String> it = x0.o.iterator();
        while (it.hasNext()) {
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(it.next(), 0);
                x0.q.add(new a(((Object) applicationInfo.loadLabel(packageManager)) + "", DataLayerManager.drawableToBitmap(applicationInfo.loadIcon(packageManager))));
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        if (!x0.q.isEmpty()) {
            x0.q.add(0, new a(x0.a.getString(R.string.you_can_accelerate_2, Integer.valueOf(x0.o.size()), Formatter.formatFileSize(x0.a, (long) x0.s))));
            x0.r.addAll(x0.q);
            x0.r.trimToSize();
        }
        if (!x0.p.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            long j2 = 0;
            Iterator<DataLayerManager.CacheInfo> it2 = x0.p.iterator();
            while (it2.hasNext()) {
                DataLayerManager.CacheInfo next = it2.next();
                arrayList.add(new a(next.pkgName, next.appName, next.appIcon, next.cacheSize));
                j2 = next.appCacheSize + j2;
            }
            arrayList.trimToSize();
            x0.r.add(x0.q.size(), new a(x0.getString(R.string.rf_cache_clear_size_t) + Formatter.formatFileSize(x0.a, j2)));
            x0.r.addAll(arrayList);
            x0.r.trimToSize();
        }
        x0.n.setAdapter((ListAdapter) new TaskManagerAdapter());
        x0.i.setVisibility(8);
        x0.g.setText(x0.a.getString(R.string.one_key_speed_btn_ok));
        x0.c.setText(x0.a.getString(R.string.one_key_speed_notice_3));
        x0.d.setVisibility(0);
        x0.d.setText(R.string.one_key_speed_title_3);
        x0.d.setTextColor(x0.a.getResources().getColor(R.color.green_36a022));
        x0.a(false);
        if (x0.t != null) {
            x0.t.cancel();
        }
    }

    static /* synthetic */ void p(PhoneAccelerateActivity x0) {
        Log.i("HomePage", System.currentTimeMillis() + "---> loadProcess start");
        long currentTimeMillis = System.currentTimeMillis() - Utils.getLastKillTime(x0.a);
        if (currentTimeMillis > Utils.CLICK_INTERVAL || currentTimeMillis <= 0) {
            x0.o = ScanApplicationInfo.getRunningAppListJustInLauncher(x0.a);
        } else {
            x0.o = new ArrayList<>();
        }
        x0.w.sendEmptyMessage(1);
        Log.i("HomePage", System.currentTimeMillis() + "---> loadProcess end");
    }

    static /* synthetic */ void q(PhoneAccelerateActivity x0) {
        boolean z = false;
        Log.i("HomePage", System.currentTimeMillis() + "---> loadCache start");
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = x0.getSharedPreferences("PERF_RECORD", 0).getLong("CLICKTIME", 0);
        long j3 = currentTimeMillis - j2;
        Log.i("HomePage", "lastClickTime == " + j2 + " currentEnterTime == " + currentTimeMillis);
        Log.i("HomePage", "substract == " + j3);
        if (j3 <= 20000 && j3 > 0) {
            z = true;
        }
        if (z) {
            x0.w.sendEmptyMessage(6);
            return;
        }
        x0.p = new ApplicationDataInfo(x0.a).getCacheInfo(x0.a, x0.getPackageManager());
        x0.w.sendEmptyMessage(2);
        Log.i("HomePage", System.currentTimeMillis() + "---> loadCache end");
    }

    static /* synthetic */ void r(PhoneAccelerateActivity x0) {
        Log.i("HomePage", System.currentTimeMillis() + "---> loadBoot start");
        DataLayerManageBoot dataLayerManageBoot = new DataLayerManageBoot();
        dataLayerManageBoot.getBootMap(x0.a);
        int needChangeToForbidJustCount = dataLayerManageBoot.getNeedChangeToForbidJustCount();
        Log.i("HomePage", System.currentTimeMillis() + "---> loadBoot end");
        Message obtainMessage = x0.w.obtainMessage(4);
        obtainMessage.arg1 = needChangeToForbidJustCount;
        x0.w.sendMessage(obtainMessage);
    }

    static /* synthetic */ void s(PhoneAccelerateActivity x0) {
        ArrayList arrayList = new ArrayList();
        HashMap<String, int[]> runningAppInfo = ScanApplicationInfo.getRunningAppInfo(x0.a);
        x0.s = 0;
        for (Map.Entry<String, int[]> entry : runningAppInfo.entrySet()) {
            arrayList.add(entry.getKey());
            x0.s = entry.getValue()[1] + x0.s;
        }
        if (arrayList.size() > 0) {
            RootPassage.execRootCmd(null, arrayList, " -fs ", x0.a);
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.rf_phone_accelerate);
        this.a = this;
        findViewById(R.id.title_back).setOnClickListener(this);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.opti_name);
        ImageView imageView = (ImageView) findViewById(R.id.title_set);
        imageView.setImageResource(R.drawable.rf_perf_title_set);
        imageView.setVisibility(4);
        imageView.setOnClickListener(this);
        this.b = (CpuAndMemeoryLayout) findViewById(R.id.cpu_mem_layout);
        this.c = (TextView) findViewById(R.id.one_key_notice);
        this.d = (TextView) findViewById(R.id.one_key_title);
        this.g = (TextView) findViewById(R.id.one_key_speed_up);
        this.f = (ProgressBar) findViewById(R.id.scanProgressBar);
        this.e = (LinearLayout) findViewById(R.id.scanProgressBarLayout);
        this.k = (TextView) findViewById(R.id.memory_free);
        this.l = (TextView) findViewById(R.id.total_cache);
        this.m = (TextView) findViewById(R.id.boot_count);
        this.h = (TextView) findViewById(R.id.you_can_accelerate);
        this.i = (ScrollView) findViewById(R.id.scrollview);
        this.j = (RelativeLayout) findViewById(R.id.task_manager_layout);
        this.j.setOnClickListener(this);
        findViewById(R.id.clear_cache_layout).setOnClickListener(this);
        findViewById(R.id.boot_speed_layout).setOnClickListener(this);
        findViewById(R.id.whitelist_layout).setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.n = (ListView) findViewById(R.id.listView);
        this.n.setDivider(null);
        Utils.isPerfRoot = WflUtils.isRoot();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.k.setText(getString(R.string.phone_acc_getting_data));
        this.l.setText(getString(R.string.phone_acc_getting_data));
        this.m.setText(getString(R.string.phone_acc_getting_data));
        this.i.setVisibility(0);
        this.h.setText(this.a.getString(R.string.you_can_accelerate_0));
        this.j.setClickable(false);
        this.c.setText(this.a.getString(R.string.one_key_speed_notice_0));
        this.d.setVisibility(4);
        a(true);
        this.b.onResume();
        this.o = new ArrayList<>();
        this.p = new ArrayList<>();
        new Thread() {
            /* class com.lenovo.performancecenter.performance.PhoneAccelerateActivity.AnonymousClass3 */

            public final void run() {
                PhoneAccelerateActivity.this.u = false;
                PhoneAccelerateActivity.this.v = false;
                PhoneAccelerateActivity.p(PhoneAccelerateActivity.this);
                PhoneAccelerateActivity.q(PhoneAccelerateActivity.this);
                PhoneAccelerateActivity.r(PhoneAccelerateActivity.this);
            }
        }.start();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(boolean bool) {
        if (bool) {
            this.e.setVisibility(0);
            this.f.setVisibility(0);
            this.f.setIndeterminate(true);
            this.g.setVisibility(8);
            return;
        }
        this.e.setVisibility(8);
        this.f.setVisibility(8);
        this.f.setIndeterminate(false);
        this.g.setVisibility(0);
    }

    public static void getAutoClearTimeGap(Context context, TextView textView) {
        SharedPreferences pref1 = context.getSharedPreferences(ScanApplicationInfo.POLICY_SETTINGS, 0);
        long savedVal = pref1.getLong(ScanApplicationInfo.POLICY_TIME, 20);
        if (pref1.getBoolean(ScanApplicationInfo.POLICY_SWITCH, true)) {
            textView.setText(Html.fromHtml(context.getResources().getString(R.string.time_summary, Long.valueOf(savedVal))));
            return;
        }
        textView.setText(context.getString(R.string.time_summary_none));
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        this.b.onPause();
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
    }

    public void onClick(View v2) {
        switch (v2.getId()) {
            case R.id.one_key_speed_up /*{ENCODED_INT: 2131297499}*/:
                if (this.g.getText().equals(getString(R.string.one_key_speed_btn))) {
                    Log.i("HomePage", System.currentTimeMillis() + " KillProcessAll");
                    this.d.setVisibility(4);
                    this.c.setText(this.a.getString(R.string.one_key_speed_notice_2));
                    a(true);
                    this.h.setText(this.a.getString(R.string.you_can_accelerate_1));
                    ProgressDialog progressDialog = new ProgressDialog(this);
                    this.t = progressDialog;
                    progressDialog.setMessage(getString(R.string.set_auto_is_running_progress_dialog));
                    progressDialog.setIndeterminate(true);
                    progressDialog.setCancelable(true);
                    progressDialog.setCanceledOnTouchOutside(false);
                    progressDialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
                        /* class com.lenovo.performancecenter.performance.PhoneAccelerateActivity.AnonymousClass2 */

                        public final boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                            return true;
                        }
                    });
                    progressDialog.show();
                    new Thread() {
                        /* class com.lenovo.performancecenter.performance.PhoneAccelerateActivity.AnonymousClass4 */

                        public final void run() {
                            PhoneAccelerateActivity.s(PhoneAccelerateActivity.this);
                            ApplicationDataInfo.clearAllCache(PhoneAccelerateActivity.this.getPackageManager());
                            PhoneAccelerateActivity.this.w.sendEmptyMessage(5);
                        }
                    }.start();
                    long currentTimeMillis = System.currentTimeMillis();
                    SharedPreferences.Editor edit = getSharedPreferences("PERF_RECORD", 0).edit();
                    edit.putLong("CLICKTIME", currentTimeMillis);
                    edit.commit();
                    Utils.recordKillTimeAndPosition(this.a, System.currentTimeMillis(), 1);
                    TrackEvent.reportClickOneKeyEndTask();
                    return;
                }
                a();
                return;
            case R.id.task_manager_layout /*{ENCODED_INT: 2131297519}*/:
                startActivity(new Intent(this, TaskManagerActivity.class));
                return;
            case R.id.clear_cache_layout /*{ENCODED_INT: 2131297521}*/:
                startActivity(new Intent(this, ClearCacheActivity.class));
                return;
            case R.id.boot_speed_layout /*{ENCODED_INT: 2131297525}*/:
                startActivity(new Intent(this, BootSpeedActivity.class));
                return;
            case R.id.whitelist_layout /*{ENCODED_INT: 2131297527}*/:
                startActivity(new Intent(this, PerfWhitelistActivity.class));
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                a();
                return;
            default:
                return;
        }
    }

    public class TaskManagerAdapter extends BaseAdapter {
        public TaskManagerAdapter() {
        }

        public int getCount() {
            return PhoneAccelerateActivity.this.r.size();
        }

        public Object getItem(int position) {
            return PhoneAccelerateActivity.this.r.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            b mTaskManagerViewHolder = new b();
            if (position == 0 || position == PhoneAccelerateActivity.this.q.size()) {
                View convertView2 = View.inflate(PhoneAccelerateActivity.this.a, R.layout.list_checkbox_item_title, null);
                mTaskManagerViewHolder.c = (TextView) convertView2.findViewById(16908310);
                mTaskManagerViewHolder.c.setText(((a) PhoneAccelerateActivity.this.r.get(position)).f);
                return convertView2;
            } else if (position < PhoneAccelerateActivity.this.q.size()) {
                View convertView3 = View.inflate(PhoneAccelerateActivity.this.a, R.layout.rf_perf_phone_accelerate_details, null);
                mTaskManagerViewHolder.b = (ImageView) convertView3.findViewById(R.id.process_icon);
                mTaskManagerViewHolder.c = (TextView) convertView3.findViewById(R.id.process_name);
                a uai = (a) PhoneAccelerateActivity.this.r.get(position);
                convertView3.setTag(new Object[]{mTaskManagerViewHolder, uai});
                mTaskManagerViewHolder.b.setImageBitmap(uai.c);
                mTaskManagerViewHolder.c.setText(uai.b);
                return convertView3;
            } else if (position <= PhoneAccelerateActivity.this.q.size()) {
                return convertView;
            } else {
                View convertView4 = View.inflate(PhoneAccelerateActivity.this.a, R.layout.rf_perf_phone_accelerate_details, null);
                mTaskManagerViewHolder.b = (ImageView) convertView4.findViewById(R.id.process_icon);
                mTaskManagerViewHolder.c = (TextView) convertView4.findViewById(R.id.process_name);
                mTaskManagerViewHolder.d = (TextView) convertView4.findViewById(R.id.process_state);
                a ai = (a) PhoneAccelerateActivity.this.r.get(position);
                convertView4.setTag(new Object[]{mTaskManagerViewHolder, ai});
                mTaskManagerViewHolder.b.setImageBitmap(ai.c);
                mTaskManagerViewHolder.c.setText(ai.b);
                mTaskManagerViewHolder.d.setText(PhoneAccelerateActivity.this.getString(R.string.string_cache) + ai.e);
                return convertView4;
            }
        }
    }

    class b {
        private ImageView b;
        private TextView c;
        private TextView d;

        b() {
        }
    }

    /* access modifiers changed from: package-private */
    public class a {
        private String b;
        private Bitmap c;
        private String d;
        private String e;
        private String f;

        public a(String title) {
            this.f = title;
        }

        public a(String pkgName, String appName, Bitmap appIcon, String cacheSize) {
            this.d = pkgName;
            this.b = appName;
            this.c = appIcon;
            this.e = cacheSize;
        }

        public a(String appName, Bitmap appIcon) {
            this.b = appName;
            this.c = appIcon;
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            a();
        }
        return super.onKeyDown(keyCode, event);
    }

    private void a() {
        startActivity(new Intent(this, LeSafeMainActivity.class));
        finish();
    }
}
