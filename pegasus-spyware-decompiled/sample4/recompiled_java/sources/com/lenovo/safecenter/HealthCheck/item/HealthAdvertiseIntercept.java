package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.notificationintercept.UrlOptionUtils;

public class HealthAdvertiseIntercept extends BaseHealthCheck {
    public final int SCORE_VALUE_ADVERTISEMENT_INTERCEPT = 4;

    public HealthAdvertiseIntercept(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 1;
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_sole_checkup_item), this.mContext.getString(R.string.scan_advertise_intercept_detail), this.mHealthManager);
        this.result = new HealthItemResult();
        this.result.key = this.mKey;
        this.result.title = this.mContext.getString(R.string.lesafe_sole_checkup_item);
        this.result.title_detail = this.mContext.getString(R.string.scan_advertise_intercept_detail);
        if (UrlOptionUtils.isAdOpen(this.mContext)) {
            this.result.content = this.mContext.getString(R.string.adv_desc) + this.mContext.getString(R.string.opend);
            this.result.view_type = 5;
            this.result.weight = 9;
            this.result.isOnly = true;
            this.result.action_description = this.mContext.getString(R.string.safe);
            this.mHealthManager.plusOrDecrementNumItem(5, true);
        } else {
            this.result.content = this.mContext.getString(R.string.adv_desc) + this.mContext.getString(R.string.no_open);
            this.result.view_type = 2;
            this.result.weight = 3;
            this.result.isOnly = true;
            this.result.action_description = this.mContext.getString(R.string.open);
            this.mHealthManager.setScore(this.mHealthManager.getScore() - 4);
            this.mHealthManager.plusOrDecrementNumItem(2, true);
            this.mPreViewType = 2;
        }
        this.mHealthManager.result(this.result);
        progressAddAfterScanEveryItem(this.mHealthManager);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        refreshTitle(null, this.mContext.getString(R.string.op_advertise_intercept_detail), this.mHealthManager);
        if (UrlOptionUtils.adSwitch(this.mContext, true)) {
            if (this.result != null) {
                this.result.content = this.mContext.getString(R.string.adv_desc) + this.mContext.getString(R.string.opend);
                this.result.view_type = 4;
                this.result.weight = 7;
                this.result.isOnly = true;
                this.result.action_description = this.mContext.getString(R.string.safe);
            }
            this.mHealthManager.plusOrDecrementNumItem(4, true);
            this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
            this.mHealthManager.result(this.result);
            this.mHealthManager.setScore(this.mHealthManager.getScore() + 4);
        }
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
