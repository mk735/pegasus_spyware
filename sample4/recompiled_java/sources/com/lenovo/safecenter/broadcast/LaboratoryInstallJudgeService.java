package com.lenovo.safecenter.broadcast;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.database.AppUtil;

public class LaboratoryInstallJudgeService extends Service {
    private String a;
    private SharedPreferences b;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        Log.i("ydp", "add app md5 service");
        super.onStart(intent, startId);
        this.a = intent.getExtras().getString(QueryPermissions.PACKAGENAME);
        this.b = getSharedPreferences("laboratory_otherakp", 3);
        new Thread() {
            /* class com.lenovo.safecenter.broadcast.LaboratoryInstallJudgeService.AnonymousClass1 */

            public final void run() {
                LaboratoryInstallJudgeService.this.init(LaboratoryInstallJudgeService.this.a);
            }
        }.start();
    }

    public void init(String pName) {
        try {
            if (AppUtil.getCretMD5(this, pName).equals("8DDB342F2DA5408402D7568AF21E29F9")) {
                this.b.edit().putBoolean(pName, true).commit();
            }
            stopSelf();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
