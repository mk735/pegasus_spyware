package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;

public class HealthPrivateZone extends BaseHealthCheck {
    public HealthPrivateZone(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 18;
        this.isRootItem = false;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.scan_private_zone_detail), this.mHealthManager);
        this.result = new HealthItemResult();
        this.result.key = this.mKey;
        this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
        this.result.title_detail = this.mContext.getString(R.string.scan_private_zone_detail);
        this.result.content = this.mContext.getString(R.string.scan_private_zone_detail);
        this.result.view_type = 5;
        this.result.weight = 9;
        this.result.isOnly = false;
        this.result.action_description = this.mContext.getString(R.string.safe);
        this.mHealthManager.plusOrDecrementNumItem(5, true);
        this.mPreViewType = 5;
        this.mHealthManager.result(this.result);
        progressAddAfterScanEveryItem(this.mHealthManager);
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
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void clear() {
        this.result = null;
    }
}
