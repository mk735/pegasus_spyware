package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;

public class AntiTappingActivity extends Activity {
    private PackageManager a;
    private String[] b;
    private String[] c;
    private int[] d;
    private ListView e;
    private TextView f;
    private Intent g;
    private Handler h = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.AntiTappingActivity.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            AntiTappingActivity.this.e.setAdapter((ListAdapter) new a(AntiTappingActivity.this, AntiTappingActivity.this.b));
        }
    };
    private AdapterView.OnItemClickListener i = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.safecenter.AppsManager.AntiTappingActivity.AnonymousClass3 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
            String pkgname = AntiTappingActivity.this.b[arg2];
            try {
                AntiTappingActivity.this.getPackageManager().getApplicationInfo(pkgname, 0);
                AntiTappingActivity.this.g.putExtra(QueryPermissions.PACKAGENAME, pkgname);
                AntiTappingActivity.this.g.putExtra("permType", AppDatabase.PERM_TYPE_PRIVCY);
                AntiTappingActivity.this.startActivity(AntiTappingActivity.this.g);
                if (AntiTappingActivity.this.b.length == 1) {
                    AntiTappingActivity.this.finish();
                }
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                Toast.makeText(AntiTappingActivity.this.getApplicationContext(), (int) R.string.not_to_appmanager, 0).show();
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.noti_tapping);
        if (Const.SDK_VERSION >= 11) {
            setFinishOnTouchOutside(false);
        }
        this.e = (ListView) findViewById(R.id.listView);
        this.e.setOnItemClickListener(this.i);
        this.f = (TextView) findViewById(R.id.btn_known);
        this.f.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.AntiTappingActivity.AnonymousClass2 */

            public final void onClick(View v) {
                AntiTappingActivity.this.finish();
            }
        });
        TrackEvent.reportInterceptRecord();
        this.a = getPackageManager();
        Intent intent = getIntent();
        if (intent != null) {
            this.b = intent.getStringArrayExtra("pkgnames");
            this.c = intent.getStringArrayExtra("pernames");
            this.d = intent.getIntArrayExtra("actions");
        }
        this.h.sendMessage(this.h.obtainMessage(0));
        this.g = new Intent(this, AppPermManager.class);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            keyCode = -1;
        }
        return super.onKeyDown(keyCode, event);
    }

    private class a extends BaseAdapter {
        private Context b;
        private String[] c;

        public a(Context context, String[] list) {
            this.b = context;
            this.c = list;
        }

        public final int getCount() {
            return this.c.length;
        }

        public final Object getItem(int position) {
            return Integer.valueOf(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            b holder;
            if (convertView == null) {
                LinearLayout layout = new LinearLayout(this.b);
                layout.setOrientation(0);
                layout.setGravity(16);
                layout.setPadding(0, 12, 0, 12);
                ImageView imageView = new ImageView(this.b);
                imageView.setPadding(18, 0, 0, 0);
                layout.addView(imageView, new LinearLayout.LayoutParams(58, 58));
                TextView textView = new TextView(this.b);
                textView.setPadding(18, 0, 0, 0);
                textView.setTextColor(AntiTappingActivity.this.getResources().getColor(R.color.black2));
                textView.setTextSize(18.0f);
                layout.addView(textView, new LinearLayout.LayoutParams(-1, -2));
                convertView = layout;
                holder = new b();
                holder.a = imageView;
                holder.b = textView;
                convertView.setTag(holder);
            } else {
                holder = (b) convertView.getTag();
            }
            String name = "";
            try {
                ApplicationInfo appInfo = AntiTappingActivity.this.a.getApplicationInfo(AntiTappingActivity.this.b[position], 0);
                holder.a.setImageDrawable(appInfo.loadIcon(AntiTappingActivity.this.a));
                name = appInfo.loadLabel(AntiTappingActivity.this.a).toString();
            } catch (PackageManager.NameNotFoundException e) {
                holder.a.setImageResource(R.drawable.icon3);
            }
            String content = name + "\n" + AntiTappingActivity.this.getString(R.string.when_calling) + AppUtil.getPerDescription(this.b, AntiTappingActivity.this.c[position]);
            if (AntiTappingActivity.this.d[position] == 0) {
                String allow = AntiTappingActivity.this.getString(R.string.allow) + "  ";
                holder.b.setText(allow + content);
                MyUtils.setSpannableString(holder.b, allow + content, 0, allow.length(), AntiTappingActivity.this.getResources().getColor(R.color.green_allow));
            } else {
                String str = AntiTappingActivity.this.getString(R.string.notice1) + "  ";
                String forbid = str.substring(1, str.length());
                holder.b.setText(forbid + content);
                MyUtils.setSpannableString(holder.b, forbid + content, 0, forbid.length(), AntiTappingActivity.this.getResources().getColor(R.color.red_forbid));
            }
            return convertView;
        }
    }

    class b {
        ImageView a;
        TextView b;

        b() {
        }
    }
}
