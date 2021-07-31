package com.lenovo.performancecenter.performance;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TaskManagerActivity extends Activity implements View.OnClickListener {
    public static final String TAG = "TaskManagerActivity";
    private ImageView a;
    private TextView b;
    private TextView c;
    private LinearLayout d;
    private LinearLayout e;
    private ListView f;
    private a g;
    private Button h;
    private List<AppInfo> i;
    private ArrayList<AppInfo> j;
    private ArrayList<AppInfo> k;
    private ArrayList<String> l;
    private int m;
    private Context n;
    private AdapterView.OnItemClickListener o = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.performancecenter.performance.TaskManagerActivity.AnonymousClass1 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            int currentAppCount;
            int userSize = TaskManagerActivity.this.j.size();
            if (position != 0 && position != userSize) {
                b vh = (b) view.getTag();
                String pkgName = vh.f;
                TaskManagerActivity.this.i.remove(position);
                if (position <= userSize) {
                    TaskManagerActivity.this.j.remove(position);
                    if (TaskManagerActivity.this.j.size() == 1) {
                        TaskManagerActivity.this.i.remove(0);
                        TaskManagerActivity.this.j.remove(0);
                    }
                } else {
                    TaskManagerActivity.this.k.remove(position - userSize);
                    if (TaskManagerActivity.this.k.size() == 1) {
                        TaskManagerActivity.this.i.remove(userSize);
                        TaskManagerActivity.this.k.remove(0);
                    }
                }
                TaskManagerActivity.this.g.notifyDataSetChanged();
                TaskManagerActivity.this.m -= vh.g;
                if (TaskManagerActivity.this.j.size() == 0 && TaskManagerActivity.this.k.size() == 0) {
                    currentAppCount = 0;
                } else if (TaskManagerActivity.this.j.size() == 0 || TaskManagerActivity.this.k.size() == 0) {
                    currentAppCount = TaskManagerActivity.this.i.size() - 1;
                } else {
                    currentAppCount = TaskManagerActivity.this.i.size() - 2;
                }
                TaskManagerActivity.this.c.setText(TaskManagerActivity.this.getString(R.string.task_manager_title, new Object[]{Integer.valueOf(currentAppCount), Formatter.formatFileSize(TaskManagerActivity.this.n, (long) TaskManagerActivity.this.m)}));
                if (currentAppCount == 0) {
                    TaskManagerActivity.this.c.setVisibility(8);
                    TaskManagerActivity.this.e.setVisibility(0);
                }
                RootPassage.execRootCmd(pkgName, " -fs ", TaskManagerActivity.this.n);
            }
        }
    };
    private Handler p = new Handler() {
        /* class com.lenovo.performancecenter.performance.TaskManagerActivity.AnonymousClass3 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    TaskManagerActivity.this.d.setVisibility(8);
                    int runningAppCount = msg.arg1;
                    if (runningAppCount == 0) {
                        TaskManagerActivity.this.c.setVisibility(8);
                        TaskManagerActivity.this.e.setVisibility(0);
                        return;
                    }
                    TaskManagerActivity.this.c.setVisibility(0);
                    TaskManagerActivity.this.c.setText(TaskManagerActivity.this.getString(R.string.task_manager_title, new Object[]{Integer.valueOf(runningAppCount), Formatter.formatFileSize(TaskManagerActivity.this.n, (long) TaskManagerActivity.this.m)}));
                    TaskManagerActivity.this.e.setVisibility(8);
                    TaskManagerActivity.this.g.notifyDataSetChanged();
                    return;
                default:
                    return;
            }
        }
    };

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.rf_perf_stop_apps);
        this.a = (ImageView) findViewById(R.id.title_back);
        this.b = (TextView) findViewById(R.id.txt_title);
        this.b.setText(R.string.stop_application);
        this.a.setOnClickListener(this);
        this.c = (TextView) findViewById(R.id.task_manager_title);
        this.d = (LinearLayout) findViewById(R.id.progress_bar);
        this.e = (LinearLayout) findViewById(R.id.linear_empty);
        this.f = (ListView) findViewById(R.id.ignoreList);
        this.h = (Button) findViewById(R.id.one_key_delete);
        this.h.setOnClickListener(this);
        this.n = this;
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.d.setVisibility(0);
        this.i = new ArrayList();
        this.j = new ArrayList<>();
        this.k = new ArrayList<>();
        this.m = 0;
        this.l = new ArrayList<>();
        new Thread() {
            /* class com.lenovo.performancecenter.performance.TaskManagerActivity.AnonymousClass2 */

            public final void run() {
                PackageManager pm = TaskManagerActivity.this.getPackageManager();
                Log.i(TaskManagerActivity.TAG, System.currentTimeMillis() + "initListData start");
                int totalDisplayAppCount = TaskManagerActivity.this.a((TaskManagerActivity) pm);
                Log.i(TaskManagerActivity.TAG, System.currentTimeMillis() + "initListData end");
                Message msg = TaskManagerActivity.this.p.obtainMessage(1);
                msg.arg1 = totalDisplayAppCount;
                TaskManagerActivity.this.p.sendMessage(msg);
            }
        }.start();
        this.g = new a(this);
        this.f.setAdapter((ListAdapter) this.g);
        this.f.setOnItemClickListener(this.o);
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private int a(PackageManager pm) {
        HashMap<String, int[]> runningAppMap;
        long interval = System.currentTimeMillis() - Utils.getLastKillTime(this.n);
        int totalDisplayAppCount = 0;
        if (interval > Utils.CLICK_INTERVAL || interval <= 0) {
            Log.i(TAG, System.currentTimeMillis() + "readRunningAppCountIncludingHidden start");
            runningAppMap = ScanApplicationInfo.getRunningAppInfoJustInLauncher(this.n);
            Log.i(TAG, System.currentTimeMillis() + "readRunningAppCountIncludingHidden end");
        } else {
            runningAppMap = new HashMap<>();
        }
        for (Map.Entry<String, int[]> element : runningAppMap.entrySet()) {
            String pkgName = element.getKey();
            this.l.add(pkgName);
            if (element.getValue()[2] == 1) {
                try {
                    ApplicationInfo appInfo = pm.getApplicationInfo(pkgName, 0);
                    AppInfo info = new AppInfo(pkgName, ((Object) appInfo.loadLabel(pm)) + "", null, new SoftReference<>(DataLayerManager.drawableToBitmap(appInfo.loadIcon(pm))).get(), 0, (appInfo.flags & 1) <= 0 ? 0 : 1);
                    info.memory = element.getValue()[1];
                    this.m += info.memory;
                    totalDisplayAppCount++;
                    if (info.flag == 0) {
                        this.j.add(info);
                    } else {
                        this.k.add(info);
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    e2.printStackTrace();
                }
            }
        }
        if (this.j.size() > 0) {
            this.j.add(0, new AppInfo(true, true, getString(R.string.title_ignore_white_list_user_app)));
        }
        if (this.k.size() > 0) {
            this.k.add(0, new AppInfo(true, false, getString(R.string.title_ignore_white_list_system_app)));
        }
        this.j.trimToSize();
        this.k.trimToSize();
        this.i.addAll(this.j);
        this.i.addAll(this.k);
        return totalDisplayAppCount;
    }

    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.one_key_delete /*{ENCODED_INT: 2131297479}*/:
                this.c.setVisibility(8);
                this.e.setVisibility(0);
                RootPassage.execRootCmd(null, this.l, " -fs ", this.n);
                Utils.recordKillTimeAndPosition(this.n, System.currentTimeMillis(), 2);
                return;
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                finish();
                return;
            default:
                return;
        }
    }

    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }

    /* access modifiers changed from: package-private */
    public class a extends BaseAdapter {
        private LayoutInflater b;

        public a(Context context) {
            this.b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public final int getCount() {
            return TaskManagerActivity.this.i.size();
        }

        public final Object getItem(int position) {
            return TaskManagerActivity.this.i.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            b holder;
            String title;
            if (convertView == null) {
                holder = new b();
                if (position == 0 || position == TaskManagerActivity.this.j.size()) {
                    convertView = this.b.inflate(R.layout.list_checkbox_item_title, (ViewGroup) null);
                    holder.c = (TextView) convertView.findViewById(16908310);
                } else {
                    convertView = this.b.inflate(R.layout.rf_perf_taskmanager_detial, (ViewGroup) null);
                    holder.c = (TextView) convertView.findViewById(R.id.title);
                    holder.d = (TextView) convertView.findViewById(R.id.memory);
                    holder.b = (ImageView) convertView.findViewById(R.id.icon);
                    holder.e = (ImageView) convertView.findViewById(R.id.appDelete);
                }
                convertView.setTag(holder);
            } else {
                holder = (b) convertView.getTag();
            }
            AppInfo aInfo = (AppInfo) TaskManagerActivity.this.i.get(position);
            if (aInfo != null) {
                if (!aInfo.isTitle) {
                    holder.f = aInfo.pkgName;
                    holder.g = aInfo.memory;
                    if (aInfo.appIcon != null) {
                        holder.b.setImageBitmap(aInfo.appIcon);
                    }
                    if (aInfo.appName != null) {
                        holder.c.setText(aInfo.appName);
                    }
                    holder.d.setText(Formatter.formatFileSize(TaskManagerActivity.this.n, (long) aInfo.memory));
                    holder.e.setVisibility(0);
                } else {
                    if (aInfo.isUserApp) {
                        title = aInfo.title.replaceAll("%1\\$s", (TaskManagerActivity.this.j.size() - 1) + "");
                    } else {
                        title = aInfo.title.replaceAll("%1\\$s", (TaskManagerActivity.this.k.size() - 1) + "");
                    }
                    holder.c.setText(title);
                }
            }
            return convertView;
        }

        public final int getItemViewType(int position) {
            if (position == 0 || position == TaskManagerActivity.this.j.size()) {
                return 0;
            }
            return 1;
        }

        public final int getViewTypeCount() {
            return 2;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (this.i != null) {
            this.i.clear();
        }
        super.onDestroy();
    }

    class b {
        private ImageView b;
        private TextView c;
        private TextView d;
        private ImageView e;
        private String f;
        private int g;

        b() {
        }
    }
}
