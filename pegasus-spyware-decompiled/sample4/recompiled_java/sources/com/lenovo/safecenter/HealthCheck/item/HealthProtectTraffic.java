package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;

public class HealthProtectTraffic extends BaseHealthCheck {
    public final int SCORE_VALUE_PROTECT_TRAFFIC = 8;

    public HealthProtectTraffic(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 10;
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_sole_checkup_item), this.mContext.getString(R.string.scan_protect_traffic_detail), this.mHealthManager);
        this.result = new HealthItemResult();
        this.result.key = this.mKey;
        this.result.title = this.mContext.getString(R.string.lesafe_sole_checkup_item);
        this.result.title_detail = this.mContext.getString(R.string.scan_protect_traffic_detail);
        this.result.content = this.mContext.getString(R.string.charge_safe) + this.mContext.getString(R.string.protecting_text);
        this.result.view_type = 5;
        this.result.weight = 9;
        this.result.isOnly = true;
        this.result.action_description = this.mContext.getString(R.string.safe);
        this.mHealthManager.plusOrDecrementNumItem(5, true);
        this.mPreViewType = 5;
        this.mHealthManager.result(this.result);
        progressAddAfterScanEveryItem(this.mHealthManager);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        Const.setProtectTrafficSwitchState(true);
        refreshTitle(null, this.mContext.getString(R.string.op_protect_traffic_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = this.mContext.getString(R.string.charge_safe) + this.mContext.getString(R.string.protecting_text);
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.mHealthManager.result(this.result);
        this.mHealthManager.setScore(this.mHealthManager.getScore() + 8);
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
