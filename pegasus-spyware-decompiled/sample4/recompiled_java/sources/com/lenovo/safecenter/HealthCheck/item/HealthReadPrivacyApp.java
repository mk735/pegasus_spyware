package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.support.AppInfo;
import com.lenovo.safecenter.utils.Const;
import java.util.ArrayList;

public class HealthReadPrivacyApp extends BaseHealthCheck {
    public final int SCORE_VALUE_BACKGROUD_READ_PRIVACY = 1;
    private int a = 0;
    private AppDatabase b;

    public HealthReadPrivacyApp(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 13;
        this.b = new AppDatabase(context);
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_sole_checkup_item), this.mContext.getString(R.string.scan_readPrivacyApp_detail), this.mHealthManager);
        if (Const.getProtectPeepSwitchState()) {
            ArrayList<AppInfo> readPrivacyList = this.b.loadApps(this.mContext, AppDatabase.PERM_TYPE_PRIVCY, canDoInRoot());
            this.a = this.b.healthCheckPermission(this.mContext, readPrivacyList);
            if (readPrivacyList.size() != 0) {
                this.result = new HealthItemResult();
                this.result.key = this.mKey;
                this.result.title = this.mContext.getString(R.string.lesafe_sole_checkup_item);
                this.result.title_detail = this.mContext.getString(R.string.scan_readPrivacyApp_detail);
                if (this.a != 0) {
                    this.result.content = String.format(this.mContext.getString(R.string.healthcheck_readPrivacy_can_op), Integer.valueOf(this.a));
                    this.result.view_type = 2;
                    this.result.weight = 3;
                    this.result.isOnly = true;
                    this.result.action_description = this.mContext.getString(R.string.optimizition);
                    this.mHealthManager.setScore(this.mHealthManager.getScore() - (this.a * 1));
                    this.mHealthManager.plusOrDecrementNumItem(2, true);
                    this.mPreViewType = 2;
                } else {
                    this.result.content = this.mContext.getString(R.string.healthcheck_readPrivacy_safe);
                    this.result.view_type = 5;
                    this.result.weight = 9;
                    this.result.isOnly = true;
                    this.result.action_description = this.mContext.getString(R.string.safe);
                    this.mHealthManager.plusOrDecrementNumItem(5, true);
                    this.mPreViewType = 5;
                }
                this.mHealthManager.result(this.result);
                progressAddAfterScanEveryItem(this.mHealthManager);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        this.b.expertSuggest(this.mContext, this.b.loadApps(this.mContext, AppDatabase.PERM_TYPE_PRIVCY, canDoInRoot()), false);
        refreshTitle(null, this.mContext.getString(R.string.op_readPrivacyApp_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = String.format(this.mContext.getString(R.string.healthcheck_readPrivacy_op), Integer.valueOf(this.a));
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.mHealthManager.result(this.result);
        this.mHealthManager.setScore(this.mHealthManager.getScore() + (this.a * 1));
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
