package com.lenovo.safecenter.broadcast;

import android.app.Service;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.IBinder;
import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.adapter.DaoImpl;
import com.lenovo.safecenter.adapter.DbAdapter;
import com.lenovo.safecenter.database.AppUtil;
import java.io.File;

public class SafePaymentInstallJudgeService extends Service {
    private String a;
    private String b;
    private DaoImpl c;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startId) {
        Log.i("ydp", "add app md5 service");
        super.onStart(intent, startId);
        this.a = intent.getExtras().getString(QueryPermissions.PACKAGENAME);
        this.c = new DaoImpl(new DbAdapter(getApplicationContext()));
        new Thread() {
            /* class com.lenovo.safecenter.broadcast.SafePaymentInstallJudgeService.AnonymousClass1 */

            public final void run() {
                SafePaymentInstallJudgeService.this.init(SafePaymentInstallJudgeService.this.a);
            }
        }.start();
    }

    public void init(String pName) {
        try {
            ApplicationInfo mAppInfo = getPackageManager().getApplicationInfo(pName, 8192);
            this.b = mAppInfo.loadLabel(getPackageManager()).toString();
            mAppInfo.loadIcon(getPackageManager());
            this.c.insterForUserApp(this.b, pName, AppUtil.getCretMD5(this, pName), String.valueOf(new File(mAppInfo.sourceDir).length()), "true", "true");
            stopSelf();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
