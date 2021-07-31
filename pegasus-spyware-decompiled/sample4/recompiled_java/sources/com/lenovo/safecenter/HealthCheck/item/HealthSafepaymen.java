package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.os.Looper;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.Laboratory.MyProcessObserver;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;

public class HealthSafepaymen extends BaseHealthCheck {
    public final int SCORE_VALUE_SAFE_PAY_MEN_ON = 8;

    public HealthSafepaymen(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 16;
        this.isRootItem = false;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.scan_safepaymen_detail), this.mHealthManager);
        if (Const.SDK_VERSION >= 14) {
            this.result = new HealthItemResult();
            this.result.key = this.mKey;
            this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
            this.result.title_detail = this.mContext.getString(R.string.scan_safepaymen_detail);
            if (Const.isSafepaymen_on()) {
                this.result.content = this.mContext.getString(R.string.safepaymen_protecting);
                this.result.view_type = 5;
                this.result.weight = 9;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.safe);
                this.mHealthManager.plusOrDecrementNumItem(5, true);
            } else {
                this.result.content = this.mContext.getString(R.string.paymentapp) + this.mContext.getString(R.string.no_open);
                this.result.view_type = 2;
                this.result.weight = 3;
                this.result.isOnly = false;
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
        Looper.prepare();
        MyProcessObserver.getDefault(this.mContext).register();
        refreshTitle(null, this.mContext.getString(R.string.op_safepaymen_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = this.mContext.getString(R.string.safepaymen_protecting);
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
