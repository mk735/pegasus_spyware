package com.lenovo.performancecenter.performance;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import android.util.Log;
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
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.service.object.ApplicationDataInfo;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ClearCacheActivity extends Activity implements View.OnClickListener {
    private PackageManager a;
    private List<DataLayerManager.CacheInfo> b;
    private long c;
    private TextView d;
    private LinearLayout e;
    private LinearLayout f;
    private ListView g;
    private Button h;
    private a i;
    private ImageView j;
    private TextView k;
    private Handler l = new Handler() {
        /* class com.lenovo.performancecenter.performance.ClearCacheActivity.AnonymousClass3 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    Log.i("ClearCacheActivity", "AppHasCacheSize == " + ClearCacheActivity.this.b.size());
                    ClearCacheActivity.this.e.setVisibility(8);
                    if (ClearCacheActivity.this.b.isEmpty()) {
                        ClearCacheActivity.this.d.setVisibility(8);
                        ClearCacheActivity.this.f.setVisibility(0);
                        return;
                    }
                    ClearCacheActivity clearCacheActivity = ClearCacheActivity.this;
                    ClearCacheActivity clearCacheActivity2 = ClearCacheActivity.this;
                    clearCacheActivity.c = ClearCacheActivity.a(ClearCacheActivity.this.b);
                    ClearCacheActivity.this.d.setVisibility(0);
                    ClearCacheActivity.this.d.setText(ClearCacheActivity.this.getString(R.string.clear_cache_total_size, new Object[]{Formatter.formatFileSize(ClearCacheActivity.this.getApplicationContext(), ClearCacheActivity.this.c)}));
                    ClearCacheActivity.this.f.setVisibility(8);
                    ClearCacheActivity.this.i.notifyDataSetChanged();
                    return;
                case 2:
                    if (ClearCacheActivity.this.b.isEmpty()) {
                        ClearCacheActivity.this.d.setVisibility(8);
                        ClearCacheActivity.this.f.setVisibility(0);
                        return;
                    }
                    ClearCacheActivity.this.d.setVisibility(0);
                    ClearCacheActivity.this.d.setText(ClearCacheActivity.this.getString(R.string.clear_cache_total_size, new Object[]{Formatter.formatFileSize(ClearCacheActivity.this.getApplicationContext(), ClearCacheActivity.this.c)}));
                    return;
                case 3:
                    ClearCacheActivity.this.c = 0;
                    ClearCacheActivity.this.d.setVisibility(8);
                    ClearCacheActivity.this.f.setVisibility(0);
                    return;
                case 4:
                    ClearCacheActivity.this.e.setVisibility(8);
                    ClearCacheActivity.this.d.setVisibility(8);
                    ClearCacheActivity.this.f.setVisibility(0);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ long a(List x1) {
        long j2 = 0;
        Iterator it = x1.iterator();
        while (it.hasNext()) {
            j2 += ((DataLayerManager.CacheInfo) it.next()).appCacheSize;
        }
        return j2;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.rf_perf_clear_cache);
        this.j = (ImageView) findViewById(R.id.title_back);
        this.k = (TextView) findViewById(R.id.txt_title);
        this.k.setText(R.string.title_clear_cache);
        this.j.setOnClickListener(this);
        this.a = getPackageManager();
        this.d = (TextView) findViewById(R.id.total_cache_size);
        this.e = (LinearLayout) findViewById(R.id.progress_bar);
        this.f = (LinearLayout) findViewById(R.id.cache_size_empty);
        this.g = (ListView) findViewById(R.id.ignoreList);
        this.h = (Button) findViewById(R.id.one_key_delete);
        this.h.setOnClickListener(this);
    }

    public void onStart() {
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.e.setVisibility(0);
        this.d.setVisibility(8);
        this.c = 0;
        this.b = new ArrayList();
        new Thread(new Runnable() {
            /* class com.lenovo.performancecenter.performance.ClearCacheActivity.AnonymousClass1 */

            public final void run() {
                ApplicationDataInfo appDataInfo = new ApplicationDataInfo(ClearCacheActivity.this.getApplicationContext());
                ClearCacheActivity.this.b = appDataInfo.getCacheInfo(ClearCacheActivity.this.getApplicationContext(), ClearCacheActivity.this.a);
                ClearCacheActivity.this.l.sendEmptyMessage(1);
            }
        }).start();
        this.i = new a(this);
        this.g.setAdapter((ListAdapter) this.i);
        this.g.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.performancecenter.performance.ClearCacheActivity.AnonymousClass2 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                DataLayerManager.CacheInfo appInfo = (DataLayerManager.CacheInfo) ClearCacheActivity.this.b.get(position);
                String pkgName = appInfo.pkgName;
                if (WflUtils.isRoot()) {
                    long cacheSize = appInfo.appCacheSize;
                    ApplicationDataInfo.clearSeperateCache(ClearCacheActivity.this.getApplicationContext(), pkgName);
                    ClearCacheActivity.this.b.remove(position);
                    ClearCacheActivity.this.i.notifyDataSetChanged();
                    Toast.makeText(ClearCacheActivity.this, "清理“" + appInfo.appName + "”缓存" + appInfo.cacheSize, 0).show();
                    ClearCacheActivity.this.c -= cacheSize;
                    ClearCacheActivity.this.l.sendEmptyMessage(2);
                    return;
                }
                ClearCacheActivity.this.startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + pkgName)));
            }
        });
        TrackEvent.trackResume(this);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            Log.i("ClearCacheActivity", "onKeyDown()...");
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public void onClick(View v) {
        if (v.getId() == R.id.one_key_delete) {
            this.e.setVisibility(0);
            ApplicationDataInfo.clearAllCache(getPackageManager());
            this.c = 0;
            this.b.clear();
            this.i.notifyDataSetChanged();
            this.l.sendMessage(this.l.obtainMessage(4));
        } else if (v.getId() == R.id.title_back) {
            finish();
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
            return ClearCacheActivity.this.b.size();
        }

        public final Object getItem(int position) {
            return ClearCacheActivity.this.b.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            b holder;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.rf_perf_clearcache_details, (ViewGroup) null);
                holder = new b();
                holder.c = (TextView) convertView.findViewById(R.id.name);
                holder.b = (ImageView) convertView.findViewById(R.id.icon);
                holder.d = (TextView) convertView.findViewById(R.id.mem);
                convertView.setTag(holder);
            } else {
                holder = (b) convertView.getTag();
            }
            DataLayerManager.CacheInfo aInfo = (DataLayerManager.CacheInfo) ClearCacheActivity.this.b.get(position);
            if (aInfo != null) {
                if (aInfo.appName != null) {
                    holder.c.setText(aInfo.appName);
                }
                if (aInfo.cacheSize != null) {
                    holder.d.setText(aInfo.cacheSize);
                }
                if (aInfo.appIcon != null) {
                    holder.b.setImageBitmap(aInfo.appIcon);
                }
            }
            return convertView;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (this.b != null) {
            this.b.clear();
        }
        super.onDestroy();
    }

    class b {
        private ImageView b;
        private TextView c;
        private TextView d;

        b() {
        }
    }
}
