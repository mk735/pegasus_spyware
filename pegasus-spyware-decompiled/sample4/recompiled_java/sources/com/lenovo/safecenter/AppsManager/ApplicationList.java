package com.lenovo.safecenter.AppsManager;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.PermAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.support.SafeCenterService;
import com.lenovo.safecenter.utils.MyUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class ApplicationList extends Activity implements View.OnClickListener {
    public static final int CHANGE_BACKGROUND = 7;
    private String a = "android.provider.Telephony.SMS_RECEIVED";
    private String b = "android.intent.action.NEW_OUTGOING_CALL";
    private List<ComponentName> c = null;
    private List<ComponentName> d = null;
    private Context e;
    private PackageManager f;
    private AppDatabase g = null;
    private ArrayList<AppInfo> h;
    private PermAdapter i;
    private ListView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private ProgressBar t;
    private String u;
    private int v;
    private int w;
    private boolean x;
    private Handler y = new Handler() {
        /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    ApplicationList.a(ApplicationList.this);
                    if (ApplicationList.this.w == 0) {
                        MyUtils.showToast(ApplicationList.this.e, ApplicationList.this.getString(R.string.toast_allow_all));
                        return;
                    } else if (ApplicationList.this.w == ApplicationList.this.v) {
                        MyUtils.showToast(ApplicationList.this.e, ApplicationList.this.getString(R.string.toast_deny_all));
                        return;
                    } else {
                        return;
                    }
                case 1:
                    ApplicationList.this.r.setVisibility(8);
                    ApplicationList.this.s.setVisibility(0);
                    return;
                case 2:
                    ApplicationList.a(ApplicationList.this);
                    String str = "";
                    if (ApplicationList.this.u.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                        str = String.format(ApplicationList.this.getString(R.string.toast_deny_num), Integer.valueOf(ApplicationList.this.w), ApplicationList.this.getString(R.string.perm_privacy_info));
                    } else if (ApplicationList.this.u.equals("location")) {
                        str = String.format(ApplicationList.this.getString(R.string.toast_deny_num), Integer.valueOf(ApplicationList.this.w), ApplicationList.this.getString(R.string.perm_location_info));
                    } else if (ApplicationList.this.u.equals(AppDatabase.PERM_TYPE_DEVICE)) {
                        str = String.format(ApplicationList.this.getString(R.string.toast_deny_num), Integer.valueOf(ApplicationList.this.w), ApplicationList.this.getString(R.string.perm_tap_calling));
                    } else if (ApplicationList.this.u.equals(AppDatabase.DB_APP_CALL)) {
                        str = String.format(ApplicationList.this.getString(R.string.toast_deny_num), Integer.valueOf(ApplicationList.this.w), ApplicationList.this.getString(R.string.perm_call));
                    }
                    MyUtils.showToast(ApplicationList.this.e, str);
                    return;
                default:
                    return;
            }
        }
    };
    private AdapterView.OnItemClickListener z = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass3 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
            boolean flag = true;
            if (!ApplicationList.this.x) {
                ApplicationList.this.y.sendMessage(ApplicationList.this.y.obtainMessage(1));
                return;
            }
            AppInfo app = (AppInfo) ApplicationList.this.h.get(arg2);
            if (app.selected != 0) {
                flag = false;
            }
            if (flag) {
                ApplicationList.k(ApplicationList.this);
                ApplicationList.this.y.sendMessage(ApplicationList.this.y.obtainMessage(0));
            } else {
                ApplicationList.l(ApplicationList.this);
                ApplicationList.this.y.sendMessage(ApplicationList.this.y.obtainMessage(0));
            }
            ApplicationList.a(ApplicationList.this, app, flag);
            ApplicationList.this.j.invalidateViews();
        }
    };

    static /* synthetic */ int a(List x1, String x2) {
        for (int i2 = 0; i2 < x1.size(); i2++) {
            if (((ComponentName) x1.get(i2)).getPackageName().equals(x2)) {
                return i2;
            }
        }
        return -1;
    }

    static /* synthetic */ void a(ApplicationList x0) {
        String str = "";
        if (x0.x) {
            if (x0.u.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                str = String.format(x0.getString(R.string.deny_apps_count), Integer.valueOf(x0.v), x0.getString(R.string.perm_privacy_info), Integer.valueOf(x0.w));
            } else if (x0.u.equals("location")) {
                str = String.format(x0.getString(R.string.deny_apps_count), Integer.valueOf(x0.v), x0.getString(R.string.perm_location_info), Integer.valueOf(x0.w));
            } else if (x0.u.equals(AppDatabase.PERM_TYPE_DEVICE)) {
                str = String.format(x0.getString(R.string.deny_apps_count), Integer.valueOf(x0.v), x0.getString(R.string.perm_tap_calling), Integer.valueOf(x0.w));
            } else if (x0.u.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
                str = String.format(x0.getString(R.string.deny_apps_count), Integer.valueOf(x0.v), x0.getString(R.string.perm_send_sms), Integer.valueOf(x0.w));
            } else if (x0.u.equals(AppDatabase.DB_APP_CALL)) {
                str = String.format(x0.getString(R.string.deny_apps_count), Integer.valueOf(x0.v), x0.getString(R.string.perm_call), Integer.valueOf(x0.w));
            }
            x0.m.setVisibility(0);
            x0.m.setText(str);
            return;
        }
        x0.r.setVisibility(0);
    }

    static /* synthetic */ void a(ApplicationList x0, AppInfo x1, boolean x2) {
        if (!x2) {
            x1.selected = 0;
            x0.g.updateApp(x1, x0.u);
            if (x0.u.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                x0.b(x0.c, x1);
            } else if (x0.u.equals(AppDatabase.PERM_TYPE_DEVICE)) {
                x0.b(x0.d, x1);
            } else if (x0.u.equals("location") && x1.packageName.equals("com.wochacha")) {
                new Thread() {
                    /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass6 */

                    public final void run() {
                        CMDHelper.enableApp(ApplicationList.this.e, "com.wochacha/.DataService");
                    }
                }.start();
            }
        } else {
            x1.selected = 1;
            x0.g.updateApp(x1, x0.u);
            if (x0.u.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
                x0.a(x0.c, x1);
            } else if (x0.u.equals(AppDatabase.PERM_TYPE_DEVICE)) {
                x0.a(x0.d, x1);
            } else if (x0.u.equals("location") && x1.packageName.equals("com.wochacha")) {
                new Thread() {
                    /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass7 */

                    public final void run() {
                        CMDHelper.disableApp(ApplicationList.this.e, "com.wochacha/.DataService");
                    }
                }.start();
            }
        }
    }

    static /* synthetic */ int k(ApplicationList x0) {
        int i2 = x0.w;
        x0.w = i2 + 1;
        return i2;
    }

    static /* synthetic */ int l(ApplicationList x0) {
        int i2 = x0.w;
        x0.w = i2 - 1;
        return i2;
    }

    static /* synthetic */ void o(ApplicationList x0) {
        if (x0.h.size() == 0) {
            x0.l.setVisibility(0);
        } else {
            x0.l.setVisibility(8);
            x0.j.setOnItemClickListener(x0.z);
            if (x0.x) {
                x0.n.setEnabled(true);
                x0.o.setEnabled(true);
                x0.p.setEnabled(true);
                x0.q.setEnabled(true);
            }
        }
        x0.i = new PermAdapter(x0, x0.h);
        x0.j.setAdapter((ListAdapter) x0.i);
    }

    static /* synthetic */ void p(ApplicationList x0) {
        if (x0.u.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
            x0.c = x0.a(x0.a);
        } else if (!x0.u.equals("location") && x0.u.equals(AppDatabase.PERM_TYPE_DEVICE)) {
            x0.d = x0.a(x0.b);
        }
        x0.h = x0.g.loadApps(x0, x0.u, x0.x);
        x0.v = x0.h.size();
        for (int i2 = 0; i2 < x0.v; i2++) {
            if (x0.h.get(i2).selected == 1) {
                x0.w++;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.u = getIntent().getExtras().getString("permType");
        setContentView(R.layout.second_main);
        this.e = this;
        this.x = WflUtils.isRoot();
        this.f = getPackageManager();
        this.g = new AppDatabase(this);
        this.k = (TextView) findViewById(R.id.txt_title);
        ((ImageView) findViewById(R.id.title_set)).setVisibility(4);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(this);
        this.m = (TextView) findViewById(R.id.deny_apps_des);
        if (this.u.equals(AppDatabase.PERM_TYPE_PRIVCY)) {
            this.k.setText(R.string.privacy_info);
        } else if (this.u.equals("location")) {
            this.k.setText(R.string.location_info);
        } else if (this.u.equals(AppDatabase.PERM_TYPE_DEVICE)) {
            this.k.setText(R.string.tap_calling);
        } else if (this.u.equals(AppDatabase.PERM_TYPE_INSTALLAPP)) {
            this.k.setText(R.string.install_app_notip);
        } else if (this.u.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
            this.k.setText(R.string.sms_background);
        } else if (this.u.equals(AppDatabase.DB_APP_CALL)) {
            this.k.setText(R.string.call_background);
        }
        ((LinearLayout) findViewById(R.id.listView_layout)).setVisibility(0);
        this.j = (ListView) findViewById(R.id.listView);
        this.l = (TextView) findViewById(R.id.txt_empty);
        this.t = (ProgressBar) findViewById(R.id.progress_bar);
        this.n = (TextView) findViewById(R.id.selectall);
        this.p = (TextView) findViewById(R.id.offall);
        this.o = (TextView) findViewById(R.id.infoall);
        this.q = (TextView) findViewById(R.id.suggest);
        this.r = (TextView) findViewById(R.id.show_root_info);
        this.s = (TextView) findViewById(R.id.show_root_info_select);
        if (this.u.equals(AppDatabase.DB_APP_SENDMESSAGE)) {
            this.o.setVisibility(0);
        } else {
            this.o.setVisibility(8);
        }
        this.n.setOnClickListener(this);
        this.p.setOnClickListener(this);
        this.o.setOnClickListener(this);
        this.q.setOnClickListener(this);
        initApps();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
    }

    public void onClick(View v2) {
        switch (v2.getId()) {
            case R.id.suggest /*{ENCODED_INT: 2131297572}*/:
                this.w = 0;
                this.g.expertSuggest(this, this.h, true);
                for (int i2 = 0; i2 < this.v; i2++) {
                    if (this.h.get(i2).selected == 1) {
                        this.w++;
                    }
                }
                this.j.invalidateViews();
                this.y.sendMessage(this.y.obtainMessage(2));
                return;
            case R.id.selectall /*{ENCODED_INT: 2131297573}*/:
                if (this.w != 0) {
                    new CustomDialog.Builder(this).setTitle(R.string.info).setIcon(17301543).setMessage(R.string.allow_all_tip).setColorPositiveButton(false).setColorNegativeButton(true).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                        /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass9 */

                        public final void onClick(DialogInterface dialog, int which) {
                            try {
                                ApplicationList.this.g.updateApp(ApplicationList.this.h, 0);
                                ApplicationList.this.w = 0;
                                ApplicationList.this.y.sendMessage(ApplicationList.this.y.obtainMessage(0));
                                ApplicationList.this.j.invalidateViews();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                        /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass8 */

                        public final void onClick(DialogInterface dialog, int which) {
                        }
                    }).show();
                    return;
                } else {
                    this.y.sendMessage(this.y.obtainMessage(0));
                    return;
                }
            case R.id.offall /*{ENCODED_INT: 2131297575}*/:
                try {
                    if (this.w != this.v) {
                        this.g.updateApp(this.h, 1);
                        this.w = this.v;
                        this.j.invalidateViews();
                    }
                    this.y.sendMessage(this.y.obtainMessage(0));
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case R.id.title_back /*{ENCODED_INT: 2131297709}*/:
                finish();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (this.x) {
            startService(new Intent(this, SafeCenterService.class));
        }
        sendBroadcast(new Intent("com.lenovo.safecenter.refreshAppsManager"));
        TrackEvent.trackPause(this);
    }

    public void initApps() {
        this.n.setEnabled(false);
        this.o.setEnabled(false);
        this.p.setEnabled(false);
        this.q.setEnabled(false);
        this.t.setVisibility(0);
        final Handler handler = new Handler() {
            /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass4 */

            public final void handleMessage(Message msg) {
                ApplicationList.this.t.setVisibility(8);
                ApplicationList.a(ApplicationList.this);
                ApplicationList.o(ApplicationList.this);
            }
        };
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass5 */

            public final void run() {
                ApplicationList.p(ApplicationList.this);
                handler.sendMessage(handler.obtainMessage(0));
            }
        }.start();
    }

    private List<ComponentName> a(String broadcast) {
        List<ComponentName> list = new ArrayList<>();
        for (ResolveInfo resolve : this.f.queryBroadcastReceivers(new Intent(broadcast), 600)) {
            ApplicationInfo app = resolve.activityInfo.applicationInfo;
            if ((app.flags & 1) == 0) {
                list.add(new ComponentName(app.packageName, resolve.activityInfo.name));
            }
        }
        return list;
    }

    private void a(final List<ComponentName> list, final AppInfo appInfo) {
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass10 */

            public final void run() {
                ApplicationList applicationList = ApplicationList.this;
                int index = ApplicationList.a(list, appInfo.packageName);
                if (index >= 0) {
                    ComponentName component = (ComponentName) list.get(index);
                    CMDHelper.disableApp(ApplicationList.this.e, component.getPackageName() + CookieSpec.PATH_DELIM + component.getClassName());
                }
            }
        }.start();
    }

    private void b(final List<ComponentName> list, final AppInfo appInfo) {
        new Thread() {
            /* class com.lenovo.safecenter.AppsManager.ApplicationList.AnonymousClass2 */

            public final void run() {
                ApplicationList applicationList = ApplicationList.this;
                int index = ApplicationList.a(list, appInfo.packageName);
                if (index >= 0) {
                    ComponentName component = (ComponentName) list.get(index);
                    CMDHelper.enableApp(ApplicationList.this.e, component.getPackageName() + CookieSpec.PATH_DELIM + component.getClassName());
                }
            }
        }.start();
    }
}
