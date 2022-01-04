package com.lenovo.safecenter.antivirus.support;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.views.ScanVirusActivity;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.Untils;
import java.util.ArrayList;
import java.util.List;

public class AppBroadcast extends BroadcastReceiver {
    AntiVirusDBHelper a;
    private NotificationManager b;

    /* JADX INFO: Multiple debug info for r9v2 java.util.Iterator<java.lang.String>: [D('i$' java.util.Iterator), D('i$' int)] */
    public void onReceive(Context context, Intent intent) {
        this.b = (NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION);
        if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
            Log.d(QueryPermissions.PACKAGENAME, intent.getAction());
            String pkgName = intent.getDataString().split(c.N)[1];
            Log.i(QueryPermissions.PACKAGENAME, "+++" + pkgName);
            boolean isThrid = true;
            try {
                isThrid = AppUtils.isThirdpartApp(context.getPackageManager().getPackageInfo(pkgName, 8192).applicationInfo);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (isThrid) {
                Intent service = new Intent(context, installJudgeService.class);
                service.putExtra(QueryPermissions.PACKAGENAME, pkgName);
                context.startService(service);
            }
        }
        if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
            this.a = new AntiVirusDBHelper(context);
            String pkgName2 = intent.getDataString().split(c.N)[1];
            String viruspkgnamelist = HttpUtils.execService("viruspkgname", context);
            if (!viruspkgnamelist.equals("")) {
                String[] strs = viruspkgnamelist.split(",");
                List<String> list = new ArrayList<>();
                for (String str1 : strs) {
                    list.add(str1);
                }
                boolean bool = false;
                int i = list.size() - 1;
                while (true) {
                    if (i < 0) {
                        break;
                    } else if (list.get(i).equals(pkgName2)) {
                        list.remove(i);
                        bool = true;
                        String desc = context.getString(R.string.antiviruslogdesc6);
                        Appinfo aInfo = this.a.getAppInfo(pkgName2);
                        if (aInfo != null) {
                            this.a.insertLog(String.format(desc, aInfo.getAppname()), String.valueOf(System.currentTimeMillis()), "0");
                        }
                    } else {
                        i--;
                    }
                }
                if (list.size() > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (String str : list) {
                        sb.append(str).append(Untils.PAUSE);
                    }
                    HttpUtils.UpdateConfig("viruspkgname", sb.deleteCharAt(sb.length() - 1).toString(), context);
                    if (Settings.System.getInt(context.getContentResolver(), "isRealtimeProtectOpen", 1) == 1) {
                        notifyVirus(context, sb.deleteCharAt(sb.length() - 1).toString());
                    }
                } else {
                    HttpUtils.UpdateConfig("viruspkgname", "", context);
                    HttpUtils.hasVirus = false;
                    this.b.cancel(554);
                }
                if (bool) {
                    LeSafeObservable.get(context).noticeKilledVirus();
                }
            }
            HttpUtils.removeConfig(AppUtils.getVirusDescKey(pkgName2), context);
        }
        "android.intent.action.PACKAGE_REPLACED".equals(intent.getAction());
    }

    public void notifyVirus(Context context, String sb_virus) {
        try {
            PackageManager pm = context.getPackageManager();
            String[] virus_pkgname_split = HttpUtils.execService("viruspkgname", context).split(",");
            StringBuilder sb = new StringBuilder();
            for (String str : virus_pkgname_split) {
                sb.append(pm.getApplicationInfo(str, 8192).loadLabel(pm)).append(Untils.PAUSE);
            }
            Intent showVirus = new Intent(context, ScanVirusActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("fromnotify", "notify");
            showVirus.putExtras(bundle);
            showVirus.setFlags(536870912);
            PendingIntent intent = PendingIntent.getActivity(context, 0, showVirus, 0);
            Notification mNotification = new Notification(R.drawable.antiviruswarning, context.getString(R.string.antivirusvirus_notify), System.currentTimeMillis());
            mNotification.flags = 10;
            mNotification.setLatestEventInfo(context, context.getString(R.string.antivirusvirus_notify), String.format(context.getString(R.string.antivirusvirus_notifycontent), sb.deleteCharAt(sb.length() - 1).toString()), intent);
            this.b.notify(554, mNotification);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
