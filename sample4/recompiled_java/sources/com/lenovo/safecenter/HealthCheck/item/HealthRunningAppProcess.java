package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.format.Formatter;
import android.util.Log;
import com.lenovo.performancecenter.coreui.util.Utils;
import com.lenovo.performancecenter.performance.ClearAllAppGarbage;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.correct.TrafficCorrectSetting;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class HealthRunningAppProcess extends BaseHealthCheck {
    public final int SCORE_VALUE_RUNNING_APP_PROCESS = 7;
    private int a = 0;
    private String b = null;
    private ClearAllAppGarbage c = null;

    public HealthRunningAppProcess(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 8;
        this.isRootItem = false;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.scan_running_app_process_detail), this.mHealthManager);
        long optimeInterval = System.currentTimeMillis() - PreferenceManager.getDefaultSharedPreferences(this.mContext).getLong("OpRunningTaskTime", 0);
        long interval = System.currentTimeMillis() - Utils.getLastKillTime(this.mContext);
        if (optimeInterval > TrafficCorrectSetting.TIME && interval > Utils.CLICK_INTERVAL) {
            ExecutorService exec = Executors.newFixedThreadPool(1);
            try {
                int[] appGarbage = (int[]) exec.submit(new Callable<Object>() {
                    /* class com.lenovo.safecenter.HealthCheck.item.HealthRunningAppProcess.AnonymousClass1 */

                    @Override // java.util.concurrent.Callable
                    public final Object call() throws Exception {
                        HealthRunningAppProcess.this.c = new ClearAllAppGarbage(HealthRunningAppProcess.this.mContext);
                        return HealthRunningAppProcess.this.c.getAllRunningAppInfo(null);
                    }
                }).get(8000, TimeUnit.MILLISECONDS);
                exec.shutdownNow();
                this.a = appGarbage[0];
                this.b = Formatter.formatFileSize(this.mContext, (long) appGarbage[1]);
                if (this.a != 0) {
                    refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.scan_running_app_process_detail), this.mHealthManager);
                    this.result = new HealthItemResult();
                    this.result.key = this.mKey;
                    this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                    this.result.title_detail = this.mContext.getString(R.string.scan_running_app_process_detail);
                    this.result.content = String.format(this.mContext.getString(R.string.detail_running_app_process), Integer.valueOf(this.a), this.b);
                    this.result.view_type = 2;
                    this.result.weight = 3;
                    this.result.isOnly = false;
                    this.result.action_description = this.mContext.getString(R.string.optimizition);
                    this.mHealthManager.setScore(this.mHealthManager.getScore() - 7);
                    this.mHealthManager.plusOrDecrementNumItem(2, true);
                    this.mPreViewType = 2;
                    this.mHealthManager.result(this.result);
                    progressAddAfterScanEveryItem(this.mHealthManager);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
                exec.shutdownNow();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
                exec.shutdownNow();
            } catch (TimeoutException e3) {
                e3.printStackTrace();
                exec.shutdownNow();
                Log.i("wu0wu", "HealthRunningAppProcess scan TimeoutException...");
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        this.c.clearAllApp(null);
        refreshTitle(null, this.mContext.getString(R.string.op_running_app_process_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = String.format(this.mContext.getString(R.string.killed_running_app_process), Integer.valueOf(this.a), this.b);
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.mHealthManager.result(this.result);
        this.mHealthManager.setScore(this.mHealthManager.getScore() + 7);
        PreferenceManager.getDefaultSharedPreferences(this.mContext).edit().putLong("OpRunningTaskTime", System.currentTimeMillis()).commit();
        Utils.recordKillTimeAndPosition(this.mContext, System.currentTimeMillis(), 4);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void manual() {
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void click() {
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void clear() {
        this.result = null;
    }
}
