package com.lenovo.safecenter.broadcast;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.database.AppUtil;
import com.lenovo.safecenter.notificationintercept.InterceptUtils;
import com.lenovo.safecenter.notificationintercept.UrlOptionUtils;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.utils.Const;
import java.io.File;
import java.util.List;

public class CheckPermissionService extends Service {
    private Context a;
    private Intent b;

    /* JADX WARNING: Removed duplicated region for block: B:23:0x00e3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.lenovo.safecenter.broadcast.CheckPermissionService r8, android.content.Context r9) {
        /*
        // Method dump skipped, instructions count: 454
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.broadcast.CheckPermissionService.a(com.lenovo.safecenter.broadcast.CheckPermissionService, android.content.Context):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ea A[SYNTHETIC, Splitter:B:28:0x00ea] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00ef A[Catch:{ IOException -> 0x00f3 }] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00fc A[SYNTHETIC, Splitter:B:37:0x00fc] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0101 A[Catch:{ IOException -> 0x0105 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.lenovo.safecenter.broadcast.CheckPermissionService r6, android.content.Context r7, android.content.pm.PackageManager r8, java.lang.String r9, int r10, java.lang.String r11, android.content.pm.ApplicationInfo r12) {
        /*
        // Method dump skipped, instructions count: 349
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.broadcast.CheckPermissionService.a(com.lenovo.safecenter.broadcast.CheckPermissionService, android.content.Context, android.content.pm.PackageManager, java.lang.String, int, java.lang.String, android.content.pm.ApplicationInfo):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00be A[SYNTHETIC, Splitter:B:28:0x00be] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00c3 A[Catch:{ IOException -> 0x00c7 }] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00d0 A[SYNTHETIC, Splitter:B:37:0x00d0] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00d5 A[Catch:{ IOException -> 0x00d9 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.lenovo.safecenter.broadcast.CheckPermissionService r7, android.content.Context r8, boolean r9, int r10, java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 292
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.broadcast.CheckPermissionService.a(com.lenovo.safecenter.broadcast.CheckPermissionService, android.content.Context, boolean, int, java.lang.String):void");
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        try {
            super.onStart(intent, startId);
            this.a = this;
            this.b = intent;
            String type = this.b.getStringExtra("type");
            if (type.equals("init_app")) {
                new Thread() {
                    /* class com.lenovo.safecenter.broadcast.CheckPermissionService.AnonymousClass1 */

                    public final void run() {
                        CheckPermissionService.a(CheckPermissionService.this, CheckPermissionService.this.a);
                        if (UrlOptionUtils.isAppFirstInit(CheckPermissionService.this)) {
                            UrlOptionUtils.adSwitch(CheckPermissionService.this, true);
                            InterceptUtils.initWhiteListUid(CheckPermissionService.this.a, "");
                        }
                        CheckPermissionService.this.stopSelf();
                    }
                }.start();
            } else if (type.equals("add_app")) {
                new Thread() {
                    /* class com.lenovo.safecenter.broadcast.CheckPermissionService.AnonymousClass2 */

                    public final void run() {
                        int uid = CheckPermissionService.this.b.getIntExtra("uid", 0);
                        String pkgName = CheckPermissionService.this.b.getStringExtra(QueryPermissions.PACKAGENAME);
                        boolean replacing = CheckPermissionService.this.b.getBooleanExtra("replacing", false);
                        if (Const.PACKAGENAME_APP_LOCK.equals(pkgName)) {
                            Intent it = new Intent("com.lenovo.safebox.WATCH_APP_SERVICE");
                            it.putExtra("controler", false);
                            CheckPermissionService.this.a.startService(it);
                        }
                        try {
                            DaoImpl di = new DaoImpl(new DbAdapter(CheckPermissionService.this.a));
                            PackageManager pm = CheckPermissionService.this.a.getPackageManager();
                            ApplicationInfo mAppInfo = pm.getApplicationInfo(pkgName, 8192);
                            String app_name = mAppInfo.loadLabel(pm).toString();
                            mAppInfo.loadIcon(pm);
                            String md5 = AppUtil.getCretMD5(CheckPermissionService.this.a, pkgName);
                            Log.d("test", "md5: " + md5);
                            di.insterForUserApp(app_name, pkgName, md5, String.valueOf(new File(mAppInfo.sourceDir).length()), "true", "true");
                            if (!replacing) {
                                CheckPermissionService.a(CheckPermissionService.this, CheckPermissionService.this.a, pm, md5, uid, pkgName, mAppInfo);
                            }
                        } catch (PackageManager.NameNotFoundException e) {
                            e.printStackTrace();
                        }
                        CheckPermissionService.this.stopSelf();
                    }
                }.start();
            } else if (type.equals("del_app")) {
                new Thread() {
                    /* class com.lenovo.safecenter.broadcast.CheckPermissionService.AnonymousClass3 */

                    public final void run() {
                        int uid = CheckPermissionService.this.b.getIntExtra("uid", 0);
                        String pkgName = CheckPermissionService.this.b.getStringExtra(QueryPermissions.PACKAGENAME);
                        try {
                            CheckPermissionService.a(CheckPermissionService.this, CheckPermissionService.this.a, CheckPermissionService.this.b.getBooleanExtra("replacing", false), uid, pkgName);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        CheckPermissionService.this.stopSelf();
                    }
                }.start();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onDestroy() {
        super.onDestroy();
    }

    private static void a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> list;
        List<String> receiveSmsPkgs = new AppDatabase(context).getReceiveSmsPkgs();
        if (receiveSmsPkgs.size() > 0 && (list = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) != null) {
            String cmd = "";
            for (int i = 0; i < list.size(); i++) {
                if (receiveSmsPkgs.contains(list.get(i).pkgList[0])) {
                    cmd = cmd + "kill " + list.get(i).pid + " &\n";
                }
            }
            CMDHelper.exeCmd(context, cmd);
        }
    }
}
