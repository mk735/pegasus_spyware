package com.lenovo.safecenter.utils.update;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.util.Log;
import android.widget.Toast;
import com.lenovo.lps.sus.EventType;
import com.lenovo.lps.sus.SUS;
import com.lenovo.lps.sus.SUSListener;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.MainTab.VersionUpdateDIalogActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.support.CMDHelper;
import java.io.File;
import java.net.URLDecoder;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.json.JSONException;
import org.json.JSONObject;

public class LeSafeUpdate {
    public static final int SUS_ERROR_CODE_DOWNLOAD = 3;
    public static final int SUS_ERROR_CODE_INSUFFICIENTSTORAGESPACE = 4;
    public static final int SUS_ERROR_CODE_NETWORKUNAVAILABLE = 1;
    public static final int SUS_ERROR_CODE_PENDING = 2;
    int a;
    boolean b = false;
    boolean c = false;
    boolean d = false;
    private Context e;
    private String f = null;
    private String g = null;
    private String h = null;
    private PackageManager i;
    private SUSListener j;
    private SharedPreferences k;
    private boolean l = false;
    private LeSafeUpdateListenser m;
    private Handler n = new Handler() {
        /* class com.lenovo.safecenter.utils.update.LeSafeUpdate.AnonymousClass3 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(Uri.parse("file://" + ((String) msg.obj)), "application/vnd.android.package-archive");
                    intent.setFlags(268435456);
                    LeSafeUpdate.this.e.startActivity(intent);
                    return;
                case 2:
                    LeSafeUpdateInfo lsui = (LeSafeUpdateInfo) msg.obj;
                    SUS.downloadApp(LeSafeUpdate.this.e, lsui.getUrl(), lsui.getApkName(), Long.valueOf(lsui.getFileSize()));
                    return;
                case 3:
                    LeSafeUpdate.h(LeSafeUpdate.this);
                    return;
                default:
                    return;
            }
        }
    };
    private BroadcastReceiver o = new BroadcastReceiver() {
        /* class com.lenovo.safecenter.utils.update.LeSafeUpdate.AnonymousClass4 */

        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && intent.getDataString().split(c.N)[1].equals(LeSafeUpdate.this.f)) {
                LeSafeUpdate.this.m.onInstallComplete(true);
                File f = new File(context.getCacheDir() + CookieSpec.PATH_DELIM + LeSafeUpdate.this.h);
                if (f.exists()) {
                    f.delete();
                }
                context.unregisterReceiver(LeSafeUpdate.this.o);
            }
        }
    };

    public interface LeSafeUpdateListenser {
        void onDownLoadComplete(String str);

        void onDownLoadException(int i);

        void onInstallComplete(boolean z);

        void onQueryResp(String str, LeSafeUpdateInfo leSafeUpdateInfo);
    }

    static /* synthetic */ void h(LeSafeUpdate x0) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        x0.e.registerReceiver(x0.o, intentFilter);
    }

    public LeSafeUpdate(Context context, String pkgName, int versionCode, String channelKey, boolean moveToSystem, boolean promptDisable, boolean sdkPromptDisable, LeSafeUpdateListenser lsul) {
        this.e = context;
        this.i = this.e.getPackageManager();
        this.a = versionCode;
        this.g = channelKey;
        this.f = pkgName;
        this.k = PreferenceManager.getDefaultSharedPreferences(context);
        this.l = moveToSystem;
        this.m = lsul == null ? new LeSafeUpdateListenser() {
            /* class com.lenovo.safecenter.utils.update.LeSafeUpdate.AnonymousClass1 */

            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
            public final void onQueryResp(String resultion, LeSafeUpdateInfo lfui) {
            }

            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
            public final void onInstallComplete(boolean succeed) {
            }

            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
            public final void onDownLoadException(int errorCode) {
            }

            @Override // com.lenovo.safecenter.utils.update.LeSafeUpdate.LeSafeUpdateListenser
            public final void onDownLoadComplete(String path) {
            }
        } : lsul;
        this.b = promptDisable;
        this.c = sdkPromptDisable;
    }

    public void upDate(boolean downloadNow) {
        upDate(downloadNow, true);
    }

    public void upDate(final boolean downloadNow, final boolean installNow) {
        if (SUS.isVersionUpdateStarted() || this.d) {
            a(R.string.SUS_NOTIFICATION_UPDATINGPROMPT);
            this.m.onDownLoadException(2);
            return;
        }
        SUS.setAllPromptDisableFlag(this.b);
        if (this.j == null) {
            this.j = new SUSListener() {
                /* class com.lenovo.safecenter.utils.update.LeSafeUpdate.AnonymousClass2 */

                @Override // com.lenovo.lps.sus.SUSListener
                public final void onUpdateNotification(EventType eventType, final String param) {
                    switch (AnonymousClass5.a[eventType.ordinal()]) {
                        case 1:
                            if (param != null && param.length() > 0) {
                                try {
                                    JSONObject jsonObject = new JSONObject(param);
                                    try {
                                        String resultion = jsonObject.getString(c.L);
                                        if (c.S.equals(resultion)) {
                                            String jsonObjectStr = jsonObject.getString(c.B);
                                            String ChannelKey = (jsonObjectStr == null || jsonObjectStr.length() <= 0) ? null : URLDecoder.decode(jsonObjectStr);
                                            String jsonObjectStr2 = jsonObject.getString(c.C);
                                            String VerCode = (jsonObjectStr2 == null || jsonObjectStr2.length() <= 0) ? null : URLDecoder.decode(jsonObjectStr2);
                                            String jsonObjectStr3 = jsonObject.getString(c.D);
                                            String VerName = (jsonObjectStr3 == null || jsonObjectStr3.length() <= 0) ? null : URLDecoder.decode(jsonObjectStr3);
                                            String jsonObjectStr4 = jsonObject.getString(c.E);
                                            String DownloadURL = (jsonObjectStr4 == null || jsonObjectStr4.length() <= 0) ? null : URLDecoder.decode(jsonObjectStr4);
                                            String jsonObjectStr5 = jsonObject.getString(c.G);
                                            String Size = (jsonObjectStr5 == null || jsonObjectStr5.length() <= 0) ? null : URLDecoder.decode(jsonObjectStr5);
                                            String jsonObjectStr6 = jsonObject.getString(c.H);
                                            String UpdateDesc = (jsonObjectStr6 == null || jsonObjectStr6.length() <= 0) ? null : URLDecoder.decode(jsonObjectStr6);
                                            String jsonObjectStr7 = jsonObject.getString(c.I);
                                            LeSafeUpdate.this.h = (jsonObjectStr7 == null || jsonObjectStr7.length() <= 0) ? null : URLDecoder.decode(jsonObjectStr7);
                                            LeSafeUpdate.this.m.onQueryResp(c.S, new LeSafeUpdateInfo(ChannelKey, VerName, VerCode, UpdateDesc, DownloadURL, LeSafeUpdate.this.h, Long.valueOf(Size).longValue()));
                                            if (downloadNow) {
                                                LeSafeUpdate.this.n.sendMessage(LeSafeUpdate.this.n.obtainMessage(2, new LeSafeUpdateInfo(ChannelKey, VerName, VerCode, UpdateDesc, DownloadURL, LeSafeUpdate.this.h, Long.valueOf(Size).longValue())));
                                            } else {
                                                Intent i = new Intent(LeSafeUpdate.this.e, VersionUpdateDIalogActivity.class);
                                                i.putExtra("versionname", VerName);
                                                i.putExtra("appinfo", UpdateDesc);
                                                i.putExtra("url", DownloadURL);
                                                i.putExtra("apkname", LeSafeUpdate.this.h);
                                                i.putExtra("filesize", Long.valueOf(Size));
                                                i.addFlags(335544320);
                                                LeSafeUpdate.this.e.startActivity(i);
                                            }
                                        } else if (c.T.equals(resultion)) {
                                            LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_LATESTVERSION);
                                            LeSafeUpdate.this.m.onQueryResp(c.T, null);
                                            Log.e("ydp", "QueryResp LATESTVERSION");
                                        } else if (c.U.equals(resultion)) {
                                            LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_LATESTVERSION);
                                            LeSafeUpdate.this.m.onQueryResp(c.U, null);
                                            Log.e("ydp", "QueryResp NOTFOUND");
                                        } else if (c.V.equals(resultion)) {
                                            LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_UPDATE_EXCEPTION);
                                            Log.e("ydp", "QueryResp EXCEPTION");
                                            LeSafeUpdate.this.m.onQueryResp(c.V, null);
                                        }
                                        return;
                                    } catch (JSONException e) {
                                        e = e;
                                        LeSafeUpdate.this.m.onQueryResp("JSONException", null);
                                        LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_UPDATE_EXCEPTION);
                                        Log.e("ydp", "SUS_QUERY_RESP param:" + param);
                                        Log.e("ydp", "updateversion error start-----");
                                        e.printStackTrace();
                                        Log.e("ydp", "updateversion error end-----");
                                        return;
                                    }
                                } catch (JSONException e2) {
                                    e = e2;
                                    LeSafeUpdate.this.m.onQueryResp("JSONException", null);
                                    LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_UPDATE_EXCEPTION);
                                    Log.e("ydp", "SUS_QUERY_RESP param:" + param);
                                    Log.e("ydp", "updateversion error start-----");
                                    e.printStackTrace();
                                    Log.e("ydp", "updateversion error end-----");
                                    return;
                                }
                            } else {
                                return;
                            }
                        case 2:
                            LeSafeUpdate.this.d = true;
                            LeSafeUpdate.this.m.onDownLoadComplete(param);
                            Log.e("ydp", "DOWNLOADCOMPLETE:" + param);
                            String command = "chmod 777 /data/data/com.lenovo.safecenter/cache/" + LeSafeUpdate.this.h;
                            LeSafeUpdate.this.k.edit().putString("updateFileName", LeSafeUpdate.this.k.getString("updateFileName", "") + LeSafeUpdate.this.h + ",").commit();
                            Runtime runtime = Runtime.getRuntime();
                            try {
                                runtime.exec(command);
                                runtime.exec("chmod 777 /data/data/com.lenovo.safecenter/cache");
                                if (installNow) {
                                    LeSafeUpdate.this.n.sendMessage(LeSafeUpdate.this.n.obtainMessage(3));
                                    new Thread() {
                                        /* class com.lenovo.safecenter.utils.update.LeSafeUpdate.AnonymousClass2.AnonymousClass1 */

                                        public final void run() {
                                            if (!LeSafeUpdate.this.canExecute("/data/data/com.lenovo.safecenter/cache/" + LeSafeUpdate.this.h)) {
                                                return;
                                            }
                                            if (LeSafeUpdate.this.l) {
                                                if (!CMDHelper.copyApk(LeSafeUpdate.this.e, "/data/data/com.lenovo.safecenter/cache/" + LeSafeUpdate.this.h, "/system/app/" + LeSafeUpdate.this.h, LeSafeUpdate.this.f)) {
                                                    LeSafeUpdate.this.d = false;
                                                    LeSafeUpdate.this.n.sendMessage(LeSafeUpdate.this.n.obtainMessage(1, param));
                                                }
                                            } else if (!CMDHelper.installAPK(LeSafeUpdate.this.e, "/data/data/com.lenovo.safecenter/cache/" + LeSafeUpdate.this.h, LeSafeUpdate.this.f)) {
                                                LeSafeUpdate.this.d = false;
                                                LeSafeUpdate.this.n.sendMessage(LeSafeUpdate.this.n.obtainMessage(1, param));
                                            }
                                        }
                                    }.start();
                                }
                                LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_DOWNLOADCOMPLETE);
                                SUS.finish();
                                return;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                                return;
                            }
                        case 3:
                            LeSafeUpdate.this.m.onDownLoadException(2);
                            Log.e("ydp", "SUS_WARNING_PENDING");
                            return;
                        case 4:
                            SUS.setSDKPromptDisableFlag(true);
                            LeSafeUpdate.this.m.onDownLoadException(1);
                            Log.e("ydp", "SUS_FAIL_NETWORKUNAVAILABLE");
                            LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_FAIL_NETWORKUNAVAILABLE);
                            return;
                        case 5:
                            LeSafeUpdate.this.m.onDownLoadException(3);
                            Log.e("ydp", "SUS_FAIL_DOWNLOAD_EXCEPTION");
                            LeSafeUpdate.this.a((LeSafeUpdate) R.string.SUS_MSG_UPDATE_EXCEPTION);
                            return;
                        case 6:
                            Log.e("ydp", "SUS_FAIL_NOWLANCONNECTED");
                            return;
                        case 7:
                            Log.e("ydp", "SUS_FAIL_INSUFFICIENTSTORAGESPACE");
                            LeSafeUpdate.this.m.onDownLoadException(4);
                            return;
                        case 8:
                            SUS.setSDKPromptDisableFlag(true);
                            Log.e("ydp", "SUS_DOWNLOADSTART");
                            return;
                        default:
                            return;
                    }
                }
            };
        }
        SUS.setSUSListener(this.j);
        StatFs stat = new StatFs(Environment.getDataDirectory().getPath());
        long blockSize = (long) stat.getBlockSize();
        SUS.setDownloadPath(this.e.getCacheDir().getPath(), ((long) stat.getAvailableBlocks()) * blockSize, 1000);
        SUS.setSDKPromptDisableFlag(true);
        SUS.AsyncQueryLatestVersionByPackageName(this.e, this.f, this.a, this.g);
    }

    /* renamed from: com.lenovo.safecenter.utils.update.LeSafeUpdate$5  reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] a = new int[EventType.values().length];

        static {
            try {
                a[EventType.SUS_QUERY_RESP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[EventType.SUS_DOWNLOADCOMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[EventType.SUS_WARNING_PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[EventType.SUS_FAIL_NETWORKUNAVAILABLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[EventType.SUS_FAIL_DOWNLOAD_EXCEPTION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[EventType.SUS_FAIL_NOWLANCONNECTED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[EventType.SUS_FAIL_INSUFFICIENTSTORAGESPACE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[EventType.SUS_DOWNLOADSTART.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    public boolean canExecute(String path) {
        File file = new File(path);
        for (int i2 = 0; i2 < 3; i2++) {
            try {
                if (file.canExecute()) {
                    Log.i("ydp", "canExecute()...true");
                    return true;
                }
                Log.i("ydp", "canExecute()...false");
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            } catch (NoSuchMethodError e3) {
                try {
                    Thread.sleep(c.ap);
                    return true;
                } catch (InterruptedException e4) {
                    e3.printStackTrace();
                    return true;
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void a(int text) {
        if (!this.b && !this.c) {
            Toast.makeText(this.e, text, 0).show();
        }
    }
}
