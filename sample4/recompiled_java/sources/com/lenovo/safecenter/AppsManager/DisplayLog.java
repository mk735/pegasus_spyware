package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.MainTab.LeSafeMainActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.List;

public class DisplayLog extends Activity implements View.OnClickListener {
    private static List<SafeLog> c;
    private AppDatabase a;
    private PackageManager b;
    private ProgressDialog d;
    private ProgressBar e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private ListView j;
    private LogAdapter k = null;
    private int l;
    private String m;
    private boolean n;
    private boolean o;
    private Handler p = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.DisplayLog.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    DisplayLog.this.setAdapter();
                    return;
                case 1:
                default:
                    return;
                case 2:
                    try {
                        if (DisplayLog.this.d != null) {
                            DisplayLog.this.d.dismiss();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    DisplayLog.this.g.setVisibility(0);
                    DisplayLog.this.k.notifyDataSetChanged();
                    DisplayLog.this.i.setEnabled(false);
                    return;
            }
        }
    };
    private AdapterView.OnItemClickListener q = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.safecenter.AppsManager.DisplayLog.AnonymousClass3 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            Intent intent = new Intent(DisplayLog.this, AppPermManager.class);
            SafeLog log = (SafeLog) DisplayLog.c.get(position);
            if (log.logDay == null) {
                try {
                    DisplayLog.this.getPackageManager().getApplicationInfo(log.packageName, 0);
                    intent.putExtra("permType", DisplayLog.this.m);
                    intent.putExtra(QueryPermissions.PACKAGENAME, log.packageName);
                    intent.putExtra("from", "displaylog");
                    DisplayLog.this.startActivityForResult(intent, 0);
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    Toast.makeText(DisplayLog.this.getApplicationContext(), (int) R.string.not_to_appmanager, 0).show();
                }
            }
        }
    };

    static /* synthetic */ void a(DisplayLog x0, final String x1) {
        x0.d = new ProgressDialog(x0);
        x0.d.setProgressStyle(0);
        x0.d.setMessage(x0.getString(R.string.exec_state));
        x0.d.show();
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.DisplayLog.AnonymousClass7 */

            public final void run() {
                DisplayLog.this.a.deleteLogItemsforTable(x1, DisplayLog.c);
                DisplayLog.c.clear();
                DisplayLog.this.p.sendMessage(DisplayLog.this.p.obtainMessage(2));
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mydisplaylog);
        this.f = (TextView) findViewById(R.id.txt_title);
        ((ImageView) findViewById(R.id.title_set)).setVisibility(4);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.DisplayLog.AnonymousClass2 */

            public final void onClick(View v) {
                try {
                    if (DisplayLog.this.getIntent().getStringExtra("key") != null) {
                        DisplayLog.this.startActivity(new Intent(DisplayLog.this, LeSafeMainActivity.class));
                        DisplayLog.this.finish();
                    } else if (DisplayLog.this.n) {
                        DisplayLog.this.setResult(0);
                    } else if (DisplayLog.c.size() == 0) {
                        DisplayLog.this.setResult(1);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                DisplayLog.this.finish();
            }
        });
        this.e = (ProgressBar) findViewById(R.id.log_progress_bar);
        this.g = (TextView) findViewById(R.id.log_txt_empty);
        this.h = (TextView) findViewById(R.id.to_app_manager);
        this.i = (TextView) findViewById(R.id.btn_clean_logs);
        this.i.setEnabled(false);
        this.i.setOnClickListener(this);
        this.j = (ListView) findViewById(R.id.log_listview);
        this.j.setOnItemClickListener(this.q);
        this.j.setItemsCanFocus(false);
        this.b = getPackageManager();
        this.a = new AppDatabase(this);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            try {
                if (getIntent().getStringExtra("key") != null) {
                    startActivity(new Intent(this, LeSafeMainActivity.class));
                    finish();
                } else if (this.n) {
                    setResult(0);
                } else if (c.size() == 0) {
                    setResult(1);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    public void onClick(View v) {
        if (v.getId() == R.id.btn_clean_logs) {
            new CustomDialog.Builder(this).setTitle(R.string.info).setMessage(R.string.clean_logs_sure).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.AppsManager.DisplayLog.AnonymousClass6 */

                public final void onClick(DialogInterface arg0, int arg1) {
                    if (DisplayLog.this.l == 0) {
                        DisplayLog.a(DisplayLog.this, AppDatabase.DB_LOG_TARIFF);
                    } else {
                        DisplayLog.a(DisplayLog.this, AppDatabase.DB_LOG_PRIVACY);
                    }
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.AppsManager.DisplayLog.AnonymousClass5 */

                public final void onClick(DialogInterface arg0, int arg1) {
                }
            }).show();
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
        if (!this.o && getIntent() != null) {
            String from = getIntent().getStringExtra("from");
            if (from != null) {
                this.l = Integer.parseInt(from);
            }
            if (getIntent().getStringExtra("key") != null) {
                long tariffTime = 0;
                long privacyTime = 0;
                if (SafeCenterService.charge_count > 0 && Const.lastSafeLogs.get("tariff") != null) {
                    tariffTime = Long.parseLong(Const.lastSafeLogs.get("tariff").time);
                }
                if (SafeCenterService.privacy_count > 0 && Const.lastSafeLogs.get(AppDatabase.PERM_TYPE_PRIVCY) != null) {
                    privacyTime = Long.parseLong(Const.lastSafeLogs.get(AppDatabase.PERM_TYPE_PRIVCY).time);
                }
                if (tariffTime > privacyTime) {
                    this.l = 0;
                } else {
                    this.l = 1;
                }
            }
            if (this.l == 0) {
                this.m = AppDatabase.DB_APP_SENDMESSAGE;
                this.f.setText(R.string.tariff_record);
                this.h.setText(String.format(getString(R.string.to_app_manager), getString(R.string.tariff_perm_manage)));
                SafeCenterService.send_sms_count = 0;
                SafeCenterService.call_count = 0;
                Const.saveChargeLogsCount(this);
                MyUtils.showLeSecNotification(this);
            } else if (this.l == 1) {
                this.m = AppDatabase.PERM_TYPE_PRIVCY;
                this.f.setText(R.string.privacy_record);
                this.h.setText(String.format(getString(R.string.to_app_manager), getString(R.string.privacy_perm_manage)));
                SafeCenterService.privacy_count = 0;
                Const.savePrivacyLogsCount(this);
                MyUtils.showLeSecNotification(this);
            }
            final int i2 = this.l;
            new Thread() {
                /* class com.lenovo.safecenter.AppsManager.DisplayLog.AnonymousClass4 */

                public final void run() {
                    if (i2 == 0) {
                        List unused = DisplayLog.c = DisplayLog.this.a.getLog(AppDatabase.DB_LOG_TARIFF);
                        DisplayLog.this.p.sendMessage(DisplayLog.this.p.obtainMessage(0));
                    }
                    if (i2 == 1) {
                        List unused2 = DisplayLog.c = DisplayLog.this.a.getLog(AppDatabase.DB_LOG_PRIVACY);
                        DisplayLog.this.p.sendMessage(DisplayLog.this.p.obtainMessage(0));
                    }
                }
            }.start();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void setAdapter() {
        this.e.setVisibility(8);
        if (c.size() == 0) {
            this.g.setVisibility(0);
            return;
        }
        this.g.setVisibility(8);
        this.i.setEnabled(true);
        this.k = new LogAdapter(c);
        this.j.setAdapter((ListAdapter) this.k);
    }

    public class LogAdapter extends BaseAdapter {
        private LayoutInflater b;
        private List<SafeLog> c;

        public LogAdapter(List<SafeLog> mList) {
            this.b = LayoutInflater.from(DisplayLog.this);
            this.c = mList;
        }

        public int getCount() {
            return this.c.size();
        }

        public Object getItem(int position) {
            return Integer.valueOf(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            a holder;
            int color;
            Drawable appDrawable;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.new_loglist_item, (ViewGroup) null);
                holder = new a();
                holder.a = (ImageView) convertView.findViewById(R.id.package_icon);
                holder.b = (ImageView) convertView.findViewById(R.id.upload_icon);
                holder.c = (TextView) convertView.findViewById(R.id.log_time);
                holder.d = (TextView) convertView.findViewById(R.id.event_title);
                holder.e = (TextView) convertView.findViewById(R.id.event_action);
                holder.f = (TextView) convertView.findViewById(R.id.event_package);
                holder.g = (TextView) convertView.findViewById(R.id.event_timestamp);
                holder.h = (TextView) convertView.findViewById(R.id.event_number);
                holder.i = (TextView) convertView.findViewById(R.id.event_content);
                holder.j = (LinearLayout) convertView.findViewById(R.id.log_layout);
                holder.k = (LinearLayout) convertView.findViewById(R.id.event_layout);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            try {
                SafeLog safeLog = this.c.get(position);
                String pkgname = safeLog.packageName;
                if (safeLog.logDay != null) {
                    holder.c.setVisibility(0);
                    holder.c.setText(safeLog.logDay);
                    holder.j.setVisibility(8);
                } else {
                    holder.c.setVisibility(8);
                    holder.j.setVisibility(0);
                    if (safeLog.logSelected == 1) {
                        holder.d.setText(DisplayLog.this.getString(R.string.when_calling) + AppUtil.getDescriptionByPid(DisplayLog.this, Integer.valueOf(safeLog.type).intValue()));
                    } else {
                        holder.d.setText(AppUtil.getDescriptionByPid(DisplayLog.this, Integer.valueOf(safeLog.type).intValue()));
                    }
                    if (safeLog.number != null) {
                        holder.h.setVisibility(0);
                        holder.h.setText(safeLog.number);
                    }
                    if (safeLog.content != null) {
                        holder.i.setVisibility(0);
                        holder.i.setText(safeLog.content);
                    }
                    String str = safeLog.action == 0 ? DisplayLog.this.getString(R.string.allow) : DisplayLog.this.getString(R.string.forbid);
                    TextView textView = holder.e;
                    if (safeLog.action == 0) {
                        color = DisplayLog.this.getResources().getColor(R.color.green_allow);
                    } else {
                        color = DisplayLog.this.getResources().getColor(R.color.red_forbid);
                    }
                    textView.setTextColor(color);
                    holder.b.setVisibility(8);
                    holder.e.setText(str);
                    holder.g.setText(MyUtils.formatAllTime(safeLog.time, DisplayLog.this));
                    if (pkgname == null || "".equals(pkgname)) {
                        appDrawable = DisplayLog.this.getResources().getDrawable(R.drawable.icon3);
                        holder.f.setText(safeLog.appName);
                    } else {
                        try {
                            appDrawable = DisplayLog.this.b.getApplicationIcon(pkgname);
                            holder.f.setText(DisplayLog.this.b.getApplicationInfo(pkgname, 0).loadLabel(DisplayLog.this.b).toString());
                        } catch (PackageManager.NameNotFoundException e) {
                            e.printStackTrace();
                            appDrawable = DisplayLog.this.getResources().getDrawable(R.drawable.icon3);
                            holder.f.setText(safeLog.appName);
                        }
                    }
                    holder.a.setImageDrawable(appDrawable);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return convertView;
        }
    }

    class a {
        ImageView a;
        ImageView b;
        TextView c;
        TextView d;
        TextView e;
        TextView f;
        TextView g;
        TextView h;
        TextView i;
        LinearLayout j;
        LinearLayout k;

        a() {
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == 3) {
            this.o = true;
        } else if (resultCode == 4) {
            this.n = true;
        }
    }
}
