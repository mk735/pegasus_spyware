package com.lenovo.performancecenter.performance;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
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
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.framework.PerformanceDatabaseHelper;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.BaseTitlePreferenceActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class WhiteListSelectActivity extends BaseTitlePreferenceActivity implements View.OnClickListener {
    private Button a;
    private ListView b;
    private LinearLayout c;
    private List<a> d;
    private ArrayList<a> e;
    private ArrayList<a> f;
    private PackageManager g;
    private SQLiteDatabase h;
    private PerformanceDatabaseHelper i;
    private HashMap<String, SelectedItem> j = new HashMap<>();
    private LinearLayout k;
    private b l;
    private ArrayList<String> m;
    private Handler n = new Handler() {
        /* class com.lenovo.performancecenter.performance.WhiteListSelectActivity.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    WhiteListSelectActivity.this.k.setVisibility(8);
                    WhiteListSelectActivity.this.l.notifyDataSetChanged();
                    if (WhiteListSelectActivity.this.d.size() == 0) {
                        WhiteListSelectActivity.this.c.setVisibility(0);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void g(WhiteListSelectActivity x0) {
        x0.f = new ArrayList<>();
        x0.e = new ArrayList<>();
        ArrayList arrayList = new ArrayList();
        if (x0.h != null) {
            Cursor rawQuery = x0.h.rawQuery("SELECT DISTINCT * FROM ApplicationsInfo where state = 0 ", null);
            if (rawQuery != null && rawQuery.getCount() > 0) {
                rawQuery.moveToFirst();
                while (!rawQuery.isAfterLast()) {
                    int i2 = rawQuery.getInt(rawQuery.getColumnIndex(DatabaseTables.APPLICATIONS_FLAG));
                    String string = rawQuery.getString(rawQuery.getColumnIndex("pkgName"));
                    String string2 = rawQuery.getString(rawQuery.getColumnIndex("appName"));
                    SoftReference softReference = new SoftReference(BitmapFactory.decodeResource(x0.getResources(), R.drawable.antispamicon));
                    try {
                        string2 = ((Object) x0.g.getApplicationInfo(string, 0).loadLabel(x0.g)) + "";
                        softReference = new SoftReference(DataLayerManager.drawableToBitmap(x0.g.getApplicationIcon(string)));
                    } catch (PackageManager.NameNotFoundException e2) {
                        e2.printStackTrace();
                    }
                    arrayList.add(new a(string, string2, rawQuery.getString(rawQuery.getColumnIndex(DatabaseTables.APPLICATIONS_PROC_NAME)), (Bitmap) softReference.get(), rawQuery.getInt(rawQuery.getColumnIndex("state")), i2));
                    rawQuery.moveToNext();
                }
            }
            ArrayList<String> installedAppInLauncher = ScanApplicationInfo.getInstalledAppInLauncher(x0.getApplicationContext());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (installedAppInLauncher.contains(aVar.d)) {
                    if (aVar.g == 0) {
                        x0.f.add(aVar);
                    } else {
                        x0.e.add(aVar);
                    }
                }
            }
            int size = x0.f.size();
            int size2 = x0.e.size();
            if (size != 0) {
                x0.f.add(0, new a(x0.getString(R.string.title_ignore_white_list_user_app, new Object[]{Integer.valueOf(size)})));
            }
            if (size2 != 0) {
                x0.e.add(0, new a(x0.getString(R.string.title_ignore_white_list_system_app, new Object[]{Integer.valueOf(size2)})));
            }
            x0.f.trimToSize();
            x0.e.trimToSize();
            x0.d.addAll(x0.f);
            x0.d.addAll(x0.e);
            if (rawQuery != null) {
                rawQuery.close();
            }
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.title_ignore_white_list_add, null);
        this.g = getPackageManager();
        setContentView(R.layout.rf_perf_white_list);
        this.k = (LinearLayout) findViewById(R.id.progress_bar);
        this.b = (ListView) findViewById(R.id.ignoreList);
        this.c = (LinearLayout) findViewById(R.id.layout_empty);
        this.a = (Button) findViewById(R.id.add);
        this.a.setOnClickListener(this);
    }

    public void onStart() {
        super.onStart();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onResume() {
        super.onResume();
        this.k.setVisibility(0);
        this.m = new ArrayList<>();
        this.d = new ArrayList();
        this.l = new b(this);
        this.b.setAdapter((ListAdapter) this.l);
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.performancecenter.performance.WhiteListSelectActivity.AnonymousClass1 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                int i;
                boolean z = true;
                if (position != 0 && position != WhiteListSelectActivity.this.f.size()) {
                    a appInfo = (a) WhiteListSelectActivity.this.d.get(position);
                    if (appInfo.f == 1) {
                        i = 0;
                    } else {
                        i = 1;
                    }
                    appInfo.f = i;
                    c vh = (c) view.getTag();
                    String pkgName = appInfo.d;
                    int toState = appInfo.f;
                    if (appInfo.f != 1) {
                        WhiteListSelectActivity.this.m.remove(pkgName);
                    } else if (!WhiteListSelectActivity.this.m.contains(pkgName)) {
                        WhiteListSelectActivity.this.m.add(pkgName);
                    } else {
                        return;
                    }
                    CheckBox checkBox = vh.d;
                    if (toState != 1) {
                        z = false;
                    }
                    checkBox.setChecked(z);
                }
            }
        });
        if (this.i == null) {
            this.i = new PerformanceDatabaseHelper(this);
        }
        if (this.h == null) {
            this.h = this.i.getReadableDatabase();
        }
        new Thread() {
            /* class com.lenovo.performancecenter.performance.WhiteListSelectActivity.AnonymousClass3 */

            public final void run() {
                WhiteListSelectActivity.g(WhiteListSelectActivity.this);
                WhiteListSelectActivity.this.n.sendMessage(WhiteListSelectActivity.this.n.obtainMessage(1));
            }
        }.start();
        TrackEvent.trackResume(this);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            Log.i("IgnoreFragment", "onKeyDown()...");
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    public void onPause() {
        super.onPause();
        if (this.h != null) {
            this.h.close();
            this.h = null;
        }
        if (this.i != null) {
            this.i.close();
            this.i = null;
        }
        TrackEvent.trackPause(this);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onClick(View v) {
        if (v.getId() == R.id.add) {
            DataLayerManager.updateApplicationList(this, this.m, 1);
            finish();
        } else if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }

    /* access modifiers changed from: package-private */
    public class b extends BaseAdapter {
        private LayoutInflater b;

        public b(Context context) {
            this.b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public final int getCount() {
            return WhiteListSelectActivity.this.d.size();
        }

        public final Object getItem(int position) {
            return WhiteListSelectActivity.this.d.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            c holder;
            boolean z;
            if (convertView == null) {
                if (position == 0 || position == WhiteListSelectActivity.this.f.size()) {
                    convertView = this.b.inflate(R.layout.list_checkbox_item_title, (ViewGroup) null);
                    holder = new c();
                    holder.c = (TextView) convertView.findViewById(16908310);
                } else {
                    convertView = this.b.inflate(R.layout.list_checkbox_item_other, (ViewGroup) null);
                    holder = new c();
                    holder.c = (TextView) convertView.findViewById(R.id.title);
                    holder.b = (ImageView) convertView.findViewById(R.id.icon);
                    holder.d = (CheckBox) convertView.findViewById(R.id.checkboxWidget);
                    holder.d.setVisibility(0);
                }
                convertView.setTag(holder);
            } else {
                holder = (c) convertView.getTag();
            }
            a aInfo = (a) WhiteListSelectActivity.this.d.get(position);
            if (aInfo != null) {
                if (!aInfo.h) {
                    if (aInfo.b != null) {
                        holder.c.setText(aInfo.b);
                    }
                    if (aInfo.c != null) {
                        holder.b.setImageBitmap(aInfo.c);
                    }
                    CheckBox checkBox = holder.d;
                    if (aInfo.f == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    checkBox.setChecked(z);
                } else {
                    holder.c.setText(aInfo.i);
                }
            }
            return convertView;
        }

        public final int getItemViewType(int position) {
            if (position == 0 || position == WhiteListSelectActivity.this.f.size()) {
                return 0;
            }
            return 1;
        }

        public final int getViewTypeCount() {
            return 2;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onDestroy() {
        super.onDestroy();
        if (this.d != null) {
            this.d.clear();
        }
        if (this.j != null) {
            this.j.clear();
        }
    }

    class c {
        private ImageView b;
        private TextView c;
        private CheckBox d;

        c() {
        }
    }

    /* access modifiers changed from: package-private */
    public class a {
        private String b;
        private Bitmap c;
        private String d;
        private String e;
        private int f;
        private int g;
        private boolean h;
        private String i;

        public a(String title) {
            this.h = true;
            this.i = title;
        }

        public a(String pkgName, String appName, String procName, Bitmap appIcon, int state, int flag) {
            this.d = pkgName;
            this.b = appName;
            this.e = procName;
            this.c = appIcon;
            this.f = state;
            this.g = flag;
        }
    }
}
