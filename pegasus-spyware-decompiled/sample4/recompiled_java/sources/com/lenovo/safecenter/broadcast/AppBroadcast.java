package com.lenovo.safecenter.broadcast;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.framework.DataLayerManager;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.Laboratory.MyProcessObserver;
import com.lenovo.safecenter.net.support.TrafficStatsService;

public class AppBroadcast extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
            Log.i("test", "AppBroadcast app added");
            String pkgName = intent.getDataString().split(c.N)[1];
            if (!TrafficStatsService.PACKAGE_NAME.equals(pkgName)) {
                int uid = intent.getExtras().getInt("android.intent.extra.UID");
                boolean replacing = intent.getExtras().getBoolean("android.intent.extra.REPLACING");
                Log.d("test", "addapp uid: " + uid + ", raplcing: " + replacing);
                Intent it = new Intent(context, CheckPermissionService.class);
                it.putExtra("type", "add_app");
                it.putExtra(QueryPermissions.PACKAGENAME, pkgName);
                it.putExtra("uid", uid);
                it.putExtra("replacing", replacing);
                context.startService(it);
                if (!replacing) {
                    DataLayerManager.insertApplicationInfo(context, pkgName);
                }
            } else {
                return;
            }
        }
        if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
            Log.i("test", "AppBroadcast app removed");
            String pkgName2 = intent.getDataString().split(c.N)[1];
            if (Build.VERSION.SDK_INT >= 14 && pkgName2.equals(MyProcessObserver.NOTIFY_PKGNAME)) {
                ((NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION)).cancel(MyProcessObserver.SAFEPAYMENT_NOTIFY_ID);
            }
            if (!TrafficStatsService.PACKAGE_NAME.equals(pkgName2)) {
                int uid2 = intent.getExtras().getInt("android.intent.extra.UID");
                boolean replacing2 = intent.getExtras().getBoolean("android.intent.extra.REPLACING");
                Log.d("test", "removeapp uid: " + uid2 + ", raplcing: " + replacing2);
                Intent it2 = new Intent(context, CheckPermissionService.class);
                it2.putExtra("type", "del_app");
                it2.putExtra(QueryPermissions.PACKAGENAME, pkgName2);
                it2.putExtra("uid", uid2);
                it2.putExtra("replacing", replacing2);
                context.startService(it2);
                if (!replacing2) {
                    DataLayerManager.removeBootCom(context, pkgName2);
                }
            }
        }
    }
}
