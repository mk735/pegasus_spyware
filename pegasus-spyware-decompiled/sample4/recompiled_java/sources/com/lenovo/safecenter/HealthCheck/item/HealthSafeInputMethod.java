package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.provider.Settings;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;

public class HealthSafeInputMethod extends BaseHealthCheck {
    public final int SCORE_VALUE_SAFE_INPUT_METHOD_ON = 8;

    public HealthSafeInputMethod(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 17;
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_sole_checkup_item), this.mContext.getString(R.string.scan_safeinput_method_detail), this.mHealthManager);
        if (Const.getSafeInputMethod_state() == 1) {
            this.result = new HealthItemResult();
            this.result.key = this.mKey;
            this.result.title = this.mContext.getString(R.string.lesafe_sole_checkup_item);
            this.result.title_detail = this.mContext.getString(R.string.scan_safeinput_method_detail);
            if (Settings.System.getInt(this.mContext.getContentResolver(), "safeinputmethod_on", 0) == 1) {
                this.result.content = this.mContext.getString(R.string.safeinputmethod_protecting);
                this.result.view_type = 5;
                this.result.weight = 9;
                this.result.isOnly = true;
                this.result.action_description = this.mContext.getString(R.string.safe);
                this.mHealthManager.plusOrDecrementNumItem(5, true);
            } else {
                this.result.content = this.mContext.getString(R.string.safeinputmethod) + this.mContext.getString(R.string.no_open);
                this.result.view_type = 2;
                this.result.weight = 3;
                this.result.isOnly = true;
                this.result.action_description = this.mContext.getString(R.string.open);
                this.mHealthManager.setScore(this.mHealthManager.getScore() - 8);
                this.mHealthManager.plusOrDecrementNumItem(2, true);
                this.mPreViewType = 2;
            }
            this.mHealthManager.result(this.result);
            progressAddAfterScanEveryItem(this.mHealthManager);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        Settings.System.putInt(this.mContext.getContentResolver(), "safeinputmethod_on", 1);
        refreshTitle(null, this.mContext.getString(R.string.op_safeinput_method_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = this.mContext.getString(R.string.safeinputmethod_protecting);
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = true;
            this.result.action_description = this.mContext.getString(R.string.open);
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
