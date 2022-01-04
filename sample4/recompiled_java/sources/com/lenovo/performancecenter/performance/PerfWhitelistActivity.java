package com.lenovo.performancecenter.performance;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.framework.PerformanceDatabaseHelper;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PerfWhitelistActivity extends Activity implements View.OnClickListener {
    private LinearLayout a;
    private LinearLayout b;
    private ListView c;
    private b d;
    private ImageView e;
    private TextView f;
    private ArrayList<a> g;
    private int h;
    private HashMap<String, int[]> i;
    private PackageManager j;
    private SQLiteDatabase k;
    private PerformanceDatabaseHelper l;
    private ArrayList<String> m;
    private ArrayList<String> n;
    private Context o;
    private AdapterView.OnItemClickListener p = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.performancecenter.performance.PerfWhitelistActivity.AnonymousClass1 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            int i;
            boolean z;
            int i2 = 0;
            a appInfo = (a) PerfWhitelistActivity.this.g.get(position);
            if (position != 0 && position != PerfWhitelistActivity.this.h) {
                if (appInfo.d == 1) {
                    i = 0;
                } else {
                    i = 1;
                }
                appInfo.d = i;
                String pkgName = appInfo.b;
                int toState = appInfo.d;
                PerfWhitelistActivity.this.i.put(pkgName, new int[]{toState});
                c vh = (c) view.getTag();
                CheckBox checkBox = vh.d;
                if (toState == 1) {
                    z = true;
                } else {
                    z = false;
                }
                checkBox.setChecked(z);
                if (PerfWhitelistActivity.this.m.contains(pkgName) || PerfWhitelistActivity.this.n.contains(pkgName)) {
                    TextView textView = vh.e;
                    if (toState == 1) {
                        i2 = 4;
                    }
                    textView.setVisibility(i2);
                    return;
                }
                vh.e.setVisibility(4);
            }
        }
    };
    private Handler q = new Handler() {
        /* class com.lenovo.performancecenter.performance.PerfWhitelistActivity.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    PerfWhitelistActivity.this.a.setVisibility(8);
                    if (PerfWhitelistActivity.this.g.size() == 0) {
                        PerfWhitelistActivity.this.b.setVisibility(0);
                        return;
                    } else {
                        PerfWhitelistActivity.this.d.notifyDataSetChanged();
                        return;
                    }
                default:
                    return;
            }
        }
    };

    static /* synthetic */ ArrayList i(PerfWhitelistActivity x0) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        List<ApplicationInfo> installedApplications = x0.j.getInstalledApplications(0);
        ArrayList<String> installedAppInLauncher = ScanApplicationInfo.getInstalledAppInLauncher(x0.getApplicationContext());
        ArrayList<String> a2 = x0.a();
        for (ApplicationInfo applicationInfo : installedApplications) {
            String str = applicationInfo.packageName;
            if (installedAppInLauncher.contains(str) && !DataLayerManager.getLenovoHighLevelPkg(x0.o).contains(str)) {
                boolean z = !((applicationInfo.flags & 1) <= 0);
                String str2 = ((Object) applicationInfo.loadLabel(x0.j)) + "";
                Bitmap drawableToBitmap = DataLayerManager.drawableToBitmap(applicationInfo.loadIcon(x0.j));
                if (a2.contains(str)) {
                    if (z) {
                        arrayList.add(new a(str, 1, 1, str2, drawableToBitmap));
                    } else {
                        arrayList2.add(new a(str, 0, 1, str2, drawableToBitmap));
                    }
                } else if (z) {
                    arrayList3.add(new a(str, 1, 0, str2, drawableToBitmap));
                } else {
                    arrayList4.add(new a(str, 0, 0, str2, drawableToBitmap));
                }
            }
        }
        arrayList.addAll(arrayList3);
        arrayList2.addAll(arrayList4);
        if (arrayList.size() != 0) {
            arrayList.add(0, new a(true, "系统应用（" + arrayList.size() + "）"));
        }
        if (arrayList2.size() != 0) {
            arrayList2.add(0, new a(true, "用户应用（" + arrayList2.size() + "）"));
        }
        arrayList2.trimToSize();
        arrayList.trimToSize();
        x0.h = arrayList2.size();
        ArrayList arrayList5 = new ArrayList();
        arrayList5.addAll(arrayList2);
        arrayList5.addAll(arrayList);
        arrayList5.trimToSize();
        return arrayList5;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.rf_perf_white_list);
        this.e = (ImageView) findViewById(R.id.title_back);
        this.f = (TextView) findViewById(R.id.txt_title);
        this.f.setText(R.string.title_hlmd);
        this.e.setOnClickListener(this);
        this.a = (LinearLayout) findViewById(R.id.progress_bar);
        this.b = (LinearLayout) findViewById(R.id.layout_empty);
        this.c = (ListView) findViewById(R.id.ignoreList);
        this.o = this;
        this.a.setVisibility(0);
        this.j = getPackageManager();
        this.g = new ArrayList<>();
        this.h = 0;
        this.i = new HashMap<>();
        this.m = DataLayerManager.getWhiteListNotKill(getApplicationContext());
        this.n = DataLayerManager.getWhiteListSuggestNotKill();
        this.d = new b(this);
        this.c.setAdapter((ListAdapter) this.d);
        this.c.setOnItemClickListener(this.p);
        if (this.l == null) {
            this.l = new PerformanceDatabaseHelper(this);
        }
        if (this.k == null) {
            this.k = this.l.getReadableDatabase();
        }
        new Thread() {
            /* class com.lenovo.performancecenter.performance.PerfWhitelistActivity.AnonymousClass3 */

            public final void run() {
                PerfWhitelistActivity.this.g = PerfWhitelistActivity.i(PerfWhitelistActivity.this);
                PerfWhitelistActivity.this.q.sendMessage(PerfWhitelistActivity.this.q.obtainMessage(1));
            }
        }.start();
    }

    public void onStart() {
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    private ArrayList<String> a() {
        Cursor cursor;
        ArrayList<String> listProtected = new ArrayList<>();
        if (!(this.k == null || (cursor = this.k.rawQuery("SELECT * FROM ApplicationsInfo where state = 1 ", null)) == null)) {
            if (cursor.getCount() > 0) {
                cursor.moveToFirst();
                while (!cursor.isAfterLast()) {
                    listProtected.add(cursor.getString(cursor.getColumnIndex("pkgName")));
                    cursor.moveToNext();
                }
            }
            cursor.close();
        }
        return listProtected;
    }

    /* access modifiers changed from: package-private */
    public class a {
        private String b;
        private int c;
        private int d;
        private String e;
        private Bitmap f;
        private boolean g;
        private String h;

        public a(String pkgName, int flag, int state, String appName, Bitmap icon) {
            this.b = pkgName;
            this.c = flag;
            this.d = state;
            this.e = appName;
            this.f = icon;
        }

        public a(Boolean isTitle, String titleName) {
            this.g = isTitle.booleanValue();
            this.h = titleName;
        }
    }

    /* access modifiers changed from: package-private */
    public class b extends BaseAdapter {
        private LayoutInflater b;

        public b(Context context) {
            this.b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public final int getCount() {
            return PerfWhitelistActivity.this.g.size();
        }

        public final Object getItem(int position) {
            return PerfWhitelistActivity.this.g.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            c holder;
            boolean z;
            int i = 0;
            if (convertView == null) {
                holder = new c();
                if (position == 0 || position == PerfWhitelistActivity.this.h) {
                    convertView = this.b.inflate(R.layout.list_checkbox_item_title, (ViewGroup) null);
                    holder.c = (TextView) convertView.findViewById(16908310);
                } else {
                    convertView = this.b.inflate(R.layout.list_checkbox_item_other, (ViewGroup) null);
                    holder.c = (TextView) convertView.findViewById(R.id.title);
                    holder.b = (ImageView) convertView.findViewById(R.id.icon);
                    holder.e = (TextView) convertView.findViewById(R.id.textSuggest);
                    holder.d = (CheckBox) convertView.findViewById(R.id.checkboxWidget);
                    holder.d.setButtonDrawable(R.drawable.selector_lock);
                }
                convertView.setTag(holder);
            } else {
                holder = (c) convertView.getTag();
            }
            a appInfo = (a) PerfWhitelistActivity.this.g.get(position);
            Log.i("PerfWhitelist", "pkgName == " + appInfo.b + " " + position + " titlePosition == " + PerfWhitelistActivity.this.h);
            if (position == 0 || position == PerfWhitelistActivity.this.h) {
                holder.c.setText(appInfo.h);
            } else {
                holder.c.setText(appInfo.e);
                if (holder.b != null) {
                    holder.b.setImageBitmap(appInfo.f);
                }
                if (holder.d != null) {
                    CheckBox checkBox = holder.d;
                    if (appInfo.d == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    checkBox.setChecked(z);
                }
                if (PerfWhitelistActivity.this.m.contains(appInfo.b) || PerfWhitelistActivity.this.n.contains(appInfo.b)) {
                    TextView textView = holder.e;
                    if (appInfo.d == 1) {
                        i = 4;
                    }
                    textView.setVisibility(i);
                } else {
                    holder.e.setVisibility(4);
                }
            }
            return convertView;
        }

        public final int getItemViewType(int position) {
            if (position == 0 || position == PerfWhitelistActivity.this.h) {
                return 0;
            }
            return 1;
        }

        public final int getViewTypeCount() {
            return 2;
        }
    }

    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (this.k != null) {
            this.k.close();
            this.k = null;
        }
        if (this.l != null) {
            this.l.close();
            this.l = null;
        }
        if (this.g != null) {
            this.g.clear();
        }
        super.onDestroy();
    }

    public void onClick(View v) {
        if (v.getId() == R.id.title_back) {
            DataLayerManager.updateApplicationList(this, this.i);
            finish();
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            DataLayerManager.updateApplicationList(this, this.i);
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    class c {
        private ImageView b;
        private TextView c;
        private CheckBox d;
        private TextView e;

        c() {
        }
    }
}
