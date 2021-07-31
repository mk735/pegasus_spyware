package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;

public class HealthProtectPrivacy extends BaseHealthCheck {
    public final int SCORE_VALUE_PROTECT_PRIVACY = 8;

    public HealthProtectPrivacy(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 12;
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.scan_protect_privacy_detail), this.mHealthManager);
        this.result = new HealthItemResult();
        this.result.key = this.mKey;
        this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
        this.result.title_detail = this.mContext.getString(R.string.scan_protect_privacy_detail);
        this.result.content = this.mContext.getString(R.string.main_tab_private) + this.mContext.getString(R.string.opend);
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
        Const.setProtectPeepSwitchState(true);
        refreshTitle(null, this.mContext.getString(R.string.op_protect_privacy_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = this.mContext.getString(R.string.main_tab_private) + this.mContext.getString(R.string.opend);
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
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
