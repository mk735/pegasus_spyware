package com.lenovo.safecenter.lenovoAntiSpam.support;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.lenovoAntiSpam.utils.HttpUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.updateLab.UpdateLabManager;

public class DownSysService extends Service {
    Handler a = new Handler() {
        /* class com.lenovo.safecenter.lenovoAntiSpam.support.DownSysService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    DownSysService.this.b = false;
                    DownSysService.this.setQueryIntent(1);
                    System.gc();
                    DownSysService.this.stopSelf();
                    return;
                case 2:
                    DownSysService.this.b = false;
                    DownSysService.this.setUpdateIntent(HttpUtils.execService("systime", DownSysService.this), 1, 2);
                    System.gc();
                    DownSysService.this.stopSelf();
                    return;
                default:
                    return;
            }
        }
    };
    private boolean b = false;

    public void onDestroy() {
        super.onDestroy();
        System.gc();
    }

    public void setQueryIntent(int status) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antispam.sysqueryresult");
        intent.putExtra("status", status);
        sendBroadcast(intent);
    }

    public void setUpdateIntent(String time, int status, int type) {
        Intent intent = new Intent();
        intent.setAction("com.lenovo.antispam.sysupdateresult");
        intent.putExtra("status", status);
        intent.putExtra("type", type);
        intent.putExtra(AppDatabase.TIME, time);
        sendBroadcast(intent);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        Log.i("downdata", "update...................." + this.b);
        if (intent != null && !TextUtils.isEmpty(intent.getAction())) {
            if (intent.getAction().equals(UpdateLabManager.ACTION_NOTICE_UPDATE_SYS_LAB)) {
                this.a.sendEmptyMessage(2);
            } else if (intent.getAction().equals(Const.ACTION_NOTICE_QUERY_SYS_LAB)) {
                this.a.sendEmptyMessage(1);
            }
        }
    }
}
