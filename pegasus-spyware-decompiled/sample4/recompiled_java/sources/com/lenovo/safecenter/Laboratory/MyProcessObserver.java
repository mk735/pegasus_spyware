package com.lenovo.safecenter.Laboratory;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.broadcast.SafePaymenUninstallService;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.support.SafePaymentApp;
import com.lenovo.safecenter.utils.AppCheck;
import com.lenovo.safecenter.utils.Const;
import java.io.File;
import java.util.HashMap;

public class MyProcessObserver {
    public static String NOTIFY_PKGNAME = "";
    public static final int SAFEPAYMENT_NOTIFY_ID = 888;
    private static MyProcessObserver e;
    private static BroadcastReceiver k = null;
    SharedPreferences a;
    NotificationManager b;
    private Context c;
    private PackageManager d;
    private DaoImpl f;
    private SafePaymentApp g;
    private SafePaymentApp h;
    private HashMap<String, Boolean> i;
    private String j = "";
    private Handler l = new Handler() {
        /* class com.lenovo.safecenter.Laboratory.MyProcessObserver.AnonymousClass3 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    Log.e("ydp", "handler ok");
                    MyProcessObserver.this.showNotify(true, "", "");
                    return;
                case 2:
                    Log.e("ydp", "handler no");
                    Intent intent = new Intent(MyProcessObserver.this.c, SafePaymentDialogActivity.class);
                    String[] strs = (String[]) msg.obj;
                    intent.putExtra("pkgName", strs[0]);
                    intent.putExtra("safeAppName", strs[1]);
                    intent.setFlags(335577088);
                    MyProcessObserver.this.c.startActivity(intent);
                    MyProcessObserver.this.showNotify(false, strs[1], strs[0]);
                    return;
                case 3:
                    Notification notification = new Notification();
                    RemoteViews rv = new RemoteViews(MyProcessObserver.this.c.getPackageName(), (int) R.layout.safepayment_notify);
                    notification.flags = 10;
                    notification.icon = R.drawable.safepayment_notify_genuine_state;
                    notification.tickerText = MyProcessObserver.this.c.getString(R.string.safepayment_notify_out_tickertext_genuine) + msg.obj;
                    rv.setTextViewText(R.id.content, MyProcessObserver.this.c.getString(R.string.safepayment_notify_content_genuine));
                    notification.contentView = rv;
                    notification.contentIntent = PendingIntent.getService(MyProcessObserver.this.c, 0, new Intent(), 0);
                    MyProcessObserver.this.b.notify(MyProcessObserver.SAFEPAYMENT_NOTIFY_ID, notification);
                    MyProcessObserver.this.b.cancel(MyProcessObserver.SAFEPAYMENT_NOTIFY_ID);
                    return;
                case 4:
                    String[] pkgAndAppName = (String[]) msg.obj;
                    Notification notification2 = new Notification();
                    RemoteViews rv2 = new RemoteViews(MyProcessObserver.this.c.getPackageName(), (int) R.layout.safepayment_notify);
                    notification2.flags = 24;
                    notification2.icon = R.drawable.safepayment_notify_pirate_state;
                    notification2.tickerText = MyProcessObserver.this.c.getString(R.string.safepayment_notify_out_tickertext_pirate);
                    rv2.setTextViewText(R.id.content, String.format(MyProcessObserver.this.c.getString(R.string.safepayment_notify_content_pirate), pkgAndAppName[1]));
                    notification2.contentView = rv2;
                    MyProcessObserver.NOTIFY_PKGNAME = pkgAndAppName[0];
                    Intent uninstallService = new Intent(MyProcessObserver.this.c, SafePaymenUninstallService.class);
                    uninstallService.setFlags(268435456);
                    uninstallService.putExtra("pkgName", pkgAndAppName[0]);
                    notification2.contentIntent = PendingIntent.getService(MyProcessObserver.this.c, 0, uninstallService, 0);
                    MyProcessObserver.this.b.notify(MyProcessObserver.SAFEPAYMENT_NOTIFY_ID, notification2);
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(MyProcessObserver x0, String x1) {
        try {
            Log.e("ydp", "insterApp pkgName:" + x1);
            ApplicationInfo applicationInfo = x0.c.getPackageManager().getApplicationInfo(x1, 8192);
            String obj = applicationInfo.loadLabel(x0.c.getPackageManager()).toString();
            applicationInfo.loadIcon(x0.c.getPackageManager());
            x0.f.insterForUserApp(obj, x1, AppUtil.getCretMD5(x0.c, x1), String.valueOf(new File(applicationInfo.sourceDir).length()), "true", "true");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    static /* synthetic */ void a(MyProcessObserver x0, String x1, String x2) {
        Log.e("ydp", "checkApp pkgName:" + x1);
        x0.g = x0.f.queryByPackageNameForSafeApp(x1);
        if (x0.g != null) {
            Log.e("ydp", "checkApp --pkgName-- pkgName:" + x1);
            x0.a(x1, x2);
            return;
        }
        x0.clearNotify(x1, x2);
    }

    public static MyProcessObserver getDefault(Context context) {
        if (e == null) {
            e = new MyProcessObserver(context);
        }
        return e;
    }

    public MyProcessObserver(Context context) {
        this.c = context;
        this.d = context.getPackageManager();
        this.b = (NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION);
        this.f = new DaoImpl(new DbAdapter(context));
        this.a = PreferenceManager.getDefaultSharedPreferences(context);
        this.i = new HashMap<>();
        k = new BroadcastReceiver() {
            /* class com.lenovo.safecenter.Laboratory.MyProcessObserver.AnonymousClass1 */

            public final void onReceive(Context context, Intent intent) {
                String newPkg = intent.getStringExtra("newPkg");
                String oldPkg = intent.getStringExtra("oldPkg");
                if (!TextUtils.isEmpty(newPkg)) {
                    Log.i("ydp", "pkg---->" + newPkg);
                    MyProcessObserver.a(MyProcessObserver.this, newPkg, oldPkg);
                }
            }
        };
    }

    public boolean register() {
        try {
            this.a.edit().putBoolean(Const.KEY_IS_SAFEPAYMEN_ON, true).commit();
            this.c.registerReceiver(k, new IntentFilter(AppCheck.ACTION_ACTIVITY_SWITCH_2));
            return true;
        } catch (Exception e2) {
            Log.e("ydp", "registerProcessObserver error:" + e2);
            return false;
        }
    }

    public boolean unRegister() {
        try {
            this.a.edit().putBoolean(Const.KEY_IS_SAFEPAYMEN_ON, false).commit();
            this.c.unregisterReceiver(k);
            return true;
        } catch (Exception e2) {
            Log.e("ydp", "unregisterProcessObserver error:" + e2);
            return false;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(final String pkgName, final String clearPkgName) {
        try {
            this.h = this.f.queryByPackageNameForUserApp(pkgName);
            if (this.h == null) {
                if (this.i.get(pkgName) == null) {
                    this.i.put(pkgName, true);
                    new Thread() {
                        /* class com.lenovo.safecenter.Laboratory.MyProcessObserver.AnonymousClass2 */

                        public final void run() {
                            Log.e("ydp", "insterApp ---:" + pkgName);
                            MyProcessObserver.a(MyProcessObserver.this, pkgName);
                            MyProcessObserver.this.a((MyProcessObserver) pkgName, clearPkgName);
                        }
                    }.start();
                }
            } else if (this.g.getApp_md5().contains(this.h.getApp_md5())) {
                this.j = this.h.getApp_packagename();
                this.l.sendMessage(this.l.obtainMessage(1));
            } else if (!clearPkgName.equals(this.c.getPackageName())) {
                Message m = new Message();
                m.obj = new String[]{pkgName, this.g.getApp_name()};
                m.what = 2;
                this.l.sendMessage(m);
            }
        } catch (Exception e2) {
        }
    }

    public void showNotify(boolean genuine, String appName, String pkgName) {
        Notification notification = new Notification();
        RemoteViews rv = new RemoteViews(this.c.getPackageName(), (int) R.layout.safepayment_notify);
        if (genuine) {
            notification.flags = 10;
            notification.icon = R.drawable.safepayment_notify_genuine_state;
            notification.tickerText = this.c.getString(R.string.safepayment_notify_tickertext_genuine);
            notification.contentIntent = PendingIntent.getService(this.c, 0, new Intent(), 0);
            rv.setTextViewText(R.id.content, this.c.getString(R.string.safepayment_notify_content_genuine));
            rv.setTextColor(R.id.content, this.c.getResources().getColor(R.color.black1));
        } else {
            notification.flags = 24;
            notification.icon = R.drawable.safepayment_notify_pirate_state;
            notification.tickerText = this.c.getString(R.string.safepayment_notify_tickertext_pirate);
            rv.setTextViewText(R.id.content, String.format(this.c.getString(R.string.safepayment_notify_content_pirate), appName));
            rv.setTextColor(R.id.content, this.c.getResources().getColor(R.color.red));
            Intent uninstallService = new Intent(this.c, SafePaymenUninstallService.class);
            uninstallService.setFlags(268435456);
            uninstallService.putExtra("pkgName", pkgName);
            NOTIFY_PKGNAME = pkgName;
            notification.contentIntent = PendingIntent.getService(this.c, 0, uninstallService, 0);
        }
        notification.contentView = rv;
        this.b.notify(SAFEPAYMENT_NOTIFY_ID, notification);
    }

    public void clearNotify(String PkgName, String clearPkgName) {
        Log.i("safepaymen", "clearNotify Pkg:" + clearPkgName);
        this.g = this.f.queryByPackageNameForSafeApp(clearPkgName);
        if (this.g != null) {
            b(PkgName, clearPkgName);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void b(final String PkgName, final String clearPkgName) {
        Log.i("safepaymen", "clearNotifyCheckMD5 Pkg:" + clearPkgName);
        this.h = this.f.queryByPackageNameForUserApp(clearPkgName);
        if (this.h != null) {
            if (this.g.getApp_md5().contains(this.h.getApp_md5())) {
                Log.i("safepaymen", "clearNotify 3" + clearPkgName);
                Message m = new Message();
                m.obj = "";
                try {
                    m.obj = this.d.getPackageInfo(this.h.getApp_packagename(), 1).applicationInfo.loadLabel(this.d).toString();
                } catch (PackageManager.NameNotFoundException e2) {
                    e2.printStackTrace();
                }
                m.what = 3;
                this.l.sendMessage(m);
            } else {
                Log.i("safepaymen", "clearNotify 4" + clearPkgName);
                if (!PkgName.equals("com.android.packageinstaller") && !PkgName.equals(this.c.getPackageName())) {
                    Message m2 = new Message();
                    m2.obj = new String[]{clearPkgName, this.g.getApp_name()};
                    m2.what = 4;
                    this.l.sendMessage(m2);
                }
            }
            this.j = "";
        } else if (this.i.get(clearPkgName) == null) {
            this.i.put(clearPkgName, true);
            new Thread() {
                /* class com.lenovo.safecenter.Laboratory.MyProcessObserver.AnonymousClass4 */

                public final void run() {
                    MyProcessObserver.a(MyProcessObserver.this, clearPkgName);
                    MyProcessObserver.this.b(PkgName, clearPkgName);
                }
            }.start();
        }
    }
}
