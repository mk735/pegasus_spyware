package com.lenovo.safecenter.aidl.healthcheck;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.safecenter.HealthCheck.HealthCheckCallback;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.HealthCheck.util.HealthStatus;
import com.lenovo.safecenter.HealthCheck.util.HealthViewType;
import com.lenovo.safecenter.aidl.JsonUtil;
import com.lenovo.safecenter.aidl.healthcheck.IRemoteHealthCheckService;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class RemoteHealthCheckService extends Service {
    public static final String COMMAND_ACTION_HEALTH_CANCEL_OPTIMIZE = "health_canceloptimize";
    public static final String COMMAND_ACTION_HEALTH_CANCEL_SCAN = "health_cancelscan";
    public static final String COMMAND_ACTION_HEALTH_OPTIMIZE = "health_optimize";
    public static final String COMMAND_ACTION_HEALTH_SCAN = "health_scan";
    final RemoteCallbackList<IRemoteHealthCheckCallback> a = new RemoteCallbackList<>();
    private HealthManager b;
    private final IRemoteHealthCheckService.Stub c = new IRemoteHealthCheckService.Stub() {
        /* class com.lenovo.safecenter.aidl.healthcheck.RemoteHealthCheckService.AnonymousClass1 */

        @Override // com.lenovo.safecenter.aidl.healthcheck.IRemoteHealthCheckService
        public final void registerCallback(IRemoteHealthCheckCallback cb) {
            if (cb != null) {
                RemoteHealthCheckService.this.a.register(cb);
            }
        }

        @Override // com.lenovo.safecenter.aidl.healthcheck.IRemoteHealthCheckService
        public final void unregisterCallback(IRemoteHealthCheckCallback cb) {
            if (cb != null) {
                RemoteHealthCheckService.this.a.unregister(cb);
            }
        }

        @Override // com.lenovo.safecenter.aidl.healthcheck.IRemoteHealthCheckService
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
                if (RemoteHealthCheckService.COMMAND_ACTION_HEALTH_SCAN.equals(action)) {
                    RemoteHealthCheckService.a(RemoteHealthCheckService.this, context);
                } else if (RemoteHealthCheckService.COMMAND_ACTION_HEALTH_CANCEL_SCAN.equals(action)) {
                    RemoteHealthCheckService.a(RemoteHealthCheckService.this);
                } else if (RemoteHealthCheckService.COMMAND_ACTION_HEALTH_OPTIMIZE.equals(action)) {
                    ArrayList<Integer> keysList = new ArrayList<>();
                    if (object.has(SettingUtil.DATA)) {
                        JSONObject data = (JSONObject) object.get(SettingUtil.DATA);
                        if (data.has("keys")) {
                            JSONArray keys = data.getJSONArray("keys");
                            for (int i = 0; i < keys.length(); i++) {
                                try {
                                    int key = ((Integer) keys.get(i)).intValue();
                                    Log.i("wu0wu", "health_optimize key=" + key);
                                    keysList.add(Integer.valueOf(key));
                                } catch (Exception e) {
                                }
                            }
                        }
                    }
                    Log.i("wu0wu", "aidl doOptimize");
                    RemoteHealthCheckService.a(RemoteHealthCheckService.this, context, keysList);
                } else if (RemoteHealthCheckService.COMMAND_ACTION_HEALTH_CANCEL_OPTIMIZE.equals(action)) {
                    RemoteHealthCheckService.b(RemoteHealthCheckService.this);
                }
            } catch (JSONException e2) {
                Log.i("wu0wu", "aidl JSONException");
                e2.printStackTrace();
            }
        }
    };
    private HealthCheckCallback d = new HealthCheckCallback() {
        /* class com.lenovo.safecenter.aidl.healthcheck.RemoteHealthCheckService.AnonymousClass2 */

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void setProgressBarIndeterminate(boolean isIndeterminate) {
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onProgressChanged(int progress) {
            Log.i("wu0wu", "onProgressChanged progress=" + progress);
            String strProgressChanged = JsonUtil.healthProgressChanged(progress, RemoteHealthCheckService.this.f);
            for (int i = 0; i < RemoteHealthCheckService.this.e; i++) {
                try {
                    RemoteHealthCheckService.this.a.getBroadcastItem(i).onResult(strProgressChanged);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onScoreChanged(int score) {
            Log.i("wu0wu", "onScoreChanged score=" + score);
            String strScoreChanged = JsonUtil.healthScoreChanged(score, RemoteHealthCheckService.this.f);
            for (int i = 0; i < RemoteHealthCheckService.this.e; i++) {
                try {
                    RemoteHealthCheckService.this.a.getBroadcastItem(i).onResult(strScoreChanged);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onStatusChanged(int statusId) {
            Log.i("wu0wu", "onStatusChanged statusId=" + statusId);
            String strStatusChanged = JsonUtil.healthStatusChanged(statusId, RemoteHealthCheckService.this.f);
            for (int i = 0; i < RemoteHealthCheckService.this.e; i++) {
                try {
                    RemoteHealthCheckService.this.a.getBroadcastItem(i).onResult(strStatusChanged);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onStarted(int maxProgress, int action) {
            String strstarted;
            Log.i("wu0wu", "RemoteHealthCheckService onScanStarted....");
            Log.i("wu0wu", "onStarted maxProgress=" + maxProgress);
            try {
                RemoteHealthCheckService.this.e = RemoteHealthCheckService.this.a.beginBroadcast();
                Log.i("wu0wu", "onStarted mCallbacks.beginBroadcast() N=" + RemoteHealthCheckService.this.e);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (action == 0) {
                strstarted = JsonUtil.healthScanStarted(RemoteHealthCheckService.this.f, maxProgress, HealthStatus.getStatus(RemoteHealthCheckService.this.getApplicationContext()), HealthViewType.getViewTypes(RemoteHealthCheckService.this.getApplicationContext()));
            } else {
                strstarted = JsonUtil.healthOptimizesStarted(RemoteHealthCheckService.this.f);
            }
            for (int i = 0; i < RemoteHealthCheckService.this.e; i++) {
                try {
                    RemoteHealthCheckService.this.a.getBroadcastItem(i).onResult(strstarted);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onOneItemProcess(HealthItemResult result) {
            Log.i("wu0wu", "onOneItemProcess ");
            String strProcessing = JsonUtil.healthProcessing(result, RemoteHealthCheckService.this.f);
            for (int i = 0; i < RemoteHealthCheckService.this.e; i++) {
                try {
                    RemoteHealthCheckService.this.a.getBroadcastItem(i).onResult(strProcessing);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onResult(HealthItemResult result) {
            Log.i("wu0wu", "onResult ");
            String strScanresult = JsonUtil.healthProcessed(result, RemoteHealthCheckService.this.f);
            for (int i = 0; i < RemoteHealthCheckService.this.e; i++) {
                try {
                    RemoteHealthCheckService.this.a.getBroadcastItem(i).onResult(strScanresult);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.lenovo.safecenter.HealthCheck.HealthCheckCallback
        public final void onFinished(int action) {
            String strScanFinished;
            Log.i("wu0wu", "RemoteHealthCheckService onScanFinished....");
            if (action == 0) {
                strScanFinished = JsonUtil.healthScanFinished(RemoteHealthCheckService.this.f);
            } else {
                strScanFinished = JsonUtil.healthOptimizeComplete(RemoteHealthCheckService.this.f);
            }
            for (int i = 0; i < RemoteHealthCheckService.this.e; i++) {
                try {
                    RemoteHealthCheckService.this.a.getBroadcastItem(i).onResult(strScanFinished);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            try {
                RemoteHealthCheckService.this.a.finishBroadcast();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    };
    private int e = 0;
    private String f;

    static /* synthetic */ void a(RemoteHealthCheckService x0) {
        Log.i("wu0wu", "RemoteScanvirusService doCancelScan....");
        x0.b.exit();
    }

    static /* synthetic */ void a(RemoteHealthCheckService x0, String x1) {
        x0.b = new HealthManager(x0.getApplicationContext(), true);
        x0.f = x1;
        TrackEvent.reportHealthcheckWithAIDL();
        x0.b.scan(x0.d);
    }

    static /* synthetic */ void a(RemoteHealthCheckService x0, String x1, ArrayList x2) {
        x0.f = x1;
        x0.b.optimize(x2);
    }

    static /* synthetic */ void b(RemoteHealthCheckService x0) {
        Log.i("wu0wu", "RemoteScanvirusService doCancelOptimize....");
        x0.b.exit();
    }

    public void onCreate() {
        super.onCreate();
    }

    public void onDestroy() {
        Log.i("wu0wu", "RemoteService onDestroy()");
        this.a.kill();
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        Log.i("wu0wu", "RemoteService onBind action=" + intent.getAction());
        return this.c;
    }
}
