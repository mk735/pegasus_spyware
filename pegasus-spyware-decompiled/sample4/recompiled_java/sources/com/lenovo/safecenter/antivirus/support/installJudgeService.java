package com.lenovo.safecenter.antivirus.support;

import android.app.Service;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.provider.Settings;
import com.lenovo.lps.sus.c.c;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.utils.SHA1Util;
import com.lenovo.safecenter.antivirus.views.NotiSMSActivity;
import com.lenovo.safecenter.notificationintercept.InterceptUtils;
import com.lenovo.safecenter.support.SecurityService;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.MyUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.io.File;
import java.util.ArrayList;

public class installJudgeService extends Service {
    AntiVirusDBHelper a;
    private String b;
    private QScannerManager c;
    private Handler d = new Handler() {
        /* class com.lenovo.safecenter.antivirus.support.installJudgeService.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    try {
                        QScanResultEntity result_safe = (QScanResultEntity) msg.obj;
                        String desc = installJudgeService.this.getResources().getString(R.string.antiviruslogdesc1);
                        installJudgeService.this.a.insertLog(String.format(desc, result_safe.softName), String.valueOf(System.currentTimeMillis()), "0");
                        HttpUtils.isInstall = false;
                        installJudgeService.this.d.sendEmptyMessageAtTime(6, 2000);
                        InterceptUtils.initWhiteListUid(installJudgeService.this, result_safe.packageName);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 2:
                    String desc2 = installJudgeService.this.getResources().getString(R.string.antiviruslogdesc2);
                    QScanResultEntity result = (QScanResultEntity) msg.obj;
                    installJudgeService.this.a.insertLog(String.format(desc2, result.softName), String.valueOf(System.currentTimeMillis()), DatabaseTables.SYSTEM_MARK);
                    Intent intent = new Intent(installJudgeService.this, NotiSMSActivity.class);
                    intent.addFlags(335544320);
                    intent.putExtra("packageName", result.packageName);
                    intent.putExtra(DatabaseTables.LOG_MESSAGE, result.discription);
                    intent.putExtra("virusname", result.name);
                    intent.putExtra("virustype", DatabaseTables.USER_MARK);
                    if (!HttpUtils.isInstall) {
                        installJudgeService.this.startActivity(intent);
                    } else {
                        installJudgeService.this.initVirus(result.packageName, result.discription);
                    }
                    HttpUtils.isInstall = false;
                    if (!installJudgeService.this.e) {
                        installJudgeService.this.e = false;
                        installJudgeService.this.stopSelf();
                        System.gc();
                        return;
                    }
                    return;
                case 6:
                    if (!installJudgeService.this.e) {
                        MyUtils.cancelNotification(installJudgeService.this, MyUtils.VIRUS_NOTI_ID);
                        installJudgeService.this.e = false;
                        installJudgeService.this.stopSelf();
                        System.gc();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private boolean e = false;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onDestroy() {
        super.onDestroy();
        this.c.freeScanner();
    }

    public void init(String pName) {
        try {
            ApplicationInfo mAppInfo = getPackageManager().getApplicationInfo(pName, 8192);
            String app_name1 = mAppInfo.loadLabel(getPackageManager()).toString();
            Settings.System.getInt(getContentResolver(), "isRealtimeProtectOpen", 1);
            String md5 = AppUtils.getCretMD5(this, pName);
            String sha1 = "preload";
            File file = new File(mAppInfo.sourceDir);
            long filesize = file.length();
            if (filesize < 20971520) {
                sha1 = SHA1Util.getFileMD5String(file);
            }
            this.a.insertAppinfo(new Appinfo(pName, md5, sha1, String.valueOf(filesize), app_name1));
            ArrayList<String> list = new ArrayList<>();
            list.add(pName);
            if (Settings.System.getInt(getContentResolver(), "isRealtimeProtectOpen", 1) == 1) {
                int i = 0;
                Message msg = new Message();
                QScanResultEntity result = this.c.scanPackages(list, null, false).get(0);
                if (result != null && result.type == 3) {
                    i = 2;
                }
                msg.what = i;
                msg.obj = result;
                if (i == 0 && !HttpUtils.isInstall) {
                    MyUtils.showScanVirusNotification(this, "0", result.packageName, c.M + result.softName + "\" ");
                }
                this.d.sendMessage(msg);
                return;
            }
            QScanResultEntity result2 = this.c.scanPackages(list, null, false).get(0);
            if (result2 != null && result2.type == 3) {
                initVirus(pName, result2.discription);
            }
            if (!this.e) {
                this.e = false;
                stopSelf();
                System.gc();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void initVirus(String app_name, String desc) {
        HttpUtils.hasVirus = true;
        String virus_pkgname = HttpUtils.execService("viruspkgname", this);
        if (!virus_pkgname.equalsIgnoreCase("")) {
            boolean isexist = false;
            String[] arr = virus_pkgname.split(",");
            int len$ = arr.length;
            int i$ = 0;
            while (true) {
                if (i$ >= len$) {
                    break;
                } else if (arr[i$].equals(app_name)) {
                    isexist = true;
                    break;
                } else {
                    i$++;
                }
            }
            if (!isexist) {
                virus_pkgname = virus_pkgname + "," + app_name;
            }
        } else {
            virus_pkgname = app_name;
        }
        HttpUtils.UpdateConfig("viruspkgname", virus_pkgname, this);
        HttpUtils.UpdateConfig(AppUtils.getVirusDescKey(virus_pkgname), desc, this);
        LeSafeObservable.get(this).noticeHasVirus();
    }

    public void onCreate() {
        super.onCreate();
        this.a = new AntiVirusDBHelper(this);
        this.c = (QScannerManager) ManagerCreator.getManager(QScannerManager.class);
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        this.e = true;
        doinbg(intent);
    }

    public void doinbg(final Intent intent) {
        new Thread() {
            /* class com.lenovo.safecenter.antivirus.support.installJudgeService.AnonymousClass2 */

            public final void run() {
                synchronized (SecurityService.Virus_lock) {
                    try {
                        installJudgeService.this.b = intent.getExtras().getString(QueryPermissions.PACKAGENAME);
                        if (installJudgeService.this.b != null) {
                            installJudgeService.this.e = false;
                            installJudgeService.this.init(installJudgeService.this.b);
                            InterceptUtils.appInstall(installJudgeService.this, installJudgeService.this.b);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }.start();
    }
}
