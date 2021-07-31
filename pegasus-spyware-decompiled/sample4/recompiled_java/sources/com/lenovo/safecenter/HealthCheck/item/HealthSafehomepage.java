package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.util.Log;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.Laboratory.SafeHomePage;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.lenovo.safecenter.support.CMDHelper;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class HealthSafehomepage extends BaseHealthCheck {
    public final int SCORE_VALUE_SAFE_HOMEPAGE = 4;

    public HealthSafehomepage(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 3;
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.scan_safehomepage_titledetail), this.mHealthManager);
        if (TrafficStatsService.nacServerIsExist()) {
            ExecutorService exec = Executors.newFixedThreadPool(1);
            try {
                Boolean isOn = exec.submit(new Callable<Boolean>() {
                    /* class com.lenovo.safecenter.HealthCheck.item.HealthSafehomepage.AnonymousClass1 */

                    /* Return type fixed from 'java.lang.Object' to match base method */
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Boolean call() throws Exception {
                        return Boolean.valueOf(CMDHelper.homePageOn(HealthSafehomepage.this.mContext));
                    }
                }).get(8000, TimeUnit.MILLISECONDS);
                exec.shutdownNow();
                if (!isOn.booleanValue()) {
                    this.result = new HealthItemResult();
                    this.result.key = this.mKey;
                    this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
                    this.result.title_detail = this.mContext.getString(R.string.scan_safehomepage_titledetail);
                    this.result.content = this.mContext.getString(R.string.scan_safehomepage_detail);
                    this.result.view_type = 3;
                    this.result.weight = 5;
                    this.result.isOnly = false;
                    this.result.action_description = this.mContext.getString(R.string.open);
                    this.mHealthManager.plusOrDecrementNumItem(3, true);
                    this.mPreViewType = 3;
                    this.mHealthManager.result(this.result);
                    progressAddAfterScanEveryItem(this.mHealthManager);
                    TrackEvent.reportHealthNoOpenSafeHomePage();
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
                Log.i("wu0wu", "HealthSafehomepage scan TimeoutException...");
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void manual() {
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void click() {
        SafeHomePage.getDefault(this.mContext).register();
        if (this.result != null) {
            this.result.content = this.mContext.getString(R.string.op_safehomepage_detail);
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.mHealthManager.result(this.result);
        TrackEvent.reportUserActionHealthManualOpenSafeHomePage();
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void clear() {
        this.result = null;
    }
}
