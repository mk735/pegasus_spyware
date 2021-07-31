package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.performancecenter.performance.BootSpeedActivity;
import com.lenovo.performancecenter.performance.DataLayerManagerAccelerate;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.WflUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class HealthBootApp extends BaseHealthCheck {
    private int a = 0;
    private boolean b;

    public HealthBootApp(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 7;
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_sole_checkup_item), this.mContext.getString(R.string.scan_bootapp_detail), this.mHealthManager);
        ExecutorService exec = Executors.newFixedThreadPool(1);
        try {
            this.a = exec.submit(new Callable<Integer>() {
                /* class com.lenovo.safecenter.HealthCheck.item.HealthBootApp.AnonymousClass1 */

                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Integer call() throws Exception {
                    return Integer.valueOf(DataLayerManagerAccelerate.getBootCountForHealth(HealthBootApp.this.mContext));
                }
            }).get(8000, TimeUnit.MILLISECONDS).intValue();
            exec.shutdownNow();
            WflUtils.Log("d", "wu0wu", "scanBootApp() bootCount=" + this.a);
            this.result = new HealthItemResult();
            this.result.key = this.mKey;
            this.result.title = this.mContext.getString(R.string.lesafe_sole_checkup_item);
            this.result.title_detail = this.mContext.getString(R.string.scan_bootapp_detail);
            if (this.a != 0) {
                this.result.content = String.format(this.mContext.getString(R.string.boot_app_healthcheckup_scan), Integer.valueOf(this.a));
                this.result.view_type = 3;
                this.result.weight = 5;
                this.result.isOnly = true;
                this.result.action_description = this.mContext.getString(R.string.optimizition);
                this.mHealthManager.plusOrDecrementNumItem(3, true);
                this.mPreViewType = 3;
            } else {
                this.result.content = this.mContext.getString(R.string.boot_app_healthcheckup_safe);
                this.result.view_type = 5;
                this.result.weight = 9;
                this.result.isOnly = true;
                this.result.action_description = this.mContext.getString(R.string.safe);
                this.mHealthManager.plusOrDecrementNumItem(5, true);
            }
            this.mHealthManager.result(this.result);
            progressAddAfterScanEveryItem(this.mHealthManager);
        } catch (InterruptedException e) {
            e.printStackTrace();
            exec.shutdownNow();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            exec.shutdownNow();
        } catch (TimeoutException e3) {
            e3.printStackTrace();
            exec.shutdownNow();
            Log.i("wu0wu", "HealthBootApp scan TimeoutException...");
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
    }

    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void manual() {
        this.b = false;
        ExecutorService exec = Executors.newFixedThreadPool(1);
        try {
            this.a = exec.submit(new Callable<Integer>() {
                /* class com.lenovo.safecenter.HealthCheck.item.HealthBootApp.AnonymousClass2 */

                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Integer call() throws Exception {
                    return Integer.valueOf(DataLayerManagerAccelerate.getBootCountForHealth(HealthBootApp.this.mContext));
                }
            }).get(8000, TimeUnit.MILLISECONDS).intValue();
            exec.shutdownNow();
            WflUtils.Log("d", "wu0wu", "scanBootApp() bootCount=" + this.a);
            if (this.a != 0) {
                if (this.result != null) {
                    this.result.content = String.format(this.mContext.getString(R.string.boot_app_healthcheckup_scan), Integer.valueOf(this.a));
                    this.result.view_type = 3;
                    this.result.weight = 5;
                    this.result.isOnly = true;
                    this.result.action_description = this.mContext.getString(R.string.optimizition);
                }
                this.mHealthManager.plusOrDecrementNumItem(3, true);
                this.mPreViewType = 3;
            } else {
                this.result.content = this.mContext.getString(R.string.boot_app_healthcheckup_safe);
                this.result.view_type = 4;
                this.result.weight = 7;
                this.result.isOnly = true;
                this.result.action_description = this.mContext.getString(R.string.safe);
                this.mHealthManager.plusOrDecrementNumItem(4, true);
            }
            this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
            this.mHealthManager.result(this.result);
        } catch (InterruptedException e) {
            e.printStackTrace();
            exec.shutdownNow();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            exec.shutdownNow();
        } catch (TimeoutException e3) {
            e3.printStackTrace();
            exec.shutdownNow();
            Log.i("wu0wu", "HealthBootApp op TimeoutException...");
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void click() {
        this.mContext.startActivity(new Intent(this.mContext, BootSpeedActivity.class));
        this.b = true;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void clear() {
        this.result = null;
    }

    public boolean isShowBootSpeedActivity() {
        return this.b;
    }
}
