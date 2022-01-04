package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.antivirus.domain.Appinfo;
import com.lenovo.safecenter.antivirus.domain.VirusDemo;
import com.lenovo.safecenter.antivirus.utils.AppUtils;
import com.lenovo.safecenter.antivirus.utils.HttpUtils;
import com.lenovo.safecenter.antivirus.utils.ScanUtils;
import com.lenovo.safecenter.antivirus.views.ScanVirusActivity;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.LeSafeObservable;
import com.lenovo.safecenter.utils.WflUtils;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class HealthKillVirus extends BaseHealthCheck implements DialogUtil.WarnDialogListener, Observer {
    public final int SCORE_VALUE_HAS_VIRUS = 40;
    private QScannerManager a;
    private int b = 0;
    private int c = 0;
    private final int d = 0;
    private int e = -1;
    private boolean f = false;
    private Handler g = new Handler() {
        /* class com.lenovo.safecenter.HealthCheck.item.HealthKillVirus.AnonymousClass1 */

        public final void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    DialogUtil.NoticePositiveDialog(HealthKillVirus.this.mContext, 1, HealthKillVirus.this.mContext.getString(R.string.info), HealthKillVirus.this.mContext.getString(R.string.kill_virus_dialog_content), HealthKillVirus.this);
                    return;
                default:
                    return;
            }
        }
    };
    private LeSafeObservable h;

    public boolean isShowkillVirusActivity() {
        return this.f;
    }

    public HealthKillVirus(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 21;
        this.a = (QScannerManager) ManagerCreator.getManager(QScannerManager.class);
        this.isRootItem = false;
        this.h = LeSafeObservable.get(this.mContext);
        this.h.addObserver(this);
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        boolean isCloudKill = false;
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), null, this.mHealthManager);
        this.result = new HealthItemResult();
        this.result.key = this.mKey;
        this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
        if (isClounKillVirus(this.mContext)) {
            this.mHealthManager.setScanProgress(this.mHealthManager.getMAX_PROGRESS());
            this.mHealthManager.setProgressBarIndeterminate(true);
            refreshTitle(null, this.mContext.getString(R.string.net_virus_scaning), this.mHealthManager);
            this.result.title_detail = this.mContext.getString(R.string.net_virus_scaning);
            ExecutorService exec = Executors.newFixedThreadPool(1);
            try {
                exec.submit(new Callable<Boolean>() {
                    /* class com.lenovo.safecenter.HealthCheck.item.HealthKillVirus.AnonymousClass2 */

                    /* Return type fixed from 'java.lang.Object' to match base method */
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Boolean call() throws Exception {
                        List<Appinfo> appSInfo = AppUtils.getAppSInfo(HealthKillVirus.this.mContext);
                        List<VirusDemo> cloudScanGlobal = new ScanUtils().cloudScanGlobal(appSInfo, HealthKillVirus.this.mContext);
                        AppUtils.execNetResult(cloudScanGlobal, HealthKillVirus.this.mContext);
                        if (appSInfo != null) {
                            appSInfo.clear();
                        }
                        if (cloudScanGlobal != null) {
                            cloudScanGlobal.clear();
                        }
                        return true;
                    }
                }).get(60000, TimeUnit.MILLISECONDS);
                exec.shutdownNow();
                isCloudKill = true;
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                exec.shutdownNow();
                return;
            } catch (ExecutionException e3) {
                e3.printStackTrace();
                exec.shutdownNow();
                return;
            } catch (TimeoutException e4) {
                e4.printStackTrace();
                exec.shutdownNow();
                Log.i("wu0wu", "ClounKillVirus TimeoutException...");
                return;
            }
        } else {
            this.a.scanInstalledPackages(new QScanListener() {
                /* class com.lenovo.safecenter.HealthCheck.item.HealthKillVirus.AnonymousClass3 */

                @Override // com.tencent.tmsecure.module.qscanner.QScanListener
                public final void onScanStarted() {
                    WflUtils.Log("d", "wu0wu", "onScanStarted...");
                }

                @Override // com.tencent.tmsecure.module.qscanner.QScanListener
                public final void onPackageScanProgress(int progress, QScanResultEntity qScanResult) {
                    if (HealthKillVirus.this.e != progress) {
                        HealthKillVirus.this.mHealthManager.setScanProgress(HealthKillVirus.this.mHealthManager.getScanProgress() + 1);
                        HealthItemResult scanOneItemProcess = new HealthItemResult();
                        scanOneItemProcess.key = HealthKillVirus.this.mKey;
                        scanOneItemProcess.title = HealthKillVirus.this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                        scanOneItemProcess.title_detail = HealthKillVirus.this.mContext.getString(R.string.scan_virus) + qScanResult.softName;
                        HealthKillVirus.this.mHealthManager.onOneItemProcess(scanOneItemProcess);
                        WflUtils.Log("d", "wu0wu", "progress=" + progress);
                        HealthKillVirus.this.e = progress;
                        if (progress == 100) {
                            AppUtils.isNeedScan(HealthKillVirus.this.mContext);
                        }
                    }
                    AppUtils.execLocalResult(qScanResult, HealthKillVirus.this.mContext);
                }

                @Override // com.tencent.tmsecure.module.qscanner.QScanListener
                public final void onScanFinished(ArrayList<QScanResultEntity> arrayList) {
                    WflUtils.Log("d", "wu0wu", "onScanFinished...");
                    HealthKillVirus.this.mHealthManager.setScanProgress(HealthKillVirus.this.mHealthManager.getMAX_PROGRESS());
                }
            }, false);
        }
        this.b = a();
        WflUtils.Log("d", "wu0wu", "mVirusNum=" + this.b);
        if (this.b != 0) {
            this.result.content = String.format(this.mContext.getString(R.string.detail_num_virus), Integer.valueOf(this.b));
            this.result.view_type = 1;
            this.result.weight = 1;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.uninstall);
            this.mHealthManager.setScore(this.mHealthManager.getScore() - (this.b * 40));
            this.mHealthManager.plusOrDecrementNumItem(1, true);
            this.mPreViewType = 1;
        } else if (isCloudKill) {
            this.result.content = this.mContext.getString(R.string.netscaning_sure) + this.mContext.getString(R.string.detail_no_virus);
            this.result.view_type = 5;
            this.result.weight = 9;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
            this.mHealthManager.plusOrDecrementNumItem(5, true);
        } else {
            this.result.content = this.mContext.getString(R.string.local_killvirus_text) + this.mContext.getString(R.string.detail_no_virus);
            this.result.view_type = 5;
            this.result.weight = 9;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
            this.mHealthManager.plusOrDecrementNumItem(5, true);
        }
        this.mHealthManager.result(this.result);
        HttpUtils.UpdateConfig("scantime", String.valueOf(System.currentTimeMillis()), this.mContext);
        WflUtils.Log("d", "wu0wu", "scankillvirus end...");
    }

    public static boolean isClounKillVirus(Context context) {
        if (!WflUtils.isNetworkAvailable(context) || WflUtils.isMobile2GNetwork(context)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        this.g.sendMessage(this.g.obtainMessage(0, null));
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void manual() {
        int newVirusNum = a();
        int killNum = this.c - newVirusNum;
        this.c = newVirusNum;
        Log.i("wu0wu", "killNum=" + killNum);
        if (newVirusNum > 0) {
            this.mHealthManager.setStatus(1);
            if (this.result != null) {
                this.result.content = String.format(this.mContext.getString(R.string.detail_num_virus), Integer.valueOf(newVirusNum));
                this.result.view_type = 1;
                this.result.weight = 1;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.uninstall);
            }
        } else {
            if (this.result != null) {
                this.result.content = String.format(this.mContext.getString(R.string.detail_killed_virus_num), Integer.valueOf(this.b));
                this.result.view_type = 4;
                this.result.weight = 7;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.safe);
            }
            this.mHealthManager.plusOrDecrementNumItem(4, true);
            this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
            this.mHealthManager.setStatus(3);
        }
        this.mHealthManager.result(this.result);
        this.mHealthManager.setScore(this.mHealthManager.getScore() + (killNum * 40));
        if (killNum > 0) {
            Const.isHealthCheckNoOptimiza(false);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void click() {
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void clear() {
        this.result = null;
        if (this.a != null) {
            this.a.freeScanner();
        }
        if (this.h != null) {
            this.h.deleteObservers();
            this.h.close();
        }
    }

    public void cancelScan() {
        if (this.a != null) {
            this.a.cancelScan();
        }
    }

    public void onWarnDialogOk() {
        int newVirusNum = a();
        if (newVirusNum == 0) {
            int killNum = this.b - newVirusNum;
            if (this.result != null) {
                this.result.content = String.format(this.mContext.getString(R.string.detail_killed_virus_num), Integer.valueOf(this.b));
                this.result.view_type = 4;
                this.result.weight = 7;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.safe);
                this.mHealthManager.plusOrDecrementNumItem(4, true);
                this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
            }
            this.mHealthManager.setStatus(3);
            this.mHealthManager.result(this.result);
            this.mHealthManager.setScore(this.mHealthManager.getScore() + (killNum * 40));
            if (killNum > 0) {
                Const.isHealthCheckNoOptimiza(false);
            }
        } else {
            Intent intent = new Intent(this.mContext, ScanVirusActivity.class);
            intent.putExtra("from_healthcheck", true);
            this.mContext.startActivity(intent);
            this.f = true;
        }
        this.c = newVirusNum;
    }

    private int a() {
        String virusPkgNames = HttpUtils.execService("viruspkgname", this.mContext);
        if (TextUtils.isEmpty(virusPkgNames)) {
            return 0;
        }
        return virusPkgNames.split(",").length;
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.WarnDialogListener
    public void onWarnDialogOk(int id) {
        switch (id) {
            case 1:
                onWarnDialogOk();
                return;
            default:
                return;
        }
    }

    @Override // com.lenovo.safecenter.utils.DialogUtil.WarnDialogListener
    public void onWarnDialogCancel(int id) {
    }

    public void update(Observable observable, Object data) {
        if (data instanceof Integer) {
            switch (((Integer) data).intValue()) {
                case 19:
                    manual();
                    return;
                default:
                    return;
            }
        }
    }
}
