package com.lenovo.safecenter.Laboratory;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.test.SafeCenter;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.List;

public class ForbiddenApplication extends Activity {
    public static final int CHANGE_BACKGROUND = 7;
    public static final int CHANGE_PLAN_MODE = 3;
    public static final int DISABLE_OPERATE_SUCCESS = 5;
    public static final int ENABLE_OPERATE_SUCCESS = 4;
    public static final int INIT_DATA = 0;
    public static final int ITEM_OPERATE_FAILED = 6;
    public static final int OPERATE_FAILED = 2;
    public static final int OPERATE_SUCCESS = 1;
    private int a = 10;
    private int b;
    private AppDatabase c;
    private SharedPreferences d;
    private List<AppInfo> e;
    private List<AppInfo> f;
    private ArrayList<AppInfo> g;
    private List<ActivityManager.RunningTaskInfo> h;
    private AppInfo i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private ListView o;
    private CheckBox p;
    private ImageView q;
    private ProgressBar r;
    private ProgressDialog s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private Handler x = new Handler() {
        /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            boolean z = false;
            switch (msg.what) {
                case 0:
                    ForbiddenApplication.this.r.setVisibility(8);
                    ForbiddenApplication.this.o.setAdapter((ListAdapter) new a(ForbiddenApplication.this, ForbiddenApplication.this.g));
                    return;
                case 1:
                    try {
                        if (ForbiddenApplication.this.s != null) {
                            ForbiddenApplication.this.s.dismiss();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    ForbiddenApplication forbiddenApplication = ForbiddenApplication.this;
                    if (!ForbiddenApplication.this.t) {
                        z = true;
                    }
                    forbiddenApplication.t = z;
                    ForbiddenApplication.this.q.setEnabled(true);
                    if (ForbiddenApplication.this.t) {
                        ForbiddenApplication.this.k.setText(R.string.opend);
                        ForbiddenApplication.this.q.setImageResource(R.drawable.btn_on);
                    } else {
                        ForbiddenApplication.this.k.setText(R.string.closed);
                        ForbiddenApplication.this.q.setImageResource(R.drawable.btn_off);
                    }
                    LeSafeObservable.get(ForbiddenApplication.this).noticeChangeGuestModeSuccess();
                    return;
                case 2:
                    try {
                        if (ForbiddenApplication.this.s != null) {
                            ForbiddenApplication.this.s.dismiss();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    ForbiddenApplication.this.q.setEnabled(true);
                    Toast.makeText(ForbiddenApplication.this, (int) R.string.info_failed, 1).show();
                    LeSafeObservable.get(ForbiddenApplication.this).noticeChangeChildModeFail();
                    return;
                case 3:
                    try {
                        if (ForbiddenApplication.this.s != null) {
                            ForbiddenApplication.this.s.dismiss();
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    ForbiddenApplication.this.p.setEnabled(true);
                    ForbiddenApplication.this.p.setChecked(ForbiddenApplication.this.u);
                    return;
                case 4:
                    try {
                        if (ForbiddenApplication.this.s != null) {
                            ForbiddenApplication.this.s.dismiss();
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    ForbiddenApplication.this.o.setEnabled(true);
                    ForbiddenApplication.this.c.deleteApp(ForbiddenApplication.this.i.packageName, 0);
                    ForbiddenApplication.l(ForbiddenApplication.this);
                    ForbiddenApplication.this.i.selected = 0;
                    ForbiddenApplication.this.o.invalidateViews();
                    return;
                case 5:
                    try {
                        if (ForbiddenApplication.this.s != null) {
                            ForbiddenApplication.this.s.dismiss();
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    ForbiddenApplication.this.o.setEnabled(true);
                    ForbiddenApplication.m(ForbiddenApplication.this);
                    ForbiddenApplication.this.i.selected = 1;
                    ForbiddenApplication.this.o.invalidateViews();
                    return;
                case 6:
                    try {
                        if (ForbiddenApplication.this.s != null) {
                            ForbiddenApplication.this.s.dismiss();
                        }
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                    ForbiddenApplication.this.o.setEnabled(true);
                    Toast.makeText(ForbiddenApplication.this, (int) R.string.info_failed, 1).show();
                    return;
                case 7:
                    ForbiddenApplication.this.m.setVisibility(8);
                    ForbiddenApplication.this.n.setVisibility(0);
                    return;
                default:
                    return;
            }
        }
    };
    private AdapterView.OnItemClickListener y = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass12 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
            boolean flag;
            if (!ForbiddenApplication.this.w) {
                ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(7));
                return;
            }
            ForbiddenApplication.this.i = (AppInfo) ForbiddenApplication.this.g.get(arg2);
            if (ForbiddenApplication.this.i.selected == 0) {
                flag = true;
            } else {
                flag = false;
            }
            if (flag) {
                if (ForbiddenApplication.this.b >= ForbiddenApplication.this.a) {
                    ForbiddenApplication.v(ForbiddenApplication.this);
                } else if (ForbiddenApplication.this.t) {
                    ForbiddenApplication.u(ForbiddenApplication.this);
                } else if (ForbiddenApplication.this.c.insertApp(ForbiddenApplication.this.i, 0) == 1) {
                    ForbiddenApplication.m(ForbiddenApplication.this);
                    ForbiddenApplication.this.i.selected = 1;
                    ForbiddenApplication.this.o.invalidateViews();
                }
            } else if (ForbiddenApplication.this.t) {
                ForbiddenApplication.this.a();
                ForbiddenApplication.this.o.setEnabled(false);
                new Thread() {
                    /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass12.AnonymousClass1 */

                    public final void run() {
                        if (CMDHelper.enableApp(ForbiddenApplication.this.getApplicationContext(), ForbiddenApplication.this.i.packageName)) {
                            ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(4));
                        } else {
                            ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(6));
                        }
                    }
                }.start();
            } else {
                ForbiddenApplication.this.c.deleteApp(ForbiddenApplication.this.i.packageName, 0);
                ForbiddenApplication.l(ForbiddenApplication.this);
                ForbiddenApplication.this.i.selected = 0;
                ForbiddenApplication.this.o.invalidateViews();
            }
        }
    };
    private View.OnClickListener z = new View.OnClickListener() {
        /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass17 */

        public final void onClick(View v) {
            boolean z = false;
            if (!ForbiddenApplication.this.w) {
                ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(7));
            } else if (v.getId() == R.id.antispam_checkbox) {
                ForbiddenApplication.this.q.setEnabled(false);
                ForbiddenApplication.x(ForbiddenApplication.this);
            } else if (v.getId() == R.id.plan_mode_check) {
                ForbiddenApplication forbiddenApplication = ForbiddenApplication.this;
                if (!ForbiddenApplication.this.u) {
                    z = true;
                }
                forbiddenApplication.u = z;
                ForbiddenApplication.c(ForbiddenApplication.this, ForbiddenApplication.this.u);
            }
        }
    };

    static /* synthetic */ void c(ForbiddenApplication x0, boolean x1) {
        x0.u = x1;
        x0.d.edit().putBoolean("plan_mode_preference", x0.u).commit();
        if (x0.t) {
            x0.p.setEnabled(false);
            SafeCenter.setFlyModeEnable(x0, x1);
            new Thread() {
                /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass16 */

                public final void run() {
                    try {
                        Thread.sleep(4000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(3));
                }
            }.start();
        }
    }

    static /* synthetic */ int l(ForbiddenApplication x0) {
        int i2 = x0.b;
        x0.b = i2 - 1;
        return i2;
    }

    static /* synthetic */ int m(ForbiddenApplication x0) {
        int i2 = x0.b;
        x0.b = i2 + 1;
        return i2;
    }

    static /* synthetic */ void p(ForbiddenApplication x0) {
        x0.c = new AppDatabase(x0);
        x0.g = new ArrayList<>();
        x0.h = ((ActivityManager) x0.getSystemService("activity")).getRunningTasks(100);
        x0.e = x0.c.queryAllHideApps(0);
        x0.b = x0.e.size();
        x0.f = SafeCenter.getLauncherApp(x0, x0.e);
        for (AppInfo appInfo : x0.e) {
            x0.g.add(appInfo);
        }
        for (AppInfo appInfo2 : x0.f) {
            x0.g.add(appInfo2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x007f A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:3:0x000e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void u(com.lenovo.safecenter.Laboratory.ForbiddenApplication r6) {
        /*
        // Method dump skipped, instructions count: 156
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.Laboratory.ForbiddenApplication.u(com.lenovo.safecenter.Laboratory.ForbiddenApplication):void");
    }

    static /* synthetic */ void v(ForbiddenApplication x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.max_hide_apps).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    static /* synthetic */ void x(ForbiddenApplication x0) {
        if (x0.t) {
            x0.a();
            new Thread() {
                /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass13 */

                public final void run() {
                    if (SafeCenter.closeChildMode(ForbiddenApplication.this, ForbiddenApplication.this.c)) {
                        if (ForbiddenApplication.this.u) {
                            try {
                                Thread.sleep(4000);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                        ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(1));
                        return;
                    }
                    ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(2));
                }
            }.start();
            return;
        }
        x0.a();
        if (x0.v) {
            new Thread() {
                /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass14 */

                public final void run() {
                    if (SafeCenter.closeGuestMode(ForbiddenApplication.this, true, ForbiddenApplication.this.c)) {
                        ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(1));
                        return;
                    }
                    if (!ForbiddenApplication.this.t) {
                        Settings.System.putInt(ForbiddenApplication.this.getContentResolver(), "child_mode_on", 0);
                    }
                    Settings.System.putInt(ForbiddenApplication.this.getContentResolver(), "guest_mode_on", 1);
                    ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(2));
                }
            }.start();
        } else {
            new Thread() {
                /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass15 */

                public final void run() {
                    if (SafeCenter.openChildMode(ForbiddenApplication.this, ForbiddenApplication.this.c)) {
                        if (ForbiddenApplication.this.u) {
                            try {
                                Thread.sleep(4000);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                        ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(1));
                        return;
                    }
                    ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(2));
                }
            }.start();
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.childmode);
        this.d = PreferenceManager.getDefaultSharedPreferences(this);
        this.w = WflUtils.isRoot();
        ((TextView) findViewById(R.id.txt_title)).setText(getString(R.string.child_mode));
        ((ImageView) findViewById(R.id.title_set)).setVisibility(4);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass11 */

            public final void onClick(View v) {
                ForbiddenApplication.this.finish();
            }
        });
        this.m = (TextView) findViewById(R.id.show_root_info);
        this.n = (TextView) findViewById(R.id.show_root_info_select);
        this.l = (TextView) findViewById(R.id.childmode_tip);
        if (this.w) {
            this.l.setVisibility(0);
        } else {
            this.m.setVisibility(0);
        }
        this.r = (ProgressBar) findViewById(R.id.child_progress_bar);
        this.o = (ListView) findViewById(R.id.childmode_list);
        this.o.setOnItemClickListener(this.y);
        this.p = (CheckBox) findViewById(R.id.plan_mode_check);
        this.p.setOnClickListener(this.z);
        if (!this.w) {
            this.p.setEnabled(false);
        }
        this.j = (TextView) findViewById(R.id.antispam_txt);
        this.j.setText(R.string.child_mode);
        this.k = (TextView) findViewById(R.id.antispam_checkboxtxt);
        this.q = (ImageView) findViewById(R.id.antispam_checkbox);
        if (this.w) {
            this.q.setOnClickListener(this.z);
        }
        this.r.setVisibility(0);
        new Thread() {
            /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass10 */

            public final void run() {
                ForbiddenApplication.p(ForbiddenApplication.this);
                ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(0));
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        boolean z2;
        boolean z3;
        boolean airplan;
        super.onResume();
        if (Settings.System.getInt(getContentResolver(), "child_mode_on", 0) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.t = z2;
        if (Settings.System.getInt(getContentResolver(), "guest_mode_on", 0) == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.v = z3;
        if (this.t) {
            this.k.setText(R.string.opend);
            this.q.setImageResource(R.drawable.btn_on);
        } else {
            this.k.setText(R.string.closed);
            this.q.setImageResource(R.drawable.btn_off);
        }
        if (Settings.System.getInt(getContentResolver(), "airplane_mode_on", 0) == 1) {
            airplan = true;
        } else {
            airplan = false;
        }
        this.u = airplan;
        this.d.edit().putBoolean("plan_mode_preference", this.u).commit();
        this.p.setChecked(this.u);
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a() {
        this.s = new ProgressDialog(this);
        this.s.setOnDismissListener(new DialogInterface.OnDismissListener() {
            /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass2 */

            public final void onDismiss(DialogInterface dialog) {
                ForbiddenApplication.this.s = null;
            }
        });
        this.s.setProgressStyle(0);
        this.s.setMessage(getString(R.string.exec_state));
        this.s.show();
    }

    private class a extends BaseAdapter {
        Context a;
        List<AppInfo> b;

        public a(Context context, List<AppInfo> list) {
            this.a = context;
            this.b = list;
        }

        public final int getCount() {
            return this.b.size();
        }

        public final Object getItem(int position) {
            return this.b.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(int position, View convertView, ViewGroup parent) {
            b holder;
            if (convertView == null) {
                convertView = LayoutInflater.from(this.a).inflate(R.layout.second_item, (ViewGroup) null);
                holder = new b();
                holder.a = (ImageView) convertView.findViewById(R.id.app_icon);
                holder.b = (TextView) convertView.findViewById(R.id.app_name);
                holder.c = (ImageView) convertView.findViewById(R.id.itemcheck);
                ((TextView) convertView.findViewById(R.id.app_suggest)).setVisibility(8);
                convertView.setTag(holder);
            } else {
                holder = (b) convertView.getTag();
            }
            AppInfo appInfo = this.b.get(position);
            holder.b.setText(appInfo.name);
            if (appInfo.icon == null) {
                holder.a.setImageDrawable(ForbiddenApplication.this.getResources().getDrawable(R.drawable.icon3));
            } else {
                holder.a.setImageDrawable(appInfo.icon);
            }
            if (appInfo.selected == 1) {
                holder.c.setBackgroundResource(R.drawable.perm_deny);
            } else {
                holder.c.setBackgroundResource(R.drawable.perm_grant);
            }
            return convertView;
        }
    }

    class b {
        ImageView a;
        TextView b;
        ImageView c;

        b() {
        }
    }

    public void showRebootDialog() {
        new CustomDialog.Builder(this).setTitle(R.string.info).setMessage(R.string.reboot_info).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass9 */

            public final void onClick(DialogInterface dialog, int which) {
                ForbiddenApplication.this.a();
                new Thread() {
                    /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass9.AnonymousClass1 */

                    public final void run() {
                        if (SafeCenter.closeGuestMode(ForbiddenApplication.this, true, ForbiddenApplication.this.c)) {
                            ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(1));
                            return;
                        }
                        if (!ForbiddenApplication.this.t) {
                            Settings.System.putInt(ForbiddenApplication.this.getContentResolver(), "child_mode_on", 0);
                        }
                        Settings.System.putInt(ForbiddenApplication.this.getContentResolver(), "guest_mode_on", 1);
                        ForbiddenApplication.this.x.sendMessage(ForbiddenApplication.this.x.obtainMessage(2));
                    }
                }.start();
            }
        }).setNegativeButton(R.string.no, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
                ForbiddenApplication.this.q.setEnabled(true);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() {
            /* class com.lenovo.safecenter.Laboratory.ForbiddenApplication.AnonymousClass7 */

            public final void onCancel(DialogInterface dialog) {
                ForbiddenApplication.this.q.setEnabled(true);
            }
        }).show();
    }
}
