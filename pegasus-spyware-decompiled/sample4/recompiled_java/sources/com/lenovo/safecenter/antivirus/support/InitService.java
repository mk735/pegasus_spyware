package com.lenovo.safecenter.antivirus.support;

import android.app.Service;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class InitService extends Service {
    private Handler a = new Handler() {
        /* class com.lenovo.safecenter.antivirus.support.InitService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    InitService.this.getSharedPreferences("antivirus", 0).edit().putBoolean("hasInitialized", true).commit();
                    HttpUtils.isupdating = false;
                    InitService.this.stopSelf();
                    return;
                default:
                    return;
            }
        }
    };

    public IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x005e A[SYNTHETIC, Splitter:B:16:0x005e] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0063 A[SYNTHETIC, Splitter:B:19:0x0063] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x008a A[SYNTHETIC, Splitter:B:38:0x008a] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x008f A[SYNTHETIC, Splitter:B:41:0x008f] */
    /* JADX WARNING: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void init() {
        /*
        // Method dump skipped, instructions count: 162
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.antivirus.support.InitService.init():void");
    }

    public void initDatebase() {
        new Thread() {
            /* class com.lenovo.safecenter.antivirus.support.InitService.AnonymousClass2 */

            public final void run() {
                try {
                    InitService.this.init();
                    InitService.this.insertMd5_sha1();
                    HttpUtils.initVirusVersion(InitService.this);
                    Message mes = new Message();
                    mes.what = 1;
                    InitService.this.a.sendMessage(mes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public void insertMd5_sha1() {
        try {
            List<ApplicationInfo> list = AppUtils.getInstalledThirdApps(this);
            List<Appinfo> applist = new ArrayList<>();
            for (ApplicationInfo info : list) {
                String MD5 = AppUtils.getCretMD5(this, info.packageName);
                if (MD5 == null) {
                    MD5 = "preload";
                }
                String pName = info.packageName;
                applist.add(new Appinfo(pName, MD5, "preload", String.valueOf(new File(info.sourceDir).length()), info.loadLabel(getPackageManager()).toString()));
                Log.i("shal", "pName==" + pName + "MD5==" + MD5 + "Shai==" + "preload");
            }
            if (applist.size() > 0) {
                AntiVirusDBHelper antiVirus_DBHelper = new AntiVirusDBHelper(this);
                antiVirus_DBHelper.addApp(applist);
                antiVirus_DBHelper.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onStart(Intent intent, int startId) {
        Log.i("virus", "onStart");
        super.onStart(intent, startId);
        if (!getSharedPreferences("antivirus", 0).getBoolean("hasInitialized", false)) {
            initDatebase();
        } else {
            stopSelf();
        }
    }
}
