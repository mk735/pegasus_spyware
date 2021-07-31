package com.lenovo.safecenter.AppsManager;

import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.mmsutils.PushReceiver;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.support.AppUploadInfo;
import com.lenovo.safecenter.support.HttpUtils;
import com.lenovo.safecenter.support.SafeLog;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CheckDisplayLog extends BaseTitleActivity {
    private TextView a;
    private ArrayList<SafeLog> b;
    private ArrayList<SafeLog> c = new ArrayList<>();
    private ListView d;
    private PackageManager e;
    private String f;
    private int g;
    private AppDatabase h;
    private BaseAdapter i;
    private ProgressDialog j;
    private int k;
    private Button l;
    private Button m;
    private Button n;
    private Button o;
    private Handler p = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    CheckDisplayLog.this.setAdapter();
                    return;
                case 1:
                    CheckDisplayLog.this.setAdapter();
                    return;
                case 2:
                    try {
                        if (CheckDisplayLog.this.j != null) {
                            CheckDisplayLog.this.j.dismiss();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (CheckDisplayLog.this.k == 2) {
                        Iterator i$ = CheckDisplayLog.this.c.iterator();
                        while (i$.hasNext()) {
                            ((SafeLog) i$.next()).isUpload = 1;
                        }
                        CheckDisplayLog.this.h.updateSafeLogUpload(CheckDisplayLog.this.c, CheckDisplayLog.this.f);
                        Toast.makeText(CheckDisplayLog.this, (int) R.string.upsuccess, 0).show();
                        CheckDisplayLog.this.finish();
                        return;
                    }
                    Toast.makeText(CheckDisplayLog.this, (int) R.string.neterror, 0).show();
                    return;
                case 3:
                    try {
                        if (CheckDisplayLog.this.j != null) {
                            CheckDisplayLog.this.j.dismiss();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    CheckDisplayLog.this.i.notifyDataSetChanged();
                    CheckDisplayLog.this.d.invalidateViews();
                    return;
                case 4:
                    try {
                        if (CheckDisplayLog.this.j != null) {
                            CheckDisplayLog.this.j.dismiss();
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    CheckDisplayLog.this.a.setVisibility(0);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(CheckDisplayLog x0, int x1) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(x1).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass2 */
            final /* synthetic */ boolean a = false;

            public final void onClick(DialogInterface arg0, int arg1) {
                if (!this.a) {
                    CheckDisplayLog.m(CheckDisplayLog.this);
                }
                CheckDisplayLog.this.finish();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass13 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    static /* synthetic */ void a(CheckDisplayLog x0, int x1, final boolean x2) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(x1).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass12 */

            public final void onClick(DialogInterface arg0, int arg1) {
                if (!x2) {
                    CheckDisplayLog.l(CheckDisplayLog.this);
                }
                CheckDisplayLog.this.finish();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass11 */

            public final void onClick(DialogInterface arg0, int arg1) {
            }
        }).show();
    }

    static /* synthetic */ boolean j(CheckDisplayLog x0) {
        if (x0.b != null) {
            for (int i2 = 0; i2 < x0.b.size(); i2++) {
                if (x0.b.get(i2).logSelected != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    static /* synthetic */ boolean k(CheckDisplayLog x0) {
        if (x0.b != null) {
            for (int i2 = 0; i2 < x0.b.size(); i2++) {
                if (x0.b.get(i2).logSelected != 1) {
                    return false;
                }
            }
        }
        return true;
    }

    static /* synthetic */ void l(CheckDisplayLog x0) {
        x0.j = new ProgressDialog(x0);
        x0.j.setProgressStyle(0);
        x0.j.setMessage(x0.getResources().getString(R.string.exec_state));
        x0.j.show();
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass3 */

            public final void run() {
                AppDatabase appDatabase = new AppDatabase(CheckDisplayLog.this);
                List<SafeLog> selList = new ArrayList<>();
                Iterator it = CheckDisplayLog.this.b.iterator();
                while (it.hasNext()) {
                    SafeLog safelLog = (SafeLog) it.next();
                    if (safelLog.logSelected == 1) {
                        ContentValues values = new ContentValues();
                        values.put("address", safelLog.number);
                        values.put("date", String.valueOf(safelLog.time));
                        values.put(PushReceiver.READ, (Integer) 1);
                        values.put("status", (Integer) -1);
                        values.put("type", (Integer) 1);
                        values.put(PushReceiver.BODY, safelLog.content);
                        CheckDisplayLog.this.getContentResolver().insert(Uri.parse("content://sms"), values);
                        selList.add(safelLog);
                        it.remove();
                    }
                }
                if (selList.size() > 0) {
                    if (CheckDisplayLog.this.g == 3) {
                        appDatabase.deleteLogItemsforTable(AppDatabase.DB_LOG_HARASS, selList);
                    }
                    Message msg = new Message();
                    msg.what = 3;
                    CheckDisplayLog.this.p.sendMessage(msg);
                }
                if (CheckDisplayLog.this.b.size() == 0) {
                    Message msg2 = new Message();
                    msg2.what = 4;
                    CheckDisplayLog.this.p.sendMessage(msg2);
                }
            }
        }.start();
    }

    static /* synthetic */ void m(CheckDisplayLog x0) {
        x0.j = new ProgressDialog(x0);
        x0.j.setProgressStyle(0);
        x0.j.setMessage(x0.getResources().getString(R.string.exec_state));
        x0.j.show();
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass4 */

            public final void run() {
                AppDatabase appDatabase = new AppDatabase(CheckDisplayLog.this);
                List<SafeLog> selList = new ArrayList<>();
                Iterator it = CheckDisplayLog.this.b.iterator();
                while (it.hasNext()) {
                    SafeLog safelLog = (SafeLog) it.next();
                    if (safelLog.logSelected == 1) {
                        selList.add(safelLog);
                        it.remove();
                    }
                }
                if (selList.size() > 0) {
                    if (CheckDisplayLog.this.g == 2 || CheckDisplayLog.this.g == 3) {
                        appDatabase.deleteLogItemsforTable(AppDatabase.DB_LOG_HARASS, selList);
                    } else {
                        appDatabase.deleteLogItemsforTable(CheckDisplayLog.this.f, selList);
                    }
                    Message msg = new Message();
                    msg.what = 3;
                    CheckDisplayLog.this.p.sendMessage(msg);
                }
                if (CheckDisplayLog.this.b.size() == 0) {
                    Message msg2 = new Message();
                    msg2.what = 4;
                    CheckDisplayLog.this.p.sendMessage(msg2);
                }
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.log_main);
        this.o = (Button) findViewById(R.id.recover_logs);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.clean_log, (Integer) null);
        this.a = (TextView) findViewById(R.id.txt_empty);
        this.d = (ListView) findViewById(R.id.listView_log);
        this.l = (Button) findViewById(R.id.log1_selectall);
        this.m = (Button) findViewById(R.id.log1_cancelall);
        this.n = (Button) findViewById(R.id.delete_logs);
        this.e = getPackageManager();
        this.g = getIntent().getFlags();
        if (this.g == 0) {
            this.f = AppDatabase.DB_LOG_TARIFF;
        }
        if (this.g == 1) {
            this.f = AppDatabase.DB_LOG_PRIVACY;
        }
        if (this.g == 2) {
            this.f = AppDatabase.DB_LOG_HARASS;
        }
        if (this.g == 3) {
            this.f = AppDatabase.DB_LOG_HARASS;
            this.o.setVisibility(0);
        }
        this.h = new AppDatabase(this);
        onBtnClick();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onResume() {
        super.onResume();
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass5 */

            public final void run() {
                if (CheckDisplayLog.this.g == 2) {
                    CheckDisplayLog.this.b = CheckDisplayLog.this.h.loadHarassLog(DatabaseTables.SYSTEM_MARK);
                    Message msg = new Message();
                    msg.what = 1;
                    CheckDisplayLog.this.p.sendMessage(msg);
                } else if (CheckDisplayLog.this.g == 3) {
                    CheckDisplayLog.this.b = CheckDisplayLog.this.h.loadHarassLog("0");
                    Message msg2 = new Message();
                    msg2.what = 1;
                    CheckDisplayLog.this.p.sendMessage(msg2);
                } else {
                    CheckDisplayLog.this.b = CheckDisplayLog.this.h.loadLogs(CheckDisplayLog.this.f, CheckDisplayLog.this.e);
                    Message msg3 = new Message();
                    msg3.what = 0;
                    CheckDisplayLog.this.p.sendMessage(msg3);
                }
            }
        }.start();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        if (v.getId() == R.id.base_title_left) {
            finish();
        }
    }

    public void onBtnClick() {
        this.d.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass6 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                SafeLog log = (SafeLog) CheckDisplayLog.this.b.get(position);
                if (log.logSelected == 1) {
                    log.logSelected = 0;
                } else {
                    log.logSelected = 1;
                }
                CheckDisplayLog.this.d.invalidateViews();
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass7 */

            public final void onClick(View v) {
                for (int i = 0; i < CheckDisplayLog.this.b.size(); i++) {
                    ((SafeLog) CheckDisplayLog.this.b.get(i)).logSelected = 1;
                    CheckDisplayLog.this.d.invalidateViews();
                }
            }
        });
        this.m.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass8 */

            public final void onClick(View v) {
                for (int i = 0; i < CheckDisplayLog.this.b.size(); i++) {
                    ((SafeLog) CheckDisplayLog.this.b.get(i)).logSelected = 0;
                    CheckDisplayLog.this.d.invalidateViews();
                }
            }
        });
        this.n.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass9 */

            public final void onClick(View v) {
                if (CheckDisplayLog.j(CheckDisplayLog.this)) {
                    Toast.makeText(CheckDisplayLog.this, (int) R.string.select_log_to_del, 0).show();
                } else if (CheckDisplayLog.k(CheckDisplayLog.this)) {
                    CheckDisplayLog.a(CheckDisplayLog.this, (int) R.string.del_all_log);
                } else {
                    CheckDisplayLog.a(CheckDisplayLog.this, (int) R.string.del_select_log);
                }
            }
        });
        this.o.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.AppsManager.CheckDisplayLog.AnonymousClass10 */

            public final void onClick(View v) {
                if (CheckDisplayLog.j(CheckDisplayLog.this)) {
                    CheckDisplayLog.a(CheckDisplayLog.this, R.string.select_log_to_del1, true);
                } else {
                    CheckDisplayLog.a(CheckDisplayLog.this, R.string.del_select_log1, false);
                }
            }
        });
    }

    public ArrayList<SafeLog> noSafeLogRepeatList(ArrayList<SafeLog> repeatelist) {
        ArrayList<SafeLog> listnew = new ArrayList<>();
        Iterator<SafeLog> it = repeatelist.iterator();
        while (it.hasNext()) {
            SafeLog con = it.next();
            if (listnew.size() <= 0) {
                listnew.add(con);
            } else {
                boolean isExist = false;
                Iterator i$ = listnew.iterator();
                while (true) {
                    if (!i$.hasNext()) {
                        break;
                    }
                    SafeLog log = i$.next();
                    if (con.packageName.equals(log.packageName) && con.permName.equals(log.permName)) {
                        isExist = true;
                        break;
                    }
                }
                if (!isExist) {
                    listnew.add(con);
                }
            }
        }
        return listnew;
    }

    public int reportPermissionLog(ArrayList<SafeLog> logList) {
        StringBuffer type = new StringBuffer();
        StringBuffer stealTime = new StringBuffer();
        StringBuffer appName = new StringBuffer();
        StringBuffer appinstallpath = new StringBuffer();
        StringBuffer appversion = new StringBuffer();
        StringBuffer sha1 = new StringBuffer();
        StringBuffer pkgName = new StringBuffer();
        StringBuffer certmd5 = new StringBuffer();
        Iterator i$ = logList.iterator();
        while (i$.hasNext()) {
            SafeLog log = i$.next();
            String packageName = log.packageName;
            if (packageName == null) {
                pkgName.append("N/A").append(",");
                appinstallpath.append("N/A").append(",");
                appversion.append("N/A").append(",");
                sha1.append("N/A").append(",");
                certmd5.append("N/A").append(",");
            } else {
                AppUploadInfo app = this.h.getAppUploadinfo(packageName);
                appinstallpath.append(app.getPath()).append(",");
                appversion.append(app.getVersion()).append(",");
                sha1.append(app.getPackagesha1()).append(",");
                certmd5.append(app.getCertmd5()).append(",");
                pkgName.append(packageName).append(",");
            }
            type.append(log.type).append(",");
            stealTime.append(MyUtils.formatAllTime(log.time, this)).append(",");
            appName.append(log.appName).append(",");
        }
        return HttpUtils.reportaccessunder(this, a(type), a(stealTime), a(appName), a(appinstallpath), a(appversion), a(sha1), a(pkgName), a(certmd5), "0");
    }

    public int reportTariffLog(ArrayList<SafeLog> logList) {
        StringBuffer type = new StringBuffer();
        StringBuffer stealTime = new StringBuffer();
        StringBuffer destination = new StringBuffer();
        StringBuffer stealcontent = new StringBuffer();
        StringBuffer appName = new StringBuffer();
        StringBuffer appinstallpath = new StringBuffer();
        StringBuffer appversion = new StringBuffer();
        StringBuffer sha1 = new StringBuffer();
        StringBuffer pkgName = new StringBuffer();
        StringBuffer certmd5 = new StringBuffer();
        Iterator i$ = logList.iterator();
        while (i$.hasNext()) {
            SafeLog log = i$.next();
            String packageName = log.packageName;
            if (packageName == null) {
                pkgName.append("N/A").append(",");
                appinstallpath.append("N/A").append(",");
                appversion.append("N/A").append(",");
                sha1.append("N/A").append(",");
                certmd5.append("N/A").append(",");
            } else {
                AppUploadInfo app = this.h.getAppUploadinfo(packageName);
                appinstallpath.append(app.getPath()).append(",");
                appversion.append(app.getVersion()).append(",");
                sha1.append(app.getPackagesha1()).append(",");
                certmd5.append(app.getCertmd5()).append(",");
                pkgName.append(packageName).append(",");
            }
            type.append(log.type).append(",");
            stealTime.append(MyUtils.formatAllTime(log.time, this)).append(",");
            destination.append(MyUtils.replaceString(log.number)).append(",");
            stealcontent.append(MyUtils.replaceString(log.content)).append("|");
            appName.append(log.appName).append(",");
        }
        return HttpUtils.reportstealfeesoft(this, a(type), a(stealTime), a(stealcontent), a(appName), a(appinstallpath), a(appversion), a(destination), a(sha1), a(pkgName), a(certmd5), "0");
    }

    public int reportHarssLog(ArrayList<SafeLog> logList) {
        StringBuffer type = new StringBuffer();
        StringBuffer numberlist = new StringBuffer();
        StringBuffer Content = new StringBuffer();
        if (this.g == 2) {
            type.append(DatabaseTables.SYSTEM_MARK).append(",");
        }
        if (this.g == 3) {
            type.append("0").append(",");
        }
        Iterator i$ = logList.iterator();
        while (i$.hasNext()) {
            SafeLog log = i$.next();
            numberlist.append(log.number).append(",");
            Content.append(MyUtils.replaceString(log.content)).append("|");
        }
        return HttpUtils.reportHarssLog(this, a(numberlist), a(type), a(Content));
    }

    private static String a(StringBuffer buffer) {
        return buffer.deleteCharAt(buffer.length() - 1).toString();
    }

    /* access modifiers changed from: protected */
    public void setAdapter() {
        if (this.b.size() == 0) {
            this.a.setVisibility(0);
        } else {
            this.a.setVisibility(8);
        }
        this.i = new CheckLogAdapter();
        this.d.setAdapter((ListAdapter) this.i);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 0:
                for (int i2 = 0; i2 < this.b.size(); i2++) {
                    this.b.get(i2).logSelected = 1;
                    this.d.invalidateViews();
                }
                break;
            case 1:
                for (int i3 = 0; i3 < this.b.size(); i3++) {
                    this.b.get(i3).logSelected = 0;
                    this.d.invalidateViews();
                }
                break;
        }
        return super.onOptionsItemSelected(item);
    }

    public class CheckLogAdapter extends BaseAdapter {
        private LayoutInflater b;

        public CheckLogAdapter() {
            this.b = LayoutInflater.from(CheckDisplayLog.this);
        }

        public int getCount() {
            return CheckDisplayLog.this.b.size();
        }

        public Object getItem(int position) {
            return Integer.valueOf(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            a holder;
            Drawable appDrawable;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.check_loglist_item, (ViewGroup) null);
                holder = new a();
                holder.a = (ImageView) convertView.findViewById(R.id.package_icon);
                holder.b = (ImageView) convertView.findViewById(R.id.check_upload_icon);
                holder.c = (TextView) convertView.findViewById(R.id.event_title);
                holder.d = (TextView) convertView.findViewById(R.id.event_action);
                holder.e = (TextView) convertView.findViewById(R.id.event_package);
                holder.f = (TextView) convertView.findViewById(R.id.event_timestamp);
                holder.g = (ImageView) convertView.findViewById(R.id.itemcheck_log);
                convertView.setTag(holder);
            } else {
                holder = (a) convertView.getTag();
            }
            SafeLog safeLog = (SafeLog) CheckDisplayLog.this.b.get(position);
            convertView.setVisibility(0);
            if (CheckDisplayLog.this.g == 2) {
                holder.a.setVisibility(8);
                holder.b.setVisibility(8);
                holder.e.setText(R.string.harass_phone);
                holder.f.setText(AppDatabase.formatTime(safeLog.time, CheckDisplayLog.this));
                holder.c.setText(safeLog.number);
                holder.d.setVisibility(8);
                if (safeLog.logSelected == 1) {
                    holder.g.setBackgroundResource(R.drawable.ic_checkbox_select);
                } else {
                    holder.g.setBackgroundResource(R.drawable.ic_checkbox);
                }
            } else if (CheckDisplayLog.this.g == 3) {
                holder.a.setVisibility(8);
                holder.b.setVisibility(8);
                holder.e.setText(safeLog.number);
                holder.f.setText(AppDatabase.formatTime(safeLog.time, CheckDisplayLog.this));
                holder.c.setText(safeLog.content);
                holder.d.setVisibility(8);
                if (safeLog.logSelected == 1) {
                    holder.g.setBackgroundResource(R.drawable.ic_checkbox_select);
                } else {
                    holder.g.setBackgroundResource(R.drawable.ic_checkbox);
                }
            } else {
                if (!safeLog.permName.equals("android.permission.SEND_SMS") || safeLog.number == null) {
                    holder.c.setText(AppUtil.getDescriptionByPid(CheckDisplayLog.this, Integer.valueOf(safeLog.type).intValue()));
                } else {
                    holder.c.setText(CheckDisplayLog.this.getString(R.string.sms_to) + safeLog.number);
                }
                String str = safeLog.action == 0 ? CheckDisplayLog.this.getString(R.string.allow) : CheckDisplayLog.this.getString(R.string.forbid);
                holder.d.setTextColor(safeLog.action == 0 ? -16711936 : -65536);
                holder.b.setVisibility(8);
                holder.d.setText(str);
                holder.e.setText(safeLog.appName);
                holder.f.setText(AppDatabase.formatTime(safeLog.time, CheckDisplayLog.this));
                if (safeLog.packageName == null || "".equals(safeLog.packageName)) {
                    appDrawable = CheckDisplayLog.this.getResources().getDrawable(R.drawable.icon3);
                } else {
                    try {
                        appDrawable = CheckDisplayLog.this.e.getApplicationIcon(safeLog.packageName);
                    } catch (PackageManager.NameNotFoundException e) {
                        e.printStackTrace();
                        appDrawable = CheckDisplayLog.this.getResources().getDrawable(R.drawable.icon3);
                    }
                }
                holder.a.setImageDrawable(appDrawable);
                if (safeLog.logSelected == 1) {
                    holder.g.setBackgroundResource(R.drawable.ic_checkbox_select);
                } else {
                    holder.g.setBackgroundResource(R.drawable.ic_checkbox);
                }
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
        ImageView g;

        a() {
        }
    }
}
