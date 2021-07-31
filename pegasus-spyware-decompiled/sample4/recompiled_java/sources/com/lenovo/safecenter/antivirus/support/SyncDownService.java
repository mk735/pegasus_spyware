package com.lenovo.safecenter.antivirus.support;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.VirusDemo;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.utils.ScanUtils;
import com.lenovo.safecenter.antivirus.views.ScanVirusActivity;
import com.lenovo.safecenter.lenovoAntiSpam.newview.ShowConfirm;
import com.lenovo.safecenter.utils.Untils;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.utils.Log;
import java.util.List;

public class SyncDownService extends Service {
    private Handler a = new Handler() {
        /* class com.lenovo.safecenter.antivirus.support.SyncDownService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    SyncDownService.this.stopSelf();
                    return;
                case 2:
                    SyncDownService.a(SyncDownService.this);
                    SyncDownService.this.stopSelf();
                    return;
                default:
                    return;
            }
        }
    };

    static /* synthetic */ void a(SyncDownService x0) {
        HttpUtils.UpdateConfig("virusnetshowtime", String.valueOf(System.currentTimeMillis()), x0);
        Intent intent = new Intent(x0, ShowConfirm.class);
        intent.addFlags(335544320);
        intent.putExtra("from", "cloudscan");
        intent.putExtra("count", HttpUtils.execService("virusnetadd", x0));
        x0.startActivity(intent);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        new Thread() {
            /* class com.lenovo.safecenter.antivirus.support.SyncDownService.AnonymousClass2 */

            public final void run() {
                boolean z = true;
                try {
                    if (!WflUtils.isWifiNetwork(SyncDownService.this) || PreferenceManager.getDefaultSharedPreferences(SyncDownService.this).getInt("netScan_switch", 1) != 1) {
                        try {
                            if (PreferenceManager.getDefaultSharedPreferences(SyncDownService.this).getInt("netScan_weekservice", 1) == 1) {
                                HttpUtils.sendGETRequest_virus(SyncDownService.this);
                                Log.i("autoscan", HttpUtils.execService("virusnetadd", SyncDownService.this) + "===" + HttpUtils.execService("virusnetshowtime", SyncDownService.this) + ">>>>");
                                if ((TextUtils.isEmpty(HttpUtils.execService("virusnetshowtime", SyncDownService.this)) || !HttpUtils.isSameDate(Long.valueOf(Long.parseLong(HttpUtils.execService("virusnetshowtime", SyncDownService.this))), Long.valueOf(System.currentTimeMillis()))) && !TextUtils.isEmpty(HttpUtils.execService("virusnetadd", SyncDownService.this)) && !HttpUtils.execService("virusnetadd", SyncDownService.this).equals("0")) {
                                    SyncDownService.this.a.sendEmptyMessage(2);
                                    StringBuilder append = new StringBuilder().append(HttpUtils.execService("virusnetadd", SyncDownService.this)).append("===").append(HttpUtils.execService("virusnetshowtime", SyncDownService.this)).append(">>>>");
                                    if (HttpUtils.isSameDate(Long.valueOf(Long.parseLong(HttpUtils.execService("virusnetshowtime", SyncDownService.this))), Long.valueOf(System.currentTimeMillis()))) {
                                        z = false;
                                    }
                                    Log.i("autoscan", append.append(z).toString());
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } else {
                        try {
                            List<VirusDemo> list_v = new ScanUtils().cloudScanGlobal(AppUtils.getAppSInfo(SyncDownService.this), SyncDownService.this);
                            AppUtils.execNetResult(list_v, SyncDownService.this);
                            HttpUtils.UpdateConfig("scantime", String.valueOf(System.currentTimeMillis()), SyncDownService.this);
                            if (list_v == null || list_v.size() <= 0) {
                                SyncDownService.showSafeNotification(SyncDownService.this, SyncDownService.this.getString(R.string.vir_cloud_title));
                            } else {
                                SyncDownService.this.notifyVirus(SyncDownService.this);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    Message mes = new Message();
                    mes.what = 1;
                    SyncDownService.this.a.sendMessage(mes);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }.start();
    }

    public void notifyVirus(Context context) {
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
            ((NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION)).notify(554, mNotification);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void showSafeNotification(Context context, String desc) {
        Notification mNotification = new Notification();
        mNotification.flags = 16;
        mNotification.defaults = 1;
        mNotification.when = System.currentTimeMillis();
        mNotification.tickerText = desc;
        mNotification.icon = R.drawable.safe_icon;
        mNotification.setLatestEventInfo(context, context.getString(R.string.vir_cloud_nottitle), context.getString(R.string.vir_cloud_content), PendingIntent.getActivity(context, 0, new Intent(), 0));
        ((NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION)).notify(555, mNotification);
    }
}
