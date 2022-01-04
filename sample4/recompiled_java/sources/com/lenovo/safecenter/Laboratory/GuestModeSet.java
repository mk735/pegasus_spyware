package com.lenovo.safecenter.Laboratory;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ProgressDialog;
import android.content.ContentResolver;
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
import android.widget.Button;
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
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.TrackEvent;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.ArrayList;
import java.util.List;

public class GuestModeSet extends Activity {
    public static final int CHANGE_BACKGROUND = 7;
    public static final int CLEAN_HISTORY = 3;
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
    private ListView j;
    private ProgressBar k;
    private ProgressDialog l;
    private CheckBox m;
    private Button n;
    private TextView o;
    private TextView p;
    private TextView q;
    private ContentResolver r;
    private boolean s;
    private boolean t;
    private boolean u;
    private Handler v = new Handler() {
        /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            boolean z = false;
            switch (msg.what) {
                case 0:
                    GuestModeSet.this.k.setVisibility(8);
                    GuestModeSet.this.j.setAdapter((ListAdapter) new a(GuestModeSet.this, GuestModeSet.this.g));
                    return;
                case 1:
                    try {
                        if (GuestModeSet.this.l != null) {
                            GuestModeSet.this.l.dismiss();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    GuestModeSet guestModeSet = GuestModeSet.this;
                    if (!GuestModeSet.this.t) {
                        z = true;
                    }
                    guestModeSet.t = z;
                    GuestModeSet.this.n.setEnabled(true);
                    if (GuestModeSet.this.t) {
                        GuestModeSet.this.n.setBackgroundResource(R.drawable.btn_on);
                    } else {
                        GuestModeSet.this.n.setBackgroundResource(R.drawable.btn_off);
                    }
                    LeSafeObservable.get(GuestModeSet.this).noticeChangeGuestModeSuccess();
                    return;
                case 2:
                    try {
                        if (GuestModeSet.this.l != null) {
                            GuestModeSet.this.l.dismiss();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    GuestModeSet.this.n.setEnabled(true);
                    Toast.makeText(GuestModeSet.this, (int) R.string.info_failed, 1).show();
                    LeSafeObservable.get(GuestModeSet.this).noticeChangeChildModeFail();
                    return;
                case 3:
                    GuestModeSet.this.m.setChecked(true);
                    return;
                case 4:
                    try {
                        if (GuestModeSet.this.l != null) {
                            GuestModeSet.this.l.dismiss();
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    GuestModeSet.this.j.setEnabled(true);
                    GuestModeSet.this.c.deleteApp(GuestModeSet.this.i.packageName, 1);
                    GuestModeSet.j(GuestModeSet.this);
                    GuestModeSet.this.i.selected = 0;
                    GuestModeSet.this.j.invalidateViews();
                    return;
                case 5:
                    try {
                        if (GuestModeSet.this.l != null) {
                            GuestModeSet.this.l.dismiss();
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    GuestModeSet.this.j.setEnabled(true);
                    GuestModeSet.k(GuestModeSet.this);
                    GuestModeSet.this.i.selected = 1;
                    GuestModeSet.this.j.invalidateViews();
                    return;
                case 6:
                    try {
                        if (GuestModeSet.this.l != null) {
                            GuestModeSet.this.l.dismiss();
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    GuestModeSet.this.j.setEnabled(true);
                    Toast.makeText(GuestModeSet.this, (int) R.string.info_failed, 1).show();
                    return;
                case 7:
                    GuestModeSet.this.p.setVisibility(8);
                    GuestModeSet.this.q.setVisibility(0);
                    return;
                default:
                    return;
            }
        }
    };
    private View.OnClickListener w = new View.OnClickListener() {
        /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass8 */

        public final void onClick(View v) {
            GuestModeSet.this.n.setEnabled(false);
            GuestModeSet.this.a();
            new Thread() {
                /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass8.AnonymousClass1 */

                public final void run() {
                    if (GuestModeSet.this.t) {
                        if (SafeCenter.closeGuestMode(GuestModeSet.this, false, GuestModeSet.this.c)) {
                            GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(1));
                            return;
                        }
                        Settings.System.putInt(GuestModeSet.this.r, "guest_mode_on", 1);
                        GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(2));
                    } else if (SafeCenter.openGuestMode(GuestModeSet.this, GuestModeSet.this.s, GuestModeSet.this.c)) {
                        GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(1));
                    } else {
                        if (GuestModeSet.this.s) {
                            Settings.System.putInt(GuestModeSet.this.r, "child_mode_on", 1);
                        }
                        Settings.System.putInt(GuestModeSet.this.r, "guest_mode_on", 0);
                        GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(2));
                    }
                }
            }.start();
        }
    };
    private AdapterView.OnItemClickListener x = new AdapterView.OnItemClickListener() {
        /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass9 */

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
            boolean flag;
            if (!GuestModeSet.this.u) {
                GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(7));
                return;
            }
            GuestModeSet.this.i = (AppInfo) GuestModeSet.this.g.get(arg2);
            if (GuestModeSet.this.i.selected == 0) {
                flag = true;
            } else {
                flag = false;
            }
            if (flag) {
                if (GuestModeSet.this.b >= GuestModeSet.this.a) {
                    GuestModeSet.w(GuestModeSet.this);
                } else if (GuestModeSet.this.t) {
                    GuestModeSet.v(GuestModeSet.this);
                } else if (GuestModeSet.this.c.insertApp(GuestModeSet.this.i, 1) == 1) {
                    GuestModeSet.k(GuestModeSet.this);
                    GuestModeSet.this.i.selected = 1;
                    GuestModeSet.this.j.invalidateViews();
                }
            } else if (GuestModeSet.this.t) {
                GuestModeSet.this.a();
                GuestModeSet.this.j.setEnabled(false);
                new Thread() {
                    /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass9.AnonymousClass1 */

                    public final void run() {
                        if (CMDHelper.enableApp(GuestModeSet.this.getApplicationContext(), GuestModeSet.this.i.packageName)) {
                            GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(4));
                        } else {
                            GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(6));
                        }
                    }
                }.start();
            } else {
                GuestModeSet.this.c.deleteApp(GuestModeSet.this.i.packageName, 1);
                GuestModeSet.j(GuestModeSet.this);
                GuestModeSet.this.i.selected = 0;
                GuestModeSet.this.j.invalidateViews();
            }
        }
    };

    static /* synthetic */ int j(GuestModeSet x0) {
        int i2 = x0.b;
        x0.b = i2 - 1;
        return i2;
    }

    static /* synthetic */ int k(GuestModeSet x0) {
        int i2 = x0.b;
        x0.b = i2 + 1;
        return i2;
    }

    static /* synthetic */ void n(GuestModeSet x0) {
        x0.g = new ArrayList<>();
        x0.h = ((ActivityManager) x0.getSystemService("activity")).getRunningTasks(100);
        x0.e = x0.c.queryAllHideApps(1);
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
    static /* synthetic */ void v(com.lenovo.safecenter.Laboratory.GuestModeSet r6) {
        /*
        // Method dump skipped, instructions count: 156
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.Laboratory.GuestModeSet.v(com.lenovo.safecenter.Laboratory.GuestModeSet):void");
    }

    static /* synthetic */ void w(GuestModeSet x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.max_hide_apps).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass13 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.guestmode);
        this.u = WflUtils.isRoot();
        this.c = new AppDatabase(this);
        this.d = PreferenceManager.getDefaultSharedPreferences(this);
        ((TextView) findViewById(R.id.txt_title)).setText(getString(R.string.guest_mode));
        ((ImageView) findViewById(R.id.title_set)).setVisibility(4);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass7 */

            public final void onClick(View v) {
                GuestModeSet.this.finish();
            }
        });
        this.p = (TextView) findViewById(R.id.show_root_info);
        this.q = (TextView) findViewById(R.id.show_root_info_select);
        this.o = (TextView) findViewById(R.id.guestmode_tip);
        if (this.u) {
            this.o.setVisibility(0);
        } else {
            this.p.setVisibility(0);
        }
        this.k = (ProgressBar) findViewById(R.id.guest_progress_bar);
        this.j = (ListView) findViewById(R.id.guestmode_list);
        this.j.setOnItemClickListener(this.x);
        this.r = getContentResolver();
        this.s = Settings.System.getInt(this.r, "child_mode_on", 0) == 1;
        this.t = Settings.System.getInt(this.r, "guest_mode_on", 0) == 1;
        this.n = (Button) findViewById(R.id.mode_switch);
        if (this.t) {
            this.n.setBackgroundResource(R.drawable.btn_on);
        } else {
            this.n.setBackgroundResource(R.drawable.btn_off);
        }
        if (this.u && Const.mDefaultPreference.getBoolean(Const.SWITCH_INJECT_SWITCH, true)) {
            this.n.setOnClickListener(this.w);
        }
        this.k.setVisibility(0);
        new Thread() {
            /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass6 */

            public final void run() {
                GuestModeSet.n(GuestModeSet.this);
                Message msg = new Message();
                msg.what = 0;
                GuestModeSet.this.v.sendMessage(msg);
            }
        }.start();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        TrackEvent.trackResume(this);
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
                holder.a.setImageDrawable(GuestModeSet.this.getResources().getDrawable(R.drawable.icon3));
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
        CustomDialog.Builder builder = new CustomDialog.Builder(this);
        builder.setTitle(R.string.info);
        if (this.t) {
            builder.setMessage(getString(R.string.close) + getString(R.string.guest_mode) + getString(R.string.hide_sms_info) + getString(R.string.hide_sms_info2));
        } else if (this.s) {
            builder.setMessage(getString(R.string.open) + getString(R.string.guest_mode) + getString(R.string.hide_sms_info3) + getString(R.string.hide_sms_info) + getString(R.string.hide_sms_info1));
        } else {
            builder.setMessage(getString(R.string.open) + getString(R.string.guest_mode) + getString(R.string.hide_sms_info) + getString(R.string.hide_sms_info1));
        }
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                GuestModeSet.this.a();
                new Thread() {
                    /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass2.AnonymousClass1 */

                    public final void run() {
                        if (GuestModeSet.this.t) {
                            if (SafeCenter.closeGuestMode(GuestModeSet.this, GuestModeSet.this.s, GuestModeSet.this.c)) {
                                GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(1));
                                return;
                            }
                            Settings.System.putInt(GuestModeSet.this.r, "guest_mode_on", 1);
                            GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(2));
                        } else if (SafeCenter.openGuestMode(GuestModeSet.this, GuestModeSet.this.s, GuestModeSet.this.c)) {
                            GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(1));
                        } else {
                            if (GuestModeSet.this.s) {
                                Settings.System.putInt(GuestModeSet.this.r, "child_mode_on", 1);
                            }
                            Settings.System.putInt(GuestModeSet.this.r, "guest_mode_on", 0);
                            GuestModeSet.this.v.sendMessage(GuestModeSet.this.v.obtainMessage(2));
                        }
                    }
                }.start();
            }
        });
        builder.setNegativeButton(R.string.no, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass3 */

            public final void onClick(DialogInterface dialog, int which) {
                GuestModeSet.this.n.setEnabled(true);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() {
            /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass4 */

            public final void onCancel(DialogInterface dialog) {
                GuestModeSet.this.n.setEnabled(true);
            }
        });
        builder.show();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a() {
        this.l = new ProgressDialog(this);
        this.l.setOnDismissListener(new DialogInterface.OnDismissListener() {
            /* class com.lenovo.safecenter.Laboratory.GuestModeSet.AnonymousClass5 */

            public final void onDismiss(DialogInterface dialog) {
                GuestModeSet.this.l = null;
            }
        });
        this.l.setProgressStyle(0);
        this.l.setMessage(getString(R.string.exec_state));
        this.l.show();
    }
}
