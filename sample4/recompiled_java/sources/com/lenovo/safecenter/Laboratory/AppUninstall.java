package com.lenovo.safecenter.Laboratory;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.IPackageManager;
import android.content.pm.IPackageMoveObserver;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StatFs;
import android.text.format.Formatter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.performancecenter.service.object.PolicyAppInfo;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class AppUninstall extends Activity {
    public static final int UNINSTALL_COMPLETE = 10;
    public static String[] md5s = {"5ABDF9B649C2B8AC6026B88313C3C332", "EBAA529685AAE3A1D299AC15F7710AEA", "B78A0EE7E80045B4F9A0C425703D0CA4", "388CF508552BC50ED26A8715D33312BA", "6B861FD954CE40EE4C560992DCCB35F0", "49FF2FEA9A214DCC2F7EF229488B1A54", "56B44C8B44C3A4064FE0667DC91E01AA", "CEA942B20A36347B3BF793BFF50F737D"};
    private ListView a;
    private List<AppInfo> b;
    private List<AppInfo> c;
    private List<AppInfo> d;
    private List<AppInfo> e;
    private b f;
    private ProgressBar g;
    private ProgressBar h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private CustomDialog.Builder m;
    private RelativeLayout n;
    private RelativeLayout o;
    private Map<String, String> p;
    private PackageDeleteObserver q;
    private c r;
    private String s;
    public List safePkgs;
    private a t;
    private boolean u = false;
    private Context v;
    private Handler w = new Handler() {
        /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    AppUninstall.this.f = new b();
                    AppUninstall.this.a.setAdapter((ListAdapter) AppUninstall.this.f);
                    AppUninstall.this.o.setVisibility(8);
                    AppUninstall.this.a.setVisibility(0);
                    return;
                case 2:
                    AppUninstall.this.s = ((AppInfo) msg.obj).name;
                    AppUninstall.a(AppUninstall.this, msg.arg1, (AppInfo) msg.obj, msg.arg2);
                    return;
                case 3:
                case 6:
                case 7:
                case 8:
                case 9:
                default:
                    return;
                case 4:
                    if (AppUninstall.this.h != null) {
                        if (AppUninstall.this.m.getDialog() != null) {
                            AppUninstall.this.m.getDialog().dismiss();
                        }
                        if (msg.arg1 == 1) {
                            Toast.makeText(AppUninstall.this, AppUninstall.this.s + AppUninstall.this.getString(R.string.movetosd_succeeded), 1).show();
                            return;
                        } else {
                            Toast.makeText(AppUninstall.this, AppUninstall.this.s + AppUninstall.this.getString(R.string.movetosd_failed), 1).show();
                            return;
                        }
                    } else {
                        return;
                    }
                case 5:
                    AppUninstall.this.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + ((String) msg.obj))));
                    return;
                case 10:
                    Log.i("ydp", "delthird over :" + msg.arg1);
                    if (AppUninstall.this.h != null) {
                        if (AppUninstall.this.m.getDialog() != null) {
                            AppUninstall.this.m.getDialog().dismiss();
                        }
                        switch (msg.arg1) {
                            case -2:
                                Toast.makeText(AppUninstall.this, AppUninstall.this.s + AppUninstall.this.getString(R.string.uninstall) + AppUninstall.this.getString(R.string.fail), 1).show();
                                return;
                            case -1:
                                Toast.makeText(AppUninstall.this, AppUninstall.this.s + AppUninstall.this.getString(R.string.uninstall) + AppUninstall.this.getString(R.string.fail), 1).show();
                                return;
                            case 0:
                            default:
                                return;
                            case 1:
                                Toast.makeText(AppUninstall.this, AppUninstall.this.s + AppUninstall.this.getString(R.string.uninstall) + AppUninstall.this.getString(R.string.success), 1).show();
                                return;
                        }
                    } else {
                        return;
                    }
            }
        }
    };

    static /* synthetic */ void a(AppUninstall x0, int x1, final AppInfo x2, int x3) {
        String string;
        String string2;
        if (x1 == 1) {
            new CustomDialog.Builder(x0).setTitle(R.string.info).setMessage(R.string.uninstall_system_sure).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass4 */

                public final void onClick(DialogInterface dialog, int which) {
                    View v = LayoutInflater.from(AppUninstall.this).inflate(R.layout.appmag_dialog, (ViewGroup) null);
                    AppUninstall.this.n = (RelativeLayout) v.findViewById(R.id.appmag_rl2);
                    AppUninstall.this.k = (TextView) v.findViewById(R.id.appmag_text_succeeded);
                    AppUninstall.this.h = (ProgressBar) v.findViewById(R.id.appmag_dialog_progressBar);
                    AppUninstall.this.j = (TextView) v.findViewById(R.id.appmag_dialog_textView_appname);
                    AppUninstall.this.j.setText(AppUninstall.this.getString(R.string.uninstalling) + x2.name);
                    AppUninstall.this.m = new CustomDialog.Builder(AppUninstall.this).setTitle(R.string.uninstall_more).setContentView(v).setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null);
                    CustomDialog cd = AppUninstall.this.m.show();
                    AppUninstall.this.m.setButtonVisible(false);
                    cd.setOnDismissListener(new DialogInterface.OnDismissListener() {
                        /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass4.AnonymousClass1 */

                        public final void onDismiss(DialogInterface dialog) {
                            AppUninstall.this.getLauncherApp();
                        }
                    });
                    cd.setOnKeyListener(new DialogInterface.OnKeyListener() {
                        /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass4.AnonymousClass2 */

                        public final boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                            if (keyCode != 4) {
                                return false;
                            }
                            Log.i("ydp", "dialog back " + event.getRepeatCount());
                            return true;
                        }
                    });
                    CMDHelper.delApp(AppUninstall.this, x2.packageName, AppUninstall.this.w);
                }
            }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).show();
        } else if (x1 == 2) {
            View inflate = LayoutInflater.from(x0).inflate(R.layout.appmag_dialog, (ViewGroup) null);
            x0.n = (RelativeLayout) inflate.findViewById(R.id.appmag_rl2);
            x0.k = (TextView) inflate.findViewById(R.id.appmag_text_succeeded);
            x0.h = (ProgressBar) inflate.findViewById(R.id.appmag_dialog_progressBar);
            x0.j = (TextView) inflate.findViewById(R.id.appmag_dialog_textView_appname);
            if (x3 == 1) {
                string = x0.getString(R.string.uninstalling);
                string2 = x0.getString(R.string.uninstall_more);
            } else {
                string = x0.getString(R.string.movetosd_);
                string2 = x0.getString(R.string.appmovetosd);
            }
            x0.j.setText(string + x2.name);
            x0.m = new CustomDialog.Builder(x0).setTitle(string2).setContentView(inflate).setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null);
            CustomDialog show = x0.m.show();
            x0.m.setButtonVisible(false);
            show.setOnDismissListener(new DialogInterface.OnDismissListener() {
                /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass5 */

                public final void onDismiss(DialogInterface dialog) {
                    AppUninstall.this.getLauncherApp();
                }
            });
            show.setOnKeyListener(new DialogInterface.OnKeyListener() {
                /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass6 */

                public final boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                    if (keyCode != 4) {
                        return false;
                    }
                    Log.i("ydp", "dialog back " + event.getRepeatCount());
                    return true;
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.appmanager_layout);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.uninstlal_title);
        ((ImageView) findViewById(R.id.title_back)).setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass1 */

            public final void onClick(View v) {
                AppUninstall.this.finish();
            }
        });
        this.v = this;
        this.u = TrafficStatsService.nacServerIsExist() || Const.isObtainRoot();
        this.l = (TextView) findViewById(R.id.show_root_info);
        this.a = (ListView) findViewById(R.id.appmag_listView);
        this.g = (ProgressBar) findViewById(R.id.appmag_progressBar);
        this.i = (TextView) findViewById(R.id.appmag_textview);
        this.o = (RelativeLayout) findViewById(R.id.loadrl);
        if (this.u) {
            this.l.setVisibility(8);
        }
        this.t = new a();
        a aVar = this.t;
        try {
            aVar.b = aVar.a.getInstallLocation();
        } catch (RemoteException e2) {
            Log.e("CanBeOnSdCardChecker", "Is Package Manager running?");
        }
        this.p = new HashMap();
        this.d = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.e = new ArrayList();
        this.safePkgs = new ArrayList();
        this.safePkgs.add("com.android.settings");
        this.safePkgs.add("com.android.camera");
        this.safePkgs.add("com.android.contacts");
        this.safePkgs.add("com.android.phone");
        this.safePkgs.add("com.android.mms");
        this.safePkgs.add("com.android.music");
        this.safePkgs.add(SafeHomePageBroadcast.BROWSER_PKG);
        this.safePkgs.add("com.android.gallery3d");
        this.safePkgs.add("com.android.deskclock");
        this.safePkgs.add("com.android.filebrowser");
        this.safePkgs.add(TrafficStatsService.PACKAGE_NAME);
        this.q = new PackageDeleteObserver();
        this.r = new c();
    }

    public void getLauncherApp() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        float blockSize = (float) statFs.getBlockSize();
        float blockCount = (float) statFs.getBlockCount();
        float availableBlocks = (float) statFs.getAvailableBlocks();
        this.g.setMax(100);
        int i2 = (int) ((availableBlocks / blockCount) * 100.0f);
        Log.i("ydp", "" + i2);
        Log.i("ydp", "" + (availableBlocks / blockCount));
        this.g.setProgress(100 - i2);
        String formatFileSize = Formatter.formatFileSize(this, (long) (blockCount * blockSize));
        Log.d("ydp", formatFileSize);
        String formatFileSize2 = Formatter.formatFileSize(this, (long) ((blockCount - availableBlocks) * blockSize));
        Log.d("ydp", formatFileSize2);
        this.i.setText(getString(R.string.storage_space) + formatFileSize2 + CookieSpec.PATH_DELIM + formatFileSize);
        this.a.setVisibility(8);
        this.o.setVisibility(0);
        new Thread() {
            /* class com.lenovo.safecenter.Laboratory.AppUninstall.AnonymousClass3 */

            public final void run() {
                AppUninstall.this.c.clear();
                AppUninstall.this.b.clear();
                AppUninstall.this.p.clear();
                PackageManager pm = AppUninstall.this.getPackageManager();
                Intent it = new Intent("android.intent.action.MAIN");
                it.addCategory("android.intent.category.LAUNCHER");
                for (ResolveInfo resolveInfo : pm.queryIntentActivities(it, 0)) {
                    try {
                        if (!resolveInfo.activityInfo.packageName.equals(AppUninstall.this.getPackageName()) && !AppUninstall.this.p.containsKey(resolveInfo.activityInfo.packageName)) {
                            AppUninstall.this.p.put(resolveInfo.activityInfo.packageName, "");
                            ApplicationInfo appInfo = pm.getApplicationInfo(resolveInfo.activityInfo.packageName, 0);
                            Log.i("ydp", "pkg:" + resolveInfo.activityInfo.packageName);
                            if (AppUninstall.this.isThirdpartApp(appInfo)) {
                                if ((appInfo.installLocation == 0 || appInfo.installLocation == 2) && (appInfo.flags & 262144) == 0) {
                                    a aVar = AppUninstall.this.t;
                                    if ((appInfo.flags & 262144) == 0 && (appInfo.flags & 536870912) == 0 && (appInfo.flags & 1) == 0 && appInfo.installLocation != 2 && appInfo.installLocation != 0 && appInfo.installLocation == -1) {
                                        int i = aVar.b;
                                    }
                                }
                                AppUninstall.this.c.add(new AppInfo(appInfo.uid, appInfo.loadLabel(AppUninstall.this.getPackageManager()).toString(), 0, appInfo.packageName, appInfo, "third", "", false));
                            } else {
                                int i2 = 0;
                                while (true) {
                                    if (i2 >= AppUninstall.md5s.length) {
                                        break;
                                    } else if (AppUtil.getCretMD5(AppUninstall.this, appInfo.packageName).equals(AppUninstall.md5s[i2])) {
                                        Log.i("ydp", "lenovo App:" + appInfo.loadLabel(pm).toString());
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                                Log.i("ydp", "i:" + i2);
                                if (i2 == AppUninstall.md5s.length && AppUninstall.this.safePkgs.indexOf(appInfo.packageName) == -1) {
                                    AppUninstall.this.b.add(new AppInfo(appInfo.uid, appInfo.loadLabel(AppUninstall.this.getPackageManager()).toString(), 0, appInfo.packageName, appInfo, PolicyAppInfo.APP_TYPE_SYSTEM, ""));
                                }
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        e.printStackTrace();
                    }
                }
                AppUninstall.this.d.clear();
                AppUninstall.this.d.add(null);
                AppUninstall.this.d.addAll(AppUninstall.this.b);
                AppUninstall.this.d.add(null);
                AppUninstall.this.d.addAll(AppUninstall.this.c);
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                AppUninstall.this.w.sendEmptyMessage(1);
            }
        }.start();
    }

    public boolean isThirdpartApp(ApplicationInfo appInfo) {
        if ((appInfo.flags & 128) == 0 && (appInfo.flags & 1) != 0) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public class b extends BaseAdapter {
        PackageManager a;
        LayoutInflater b;
        d c;
        private List<Boolean> e = new ArrayList();

        public b() {
            this.a = AppUninstall.this.getPackageManager();
            this.b = LayoutInflater.from(AppUninstall.this);
            for (int i = 0; i < AppUninstall.this.d.size(); i++) {
                this.e.add(false);
            }
        }

        public final int getCount() {
            Log.i("ydp", "appsize" + AppUninstall.this.d.size());
            return AppUninstall.this.d.size();
        }

        public final Object getItem(int position) {
            return AppUninstall.this.d.get(position);
        }

        public final long getItemId(int position) {
            return (long) position;
        }

        public final View getView(final int position, View convertView, ViewGroup parent) {
            if (this.b == null) {
                this.b = LayoutInflater.from(AppUninstall.this);
            }
            if (AppUninstall.this.d.get(position) == null) {
                TextView tv = (TextView) this.b.inflate(R.layout.appitem_text, (ViewGroup) null);
                if (position == 0) {
                    tv.setText(AppUninstall.this.getString(R.string.system_app) + "(" + AppUninstall.this.b.size() + ")");
                    return tv;
                }
                tv.setText(AppUninstall.this.getString(R.string.other_app) + "(" + AppUninstall.this.c.size() + ")");
                return tv;
            }
            this.c = null;
            if (convertView == null) {
                convertView = this.b.inflate(R.layout.appitem, (ViewGroup) null);
                this.c = new d();
                this.c.a = (ImageView) convertView.findViewById(R.id.appmag_icon);
                this.c.b = (TextView) convertView.findViewById(R.id.appname);
                this.c.c = (TextView) convertView.findViewById(R.id.appmag_button);
                this.c.d = (TextView) convertView.findViewById(R.id.appmove_button);
                convertView.setTag(this.c);
            } else {
                this.c = (d) convertView.getTag();
                if (this.c == null) {
                    convertView = this.b.inflate(R.layout.appitem, (ViewGroup) null);
                    this.c = new d();
                    this.c.a = (ImageView) convertView.findViewById(R.id.appmag_icon);
                    this.c.b = (TextView) convertView.findViewById(R.id.appname);
                    this.c.c = (TextView) convertView.findViewById(R.id.appmag_button);
                    this.c.d = (TextView) convertView.findViewById(R.id.appmove_button);
                    convertView.setTag(this.c);
                }
            }
            this.c.b.setText(((AppInfo) AppUninstall.this.d.get(position)).name);
            this.c.a.setImageDrawable(((AppInfo) AppUninstall.this.d.get(position)).applicationInfo.loadIcon(this.a));
            if (((AppInfo) AppUninstall.this.d.get(position)).appType.equals("third")) {
                this.c.c.setText(R.string.uninstall);
                if (((AppInfo) AppUninstall.this.d.get(position)).movetoSDcrad) {
                    this.e.add(position, true);
                } else {
                    this.e.add(position, false);
                }
            } else if (((AppInfo) AppUninstall.this.d.get(position)).appType.equals(PolicyAppInfo.APP_TYPE_SYSTEM)) {
                this.c.c.setText(R.string.powerfull_uninstall);
                this.e.add(position, false);
            }
            this.c.d.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.Laboratory.AppUninstall.b.AnonymousClass1 */

                public final void onClick(View v) {
                    AppUninstall.showInstalledAppDetails(AppUninstall.this, ((AppInfo) AppUninstall.this.d.get(position)).packageName);
                }
            });
            if (this.e.get(position).booleanValue()) {
                this.c.d.setText(R.string.movetosd);
                this.c.d.setVisibility(0);
            } else {
                this.c.d.setVisibility(8);
            }
            this.c.c.setOnClickListener(new View.OnClickListener() {
                /* class com.lenovo.safecenter.Laboratory.AppUninstall.b.AnonymousClass2 */

                public final void onClick(View v) {
                    if (((AppInfo) AppUninstall.this.d.get(position)).appType.equals("third")) {
                        new Thread() {
                            /* class com.lenovo.safecenter.Laboratory.AppUninstall.b.AnonymousClass2.AnonymousClass1 */

                            public final void run() {
                                if (AppUninstall.this.u) {
                                    CMDHelper.unInstall(AppUninstall.this.v, ((AppInfo) AppUninstall.this.d.get(position)).packageName, AppUninstall.this.w);
                                    Message msg = new Message();
                                    msg.obj = AppUninstall.this.d.get(position);
                                    msg.arg1 = 2;
                                    msg.what = 2;
                                    msg.arg2 = 1;
                                    AppUninstall.this.w.sendMessage(msg);
                                    return;
                                }
                                AppUninstall.this.w.sendMessage(AppUninstall.this.w.obtainMessage(5, ((AppInfo) AppUninstall.this.d.get(position)).packageName));
                            }
                        }.start();
                    } else if (!((AppInfo) AppUninstall.this.d.get(position)).appType.equals(PolicyAppInfo.APP_TYPE_SYSTEM)) {
                    } else {
                        if (AppUninstall.this.u) {
                            new Thread() {
                                /* class com.lenovo.safecenter.Laboratory.AppUninstall.b.AnonymousClass2.AnonymousClass2 */

                                public final void run() {
                                    Message msg = new Message();
                                    msg.obj = AppUninstall.this.d.get(position);
                                    msg.arg1 = 1;
                                    msg.what = 2;
                                    msg.arg2 = 1;
                                    AppUninstall.this.w.sendMessage(msg);
                                }
                            }.start();
                        } else {
                            Toast.makeText(AppUninstall.this.v, (int) R.string.not_root_uninstall_toast, 1).show();
                        }
                    }
                }
            });
            return convertView;
        }
    }

    class d {
        ImageView a;
        TextView b;
        TextView c;
        TextView d;

        d() {
        }
    }

    public static void showInstalledAppDetails(Context context, String packageName) {
        Intent intent = new Intent();
        int apiLevel = Build.VERSION.SDK_INT;
        if (apiLevel >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", packageName, null));
        } else {
            String appPkgName = apiLevel == 8 ? "pkg" : "com.android.settings.ApplicationPkgName";
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra(appPkgName, packageName);
        }
        context.startActivity(intent);
    }

    public class PackageDeleteObserver extends IPackageDeleteObserver.Stub {
        public PackageDeleteObserver() {
        }

        public void packageDeleted(String packageName, int returnCode) {
            Message msg = AppUninstall.this.w.obtainMessage(10);
            msg.arg1 = returnCode;
            msg.obj = packageName;
            AppUninstall.this.w.sendMessage(msg);
        }

        @Override // android.content.pm.IPackageDeleteObserver
        public void packageDeleted(boolean succeeded) {
            Message msg = AppUninstall.this.w.obtainMessage(10);
            msg.arg1 = succeeded ? 1 : 0;
            AppUninstall.this.w.sendMessage(msg);
        }

        @Override // android.os.Binder, android.content.pm.IPackageDeleteObserver.Stub
        public boolean onTransact(int arg0, Parcel arg1, Parcel arg2, int arg3) throws RemoteException {
            try {
                return super.onTransact(arg0, arg1, arg2, arg3);
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    class c extends IPackageMoveObserver.Stub {
        c() {
        }

        @Override // android.content.pm.IPackageMoveObserver
        public final void packageMoved(String packageName, int returnCode) throws RemoteException {
            Message msg = AppUninstall.this.w.obtainMessage(4);
            msg.arg1 = returnCode;
            AppUninstall.this.w.sendMessage(msg);
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        TrackEvent.trackResume(this);
        getLauncherApp();
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        if (!(this.m == null || this.m.getDialog() == null || !this.m.getDialog().isShowing())) {
            this.m.getDialog().dismiss();
        }
        super.onPause();
    }

    /* access modifiers changed from: package-private */
    public final class a {
        final IPackageManager a = IPackageManager.Stub.asInterface(ServiceManager.getService("package"));
        int b;

        a() {
        }
    }
}
