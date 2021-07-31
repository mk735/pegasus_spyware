package com.lenovo.safecenter.utils.update;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.preference.PreferenceManager;
import android.util.Log;
import com.lenovo.lps.sus.SUS;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.WflUtils;
import com.lenovo.safecenter.utils.update.LeSafeUpdate;
import java.io.File;

public class LeSafeDownLoadApk extends Service {
    private PackageManager a;
    private LeSafeUpdate b;
    private SharedPreferences c;
    private int d = 0;
    private boolean e = false;
    private Handler f = new Handler() {
        /* class com.lenovo.safecenter.utils.update.LeSafeDownLoadApk.AnonymousClass2 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (LeSafeDownLoadApk.this.b == null) {
                        LeSafeDownLoadApk.this.b = new LeSafeUpdate(LeSafeDownLoadApk.this, LeSafeDownLoadApk.this.getPackageName(), LeSafeDownLoadApk.this.d, Const.SUS_CHANNEL, false, true, true, new LeSafeUpdate.LeSafeUpdateListenser() {
                            /* class com.lenovo.safecenter.utils.update.LeSafeDownLoadApk.AnonymousClass2.AnonymousClass1 */

                            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                            public final void onQueryResp(String resultion, LeSafeUpdateInfo lfui) {
                                Log.i("ydp", "LeSafeDownLoadApk resultion " + resultion);
                                if (!resultion.equals(c.S)) {
                                    if (LeSafeDownLoadApk.this.e) {
                                        Const.updateAPK = true;
                                        Log.i("ydp", "onQueryResp haveUpdateFile");
                                    }
                                    LeSafeDownLoadApk.this.stopSelf();
                                }
                            }

                            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                            public final void onInstallComplete(boolean succeed) {
                            }

                            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                            public final void onDownLoadException(int errorCode) {
                                Log.i("ydp", "LeSafeDownLoadApk onDownLoadException " + errorCode);
                                if (LeSafeDownLoadApk.this.e) {
                                    Const.updateAPK = true;
                                    Log.i("ydp", "onDownLoadException haveUpdateFile");
                                }
                                LeSafeDownLoadApk.this.stopSelf();
                            }

                            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
                            public final void onDownLoadComplete(String path) {
                                Const.updateAPK = true;
                                LeSafeDownLoadApk.this.c.edit().putString("update_apk_path", path).commit();
                                Log.i("ydp", "LeSafeDownLoadApk DownLoadComplete " + path);
                                LeSafeDownLoadApk.this.stopSelf();
                            }
                        });
                    }
                    LeSafeDownLoadApk.this.b.upDate(true, false);
                    return;
                default:
                    return;
            }
        }
    };

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
    }

    public void onStart(Intent intent, int startId) {
        super.onStart(intent, startId);
        this.a = getPackageManager();
        this.c = PreferenceManager.getDefaultSharedPreferences(this);
        if (WflUtils.isWifiNetwork(this)) {
            Log.i("ydp", "wifi Connected");
            new Thread() {
                /* class com.lenovo.safecenter.utils.update.LeSafeDownLoadApk.AnonymousClass1 */

                public final void run() {
                    PackageInfo pi;
                    try {
                        LeSafeDownLoadApk.this.d = LeSafeDownLoadApk.this.getPackageManager().getPackageInfo(LeSafeDownLoadApk.this.getPackageName(), 0).versionCode;
                        File apks = LeSafeDownLoadApk.this.getCacheDir();
                        if (apks.exists()) {
                            File[] f = apks.listFiles();
                            int len$ = f.length;
                            int i$ = 0;
                            while (true) {
                                if (i$ >= len$) {
                                    break;
                                }
                                File file = f[i$];
                                if (!file.getName().toLowerCase().endsWith(".apk") || (pi = LeSafeDownLoadApk.this.a.getPackageArchiveInfo(file.getPath(), 1)) == null || !pi.packageName.equals(LeSafeDownLoadApk.this.getPackageName())) {
                                    i$++;
                                } else if (pi.versionCode > LeSafeDownLoadApk.this.d) {
                                    LeSafeDownLoadApk.this.d = pi.versionCode;
                                    LeSafeDownLoadApk.this.e = true;
                                    LeSafeDownLoadApk.this.c.edit().putString("update_apk_path", file.getPath()).commit();
                                    Log.i("ydp", "haveUpdateFile " + LeSafeDownLoadApk.this.d);
                                } else {
                                    file.delete();
                                    Log.i("ydp", "delete low version file");
                                }
                            }
                            LeSafeDownLoadApk.this.f.sendMessage(LeSafeDownLoadApk.this.f.obtainMessage(1));
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            }.start();
            return;
        }
        Log.i("ydp", "wifi unconnected");
        SUS.finish();
        stopSelf();
    }
}
