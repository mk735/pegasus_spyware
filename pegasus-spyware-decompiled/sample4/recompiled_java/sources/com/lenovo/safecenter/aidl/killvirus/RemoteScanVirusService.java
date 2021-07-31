package com.lenovo.safecenter.aidl.killvirus;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.safecenter.aidl.JsonUtil;
import com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService;
import com.lenovo.safecenter.utils.TrackEvent;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class RemoteScanVirusService extends Service {
    public static final String COMMAND_ACTION_KILLVIRUS_CANCEL_SCAN = "killVirus_cancelscan";
    public static final String COMMAND_ACTION_KILLVIRUS_SCAN = "killVirus_scan";
    final RemoteCallbackList<IRemoteScanVirusCallback> a = new RemoteCallbackList<>();
    private QScannerManager b;
    private final IRemoteScanVirusService.Stub c = new IRemoteScanVirusService.Stub() {
        /* class com.lenovo.safecenter.aidl.killvirus.RemoteScanVirusService.AnonymousClass1 */

        @Override // com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService
        public final void registerCallback(IRemoteScanVirusCallback cb) {
            if (cb != null) {
                RemoteScanVirusService.this.a.register(cb);
            }
        }

        @Override // com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService
        public final void unregisterCallback(IRemoteScanVirusCallback cb) {
            if (cb != null) {
                RemoteScanVirusService.this.a.unregister(cb);
            }
        }

        @Override // com.lenovo.safecenter.aidl.killvirus.IRemoteScanVirusService
        public final void receiveCommand(String command) throws RemoteException {
            try {
                Log.i("wu0wu", "command=" + command);
                JSONObject object = (JSONObject) new JSONTokener(command).nextValue();
                String action = null;
                if (object.has("action")) {
                    action = object.getString("action");
                }
                String context = null;
                if (object.has("context")) {
                    context = object.getString("context");
                }
                Log.i("wu0wu", "action=" + action);
                Log.i("wu0wu", "context=" + context);
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (RemoteScanVirusService.COMMAND_ACTION_KILLVIRUS_SCAN.equals(action)) {
                    RemoteScanVirusService.a(RemoteScanVirusService.this, context);
                } else if (RemoteScanVirusService.COMMAND_ACTION_KILLVIRUS_CANCEL_SCAN.equals(action)) {
                    RemoteScanVirusService.a(RemoteScanVirusService.this);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    };
    private int d = 0;

    static /* synthetic */ void a(RemoteScanVirusService x0) {
        Log.i("wu0wu", "RemoteScanvirusService doCancelScan....");
        x0.b.cancelScan();
    }

    static /* synthetic */ void a(RemoteScanVirusService x0, final String x1) {
        new Thread(new Runnable() {
            /* class com.lenovo.safecenter.aidl.killvirus.RemoteScanVirusService.AnonymousClass2 */

            public final void run() {
                if (RemoteScanVirusService.this.b != null) {
                    RemoteScanVirusService.this.b.scanInstalledPackages(new QScanListener() {
                        /* class com.lenovo.safecenter.aidl.killvirus.RemoteScanVirusService.AnonymousClass2.AnonymousClass1 */

                        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
                        public final void onScanStarted() {
                            Log.i("wu0wu", "RemoteScanvirusService onScanStarted....");
                            try {
                                RemoteScanVirusService.this.d = RemoteScanVirusService.this.a.beginBroadcast();
                                Log.i("wu0wu", "onStarted mCallbacks.beginBroadcast() N=" + RemoteScanVirusService.this.d);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            String strScanstarted = JsonUtil.killVirusScanStarted(x1);
                            for (int i = 0; i < RemoteScanVirusService.this.d; i++) {
                                try {
                                    RemoteScanVirusService.this.a.getBroadcastItem(i).onResult(strScanstarted);
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                        }

                        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
                        public final void onPackageScanProgress(int progress, QScanResultEntity result) {
                            ScanVirusResult iscanResult = new ScanVirusResult();
                            iscanResult.type = result.type;
                            iscanResult.packageName = result.packageName;
                            iscanResult.softName = result.softName;
                            iscanResult.discription = result.discription;
                            iscanResult.version = result.version;
                            iscanResult.versionCode = result.versionCode;
                            iscanResult.apkType = result.apkType;
                            iscanResult.path = result.path;
                            iscanResult.certMd5 = result.certMd5;
                            iscanResult.size = result.size;
                            iscanResult.advice = result.advice;
                            iscanResult.malwareid = result.malwareid;
                            iscanResult.name = result.name;
                            iscanResult.label = result.label;
                            iscanResult.url = result.url;
                            String strScanresult = JsonUtil.killViruScanResult(x1, progress, iscanResult);
                            for (int i = 0; i < RemoteScanVirusService.this.d; i++) {
                                try {
                                    RemoteScanVirusService.this.a.getBroadcastItem(i).onResult(strScanresult);
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }

                        @Override // com.tencent.tmsecure.module.qscanner.QScanListener
                        public final void onScanFinished(ArrayList<QScanResultEntity> arrayList) {
                            Log.i("wu0wu", "RemoteScanvirusService onScanFinished....");
                            TrackEvent.reportScanVirusWithAIDL();
                            String strScanFinished = JsonUtil.killVirusonScanFinished(x1);
                            for (int i = 0; i < RemoteScanVirusService.this.d; i++) {
                                try {
                                    RemoteScanVirusService.this.a.getBroadcastItem(i).onResult(strScanFinished);
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                            try {
                                RemoteScanVirusService.this.a.finishBroadcast();
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    }, false);
                }
            }
        }).start();
    }

    public void onCreate() {
        super.onCreate();
        this.b = (QScannerManager) ManagerCreator.getManager(QScannerManager.class);
    }

    public void onDestroy() {
        Log.i("wu0wu", "RemoteService onDestroy()");
        if (this.b != null) {
            this.b.freeScanner();
        }
        this.a.kill();
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        Log.i("wu0wu", "RemoteService onBind action=" + intent.getAction());
        return this.c;
    }
}
