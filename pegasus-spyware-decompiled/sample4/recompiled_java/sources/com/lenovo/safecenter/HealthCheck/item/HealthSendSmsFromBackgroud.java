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

public class HealthSendSmsFromBackgroud extends BaseHealthCheck {
    public final int SCORE_VALUE_BACKGROUD_SENDSMS = 1;
    private AppDatabase a;
    private int b;

    public HealthSendSmsFromBackgroud(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 11;
        this.a = new AppDatabase(context);
        this.isRootItem = true;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_sole_checkup_item), this.mContext.getString(R.string.scan_sendsms_frombackgroud_detail), this.mHealthManager);
        if (Const.getProtectTrafficSwitchState()) {
            ArrayList<AppInfo> sendSmsList = this.a.loadApps(this.mContext, AppDatabase.DB_APP_SENDMESSAGE, canDoInRoot());
            this.b = this.a.healthCheckPermission(this.mContext, sendSmsList);
            if (sendSmsList.size() != 0) {
                this.result = new HealthItemResult();
                this.result.key = this.mKey;
                this.result.title = this.mContext.getString(R.string.lesafe_sole_checkup_item);
                this.result.title_detail = this.mContext.getString(R.string.scan_sendsms_frombackgroud_detail);
                if (this.b != 0) {
                    this.result.content = String.format(this.mContext.getString(R.string.healthcheck_sendsms_can_op), Integer.valueOf(this.b));
                    this.result.view_type = 2;
                    this.result.weight = 3;
                    this.result.isOnly = true;
                    this.result.action_description = this.mContext.getString(R.string.optimizition);
                    this.mHealthManager.setScore(this.mHealthManager.getScore() - (this.b * 1));
                    this.mHealthManager.plusOrDecrementNumItem(2, true);
                    this.mPreViewType = 2;
                } else {
                    this.result.content = this.mContext.getString(R.string.healthcheck_sendsms_safe);
                    this.result.view_type = 5;
                    this.result.weight = 9;
                    this.result.isOnly = true;
                    this.result.action_description = this.mContext.getString(R.string.safe);
                    this.mHealthManager.plusOrDecrementNumItem(5, true);
                }
                this.mHealthManager.result(this.result);
                progressAddAfterScanEveryItem(this.mHealthManager);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        this.a.expertSuggest(this.mContext, this.a.loadApps(this.mContext, AppDatabase.DB_APP_SENDMESSAGE, canDoInRoot()), false);
        refreshTitle(null, this.mContext.getString(R.string.op_sendsms_frombackgroud_detail), this.mHealthManager);
        if (this.result != null) {
            this.result.content = String.format(this.mContext.getString(R.string.healthcheck_sendsms_op), Integer.valueOf(this.b));
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.mHealthManager.result(this.result);
        this.mHealthManager.setScore(this.mHealthManager.getScore() + (this.b * 1));
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
