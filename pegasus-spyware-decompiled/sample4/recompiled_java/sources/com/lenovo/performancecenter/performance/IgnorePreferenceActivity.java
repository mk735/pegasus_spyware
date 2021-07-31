package com.lenovo.performancecenter.performance;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
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
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.framework.PerformanceDatabaseHelper;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.BaseTitlePreferenceActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;

public class IgnorePreferenceActivity extends BaseTitlePreferenceActivity implements View.OnClickListener {
    private Button a;
    private ListView b;
    private List<AppInfo> c;
    private ArrayList<AppInfo> d;
    private ArrayList<AppInfo> e;
    private PackageManager f;
    private SQLiteDatabase g;
    private PerformanceDatabaseHelper h;
    private LinearLayout i;
    private a j;
    private ArrayList<String> k;
    private Handler l = new Handler() {
        /* class com.lenovo.performancecenter.performance.IgnorePreferenceActivity.AnonymousClass3 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    IgnorePreferenceActivity.this.i.setVisibility(8);
                    IgnorePreferenceActivity.this.j.notifyDataSetChanged();
                    return;
                case 2:
                    IgnorePreferenceActivity.this.j.notifyDataSetChanged();
                    return;
                case 3:
                    IgnorePreferenceActivity.this.onResume();
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void f(IgnorePreferenceActivity x0) {
        SoftReference softReference;
        String str;
        x0.k = DataLayerManager.getWhiteListNotKill(x0);
        x0.e = new ArrayList<>();
        x0.d = new ArrayList<>();
        if (x0.g != null) {
            Cursor rawQuery = x0.g.rawQuery("SELECT DISTINCT * FROM ApplicationsInfo where state = 1 ", null);
            if (rawQuery != null && rawQuery.getCount() > 0) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                rawQuery.moveToFirst();
                while (!rawQuery.isAfterLast()) {
                    int i2 = rawQuery.getInt(rawQuery.getColumnIndex(DatabaseTables.APPLICATIONS_FLAG));
                    String string = rawQuery.getString(rawQuery.getColumnIndex("pkgName"));
                    String string2 = rawQuery.getString(rawQuery.getColumnIndex("appName"));
                    SoftReference softReference2 = new SoftReference(BitmapFactory.decodeResource(x0.getResources(), R.drawable.antispamicon));
                    try {
                        string2 = ((Object) x0.f.getApplicationInfo(string, 0).loadLabel(x0.f)) + "";
                        softReference = new SoftReference(DataLayerManager.drawableToBitmap(x0.f.getApplicationIcon(string)));
                        str = string2;
                    } catch (PackageManager.NameNotFoundException e2) {
                        e2.printStackTrace();
                        softReference = softReference2;
                        str = string2;
                    }
                    AppInfo appInfo = new AppInfo(string, str, rawQuery.getString(rawQuery.getColumnIndex(DatabaseTables.APPLICATIONS_PROC_NAME)), (Bitmap) softReference.get(), 1, i2);
                    if (x0.k.contains(string)) {
                        appInfo.canRemove = false;
                        if (appInfo.flag == 0) {
                            arrayList.add(appInfo);
                        } else {
                            arrayList2.add(appInfo);
                        }
                    } else {
                        appInfo.canRemove = true;
                        if (appInfo.flag == 0) {
                            x0.e.add(appInfo);
                        } else {
                            x0.d.add(appInfo);
                        }
                    }
                    rawQuery.moveToNext();
                }
                x0.e.addAll(arrayList);
                x0.d.addAll(arrayList2);
            }
            AppInfo appInfo2 = new AppInfo(true, true, x0.getString(R.string.title_ignore_white_list_user_app));
            AppInfo appInfo3 = new AppInfo(true, false, x0.getString(R.string.title_ignore_white_list_system_app));
            if (x0.e.size() > 0) {
                x0.e.add(0, appInfo2);
                x0.c.addAll(x0.e);
            }
            if (x0.d.size() > 0) {
                x0.d.add(0, appInfo3);
            }
            x0.e.trimToSize();
            x0.d.trimToSize();
            x0.c.addAll(x0.d);
            if (rawQuery != null) {
                rawQuery.close();
            }
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.title_ignore_white_list, null);
        this.f = getPackageManager();
        setContentView(R.layout.rf_perf_ignore_apps);
        this.i = (LinearLayout) findViewById(R.id.progress_bar);
        this.b = (ListView) findViewById(R.id.ignoreList);
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
        TrackEvent.trackResume(this);
        this.i.setVisibility(0);
        this.c = new ArrayList();
        if (this.h == null) {
            this.h = new PerformanceDatabaseHelper(this);
        }
        if (this.g == null) {
            this.g = this.h.getReadableDatabase();
        }
        new Thread() {
            /* class com.lenovo.performancecenter.performance.IgnorePreferenceActivity.AnonymousClass2 */

            public final void run() {
                IgnorePreferenceActivity.f(IgnorePreferenceActivity.this);
                Message msg = IgnorePreferenceActivity.this.l.obtainMessage(1);
                msg.arg1 = 0;
                IgnorePreferenceActivity.this.l.sendMessage(msg);
            }
        }.start();
        this.j = new a(this);
        this.b.setAdapter((ListAdapter) this.j);
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.performancecenter.performance.IgnorePreferenceActivity.AnonymousClass1 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                b vh;
                String pkgName;
                try {
                    int userSize = IgnorePreferenceActivity.this.e.size();
                    if (position != 0 && position != userSize && (pkgName = (vh = (b) view.getTag()).d) != null && !IgnorePreferenceActivity.this.k.contains(pkgName)) {
                        IgnorePreferenceActivity.this.c.remove(position);
                        if (position <= userSize) {
                            IgnorePreferenceActivity.this.e.remove(position);
                            if (IgnorePreferenceActivity.this.e.size() == 1) {
                                IgnorePreferenceActivity.this.c.remove(0);
                                IgnorePreferenceActivity.this.e.remove(0);
                            }
                        } else {
                            IgnorePreferenceActivity.this.d.remove(position - userSize);
                            if (IgnorePreferenceActivity.this.d.size() == 1) {
                                IgnorePreferenceActivity.this.c.remove(userSize);
                                IgnorePreferenceActivity.this.d.remove(0);
                            }
                        }
                        IgnorePreferenceActivity.this.j.notifyDataSetChanged();
                        DataLayerManager.updateApplication(IgnorePreferenceActivity.this, vh.d, 0);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            a();
        }
        return super.onKeyDown(keyCode, event);
    }

    public void onPause() {
        super.onPause();
        if (this.g != null) {
            this.g.close();
            this.g = null;
        }
        if (this.h != null) {
            this.h.close();
            this.h = null;
        }
        TrackEvent.trackPause(this);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitlePreferenceActivity
    public void onClick(View v) {
        if (v.getId() == R.id.add) {
            startActivity(new Intent(this, WhiteListSelectActivity.class));
        } else if (v.getId() == R.id.base_title_left) {
            a();
        }
    }

    private void a() {
        startActivity(new Intent(this, PhoneAccelerateActivity.class));
        finish();
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
            return IgnorePreferenceActivity.this.c.size();
        }

        public final Object getItem(int position) {
            return IgnorePreferenceActivity.this.c.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            b holder;
            String title;
            if (convertView == null) {
                if (position == 0 || position == IgnorePreferenceActivity.this.e.size()) {
                    convertView = this.b.inflate(R.layout.list_checkbox_item_title, (ViewGroup) null);
                    holder = new b();
                    holder.c = (TextView) convertView.findViewById(16908310);
                } else {
                    convertView = this.b.inflate(R.layout.list_checkbox_item_other, (ViewGroup) null);
                    holder = new b();
                    holder.c = (TextView) convertView.findViewById(R.id.title);
                    holder.b = (ImageView) convertView.findViewById(R.id.icon);
                    holder.e = (ImageView) convertView.findViewById(R.id.appDelete);
                }
                convertView.setTag(holder);
            } else {
                holder = (b) convertView.getTag();
            }
            AppInfo aInfo = (AppInfo) IgnorePreferenceActivity.this.c.get(position);
            if (aInfo != null) {
                if (!aInfo.isTitle) {
                    holder.d = aInfo.pkgName;
                    if (aInfo.appName != null) {
                        holder.c.setText(aInfo.appName);
                    }
                    if (aInfo.appIcon != null) {
                        holder.b.setImageBitmap(aInfo.appIcon);
                    }
                    if (aInfo.canRemove) {
                        holder.e.setVisibility(0);
                    } else {
                        holder.e.setVisibility(8);
                        convertView.setClickable(false);
                    }
                } else {
                    if (aInfo.isUserApp) {
                        title = aInfo.title.replaceAll("%1\\$s", (IgnorePreferenceActivity.this.e.size() - 1) + "");
                    } else {
                        title = aInfo.title.replaceAll("%1\\$s", (IgnorePreferenceActivity.this.d.size() - 1) + "");
                    }
                    holder.c.setText(title);
                }
            }
            return convertView;
        }

        public final int getItemViewType(int position) {
            if (position == 0 || position == IgnorePreferenceActivity.this.e.size()) {
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
        if (this.c != null) {
            this.c.clear();
        }
    }

    class b {
        private ImageView b;
        private TextView c;
        private String d;
        private ImageView e;

        b() {
        }
    }
}
