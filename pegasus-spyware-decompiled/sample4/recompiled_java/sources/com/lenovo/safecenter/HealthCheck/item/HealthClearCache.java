package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.text.format.Formatter;
import android.util.Log;
import com.lenovo.performancecenter.service.object.ApplicationDataInfo;
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

public class HealthClearCache extends BaseHealthCheck {
    private static long a = 0;
    public final int SCORE_VALUE_CACHE_PROCESS = 7;
    private String b = null;

    static /* synthetic */ int a(HealthClearCache x0) {
        long j = new ApplicationDataInfo(x0.mContext).getDataInfo().cachesize;
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    public HealthClearCache(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 9;
        this.isRootItem = false;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.scan_cache_detail), this.mHealthManager);
        if (System.currentTimeMillis() - a > TrafficCorrectSetting.TIME) {
            ExecutorService exec = Executors.newFixedThreadPool(1);
            try {
                int size = exec.submit(new Callable<Integer>() {
                    /* class com.lenovo.safecenter.HealthCheck.item.HealthClearCache.AnonymousClass1 */

                    /* Return type fixed from 'java.lang.Object' to match base method */
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Integer call() throws Exception {
                        return Integer.valueOf(HealthClearCache.a(HealthClearCache.this));
                    }
                }).get(8000, TimeUnit.MILLISECONDS).intValue();
                this.b = Formatter.formatShortFileSize(this.mContext, (long) size);
                exec.shutdownNow();
                if (size > 0) {
                    this.result = new HealthItemResult();
                    this.result.key = this.mKey;
                    this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                    this.result.title_detail = this.mContext.getString(R.string.scan_cache_detail);
                    this.result.content = String.format(this.mContext.getString(R.string.clear_cache_scan), this.b);
                    this.result.view_type = 2;
                    this.result.weight = 3;
                    this.result.isOnly = false;
                    this.result.action_description = this.mContext.getString(R.string.clear_text);
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
                Log.i("wu0wu", "HealthClearCache scan TimeoutException...");
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        ApplicationDataInfo.clearAllCache(this.mContext.getPackageManager());
        refreshTitle(null, this.mContext.getString(R.string.op_cache_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = String.format(this.mContext.getString(R.string.clear_cache_done), this.b);
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.mHealthManager.result(this.result);
        this.mHealthManager.setScore(this.mHealthManager.getScore() + 7);
        a = System.currentTimeMillis();
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
