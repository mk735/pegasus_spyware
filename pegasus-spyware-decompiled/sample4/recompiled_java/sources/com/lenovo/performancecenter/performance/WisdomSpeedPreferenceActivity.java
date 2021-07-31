package com.lenovo.performancecenter.performance;

import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.performancecenter.coreui.widget.CheckBoxPreference;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.performancecenter.framework.PolicyService;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.Iterator;

public class WisdomSpeedPreferenceActivity extends BaseTitleActivity implements View.OnClickListener {
    private CheckBoxPreference a;
    private ArrayList<c> b;
    private PolicyService c;
    private boolean d = false;
    private ListView e;
    private final boolean f = false;
    private boolean g;
    private long h = 20;
    private long i = 20;
    private NotificationManager j;
    private ServiceConnection k = new ServiceConnection() {
        /* class com.lenovo.performancecenter.performance.WisdomSpeedPreferenceActivity.AnonymousClass2 */

        public final void onServiceConnected(ComponentName className, IBinder service) {
            WisdomSpeedPreferenceActivity.this.c = ((PolicyService.LocalBinder) service).getService();
            WisdomSpeedPreferenceActivity.this.d = true;
        }

        public final void onServiceDisconnected(ComponentName arg0) {
            WisdomSpeedPreferenceActivity.this.d = false;
        }
    };
    private String[] l;
    private int[] m;
    private a n;
    private Handler o = new Handler() {
        /* class com.lenovo.performancecenter.performance.WisdomSpeedPreferenceActivity.AnonymousClass3 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    WisdomSpeedPreferenceActivity.this.n.notifyDataSetChanged();
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(WisdomSpeedPreferenceActivity x0, int x1) {
        SharedPreferences.Editor edit = x0.getSharedPreferences(ScanApplicationInfo.POLICY_SETTINGS, 0).edit();
        edit.putLong(ScanApplicationInfo.POLICY_TIME, (long) x1);
        edit.commit();
        if (x0.d) {
            x0.c.updateConfiguration(ScanApplicationInfo.POLICY_TIME, Long.valueOf((long) x1), x0);
        }
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.app_setup_phone);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.title_wisdom_clean, (Integer) null);
        this.j = (NotificationManager) getSystemService(DatabaseTables.LOG_NOTIFICATION);
        this.e = (ListView) findViewById(R.id.listview);
        this.g = getSharedPreferences(ScanApplicationInfo.POLICY_SETTINGS, 0).getBoolean(ScanApplicationInfo.POLICY_SWITCH, false);
        this.a = (CheckBoxPreference) findViewById(R.id.btnLeemSwitch);
        a(this.g);
        this.a.setOnCheckedChangeListener(new CheckBoxPreference.OnCheckedChangeListener() {
            /* class com.lenovo.performancecenter.performance.WisdomSpeedPreferenceActivity.AnonymousClass1 */

            @Override // com.lenovo.performancecenter.coreui.widget.CheckBoxPreference.OnCheckedChangeListener
            public final void onCheckedChanged(CheckBoxPreference buttonView, boolean isChecked) {
                WisdomSpeedPreferenceActivity.this.a((WisdomSpeedPreferenceActivity) isChecked);
                SharedPreferences.Editor edit = WisdomSpeedPreferenceActivity.this.getSharedPreferences(ScanApplicationInfo.POLICY_SETTINGS, 0).edit();
                edit.putBoolean(ScanApplicationInfo.POLICY_SWITCH, isChecked);
                edit.commit();
                if (WisdomSpeedPreferenceActivity.this.d) {
                    WisdomSpeedPreferenceActivity.this.c.updateConfiguration(ScanApplicationInfo.POLICY_SWITCH, Boolean.valueOf(isChecked), WisdomSpeedPreferenceActivity.this);
                }
                WisdomSpeedPreferenceActivity.this.g = isChecked;
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        bindService(new Intent(this, PolicyService.class), this.k, 1);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            Log.i("WisdomSpeedFragment", "onKeyDown()...");
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        super.onClick(v);
        switch (v.getId()) {
            case R.id.base_title_left /*{ENCODED_INT: 2131297465}*/:
                finish();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        TrackEvent.trackPause(this);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        this.b = new ArrayList<>();
        int i2 = (int) getSharedPreferences(ScanApplicationInfo.POLICY_SETTINGS, 0).getLong(ScanApplicationInfo.POLICY_TIME, this.h);
        this.l = getResources().getStringArray(R.array.check_time_entry);
        this.m = getResources().getIntArray(R.array.check_time_entry_value);
        int length = this.l.length;
        if (length == this.m.length) {
            for (int i3 = 0; i3 < length; i3++) {
                this.b.add(new c(this.l[i3], this.m[i3], i2 == this.m[i3] ? 1 : 0));
            }
        }
        this.n = new a(this);
        this.e.setAdapter((ListAdapter) this.n);
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.performancecenter.performance.WisdomSpeedPreferenceActivity.AnonymousClass4 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Iterator i$ = WisdomSpeedPreferenceActivity.this.b.iterator();
                while (i$.hasNext()) {
                    ((c) i$.next()).c = 0;
                }
                ((c) WisdomSpeedPreferenceActivity.this.b.get(position)).c = 1;
                WisdomSpeedPreferenceActivity.this.o.sendEmptyMessage(0);
                WisdomSpeedPreferenceActivity.a(WisdomSpeedPreferenceActivity.this, ((c) WisdomSpeedPreferenceActivity.this.b.get(position)).b);
            }
        });
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        if (this.d) {
            unbindService(this.k);
            this.d = false;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(boolean flag) {
        this.e.setEnabled(flag);
        this.a.setEnableed(flag);
    }

    /* access modifiers changed from: package-private */
    public class a extends BaseAdapter {
        private LayoutInflater b;

        public a(Context context) {
            this.b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public final int getCount() {
            return WisdomSpeedPreferenceActivity.this.b.size();
        }

        public final Object getItem(int position) {
            return WisdomSpeedPreferenceActivity.this.b.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            b holder;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.rf_perf_time_details, (ViewGroup) null);
                holder = new b();
                holder.b = (TextView) convertView.findViewById(R.id.time_name);
                holder.c = (ImageView) convertView.findViewById(R.id.time_radio);
                convertView.setTag(holder);
            } else {
                holder = (b) convertView.getTag();
            }
            c aInfo = (c) WisdomSpeedPreferenceActivity.this.b.get(position);
            if (aInfo != null) {
                synchronized (aInfo) {
                    if (aInfo.a != null) {
                        holder.b.setText(aInfo.a);
                    }
                    if (aInfo.c == 1) {
                        holder.c.setImageResource(R.drawable.radio_on);
                    } else {
                        holder.c.setImageResource(R.drawable.radio_off);
                    }
                }
            }
            return convertView;
        }
    }

    class b {
        private TextView b;
        private ImageView c;

        b() {
        }
    }

    /* access modifiers changed from: package-private */
    public class c {
        String a;
        int b;
        int c;

        public c(String name, int value, int state) {
            this.a = name;
            this.b = value;
            this.c = state;
        }
    }
}
