package com.lenovo.safecenter.HealthCheck.item;

import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.lenovo.safecenter.HealthCheck.BaseHealthCheck;
import com.lenovo.safecenter.HealthCheck.HealthItemResult;
import com.lenovo.safecenter.HealthCheck.HealthManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.AgainstTheftSet;
import com.lenovo.safecenter.platform.MyMultiSIMUtils;
import com.lenovo.safecenter.utils.Const;
import com.lenovo.safecenter.utils.DialogUtil;
import com.lenovo.safecenter.utils.PwdUtil;

public class HealthProtectThief extends BaseHealthCheck {
    public final int SCORE_VALUE_PROTECT_THIEF = 5;
    private boolean a = false;
    private boolean b = false;

    public boolean isShowProtectThiefActivity() {
        return this.b;
    }

    public HealthProtectThief(Context context, HealthManager healthManager) {
        this.mContext = context;
        this.mKey = 5;
        this.isRootItem = false;
        this.mHealthManager = healthManager;
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void scan() {
        refreshTitle(this.mContext.getString(R.string.lesafe_nomal_checkup_item), this.mContext.getString(R.string.against_theft), this.mHealthManager);
        this.result = new HealthItemResult();
        this.result.key = this.mKey;
        this.result.title = this.mContext.getString(R.string.lesafe_nomal_checkup_item);
        this.result.title_detail = this.mContext.getString(R.string.against_theft);
        boolean isOn = Const.getProtectThiefSwitchState();
        if (a()) {
            if (isOn) {
                this.result.content = this.mContext.getString(R.string.against_theft) + this.mContext.getString(R.string.opend);
                this.result.view_type = 5;
                this.result.weight = 9;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.safe);
                this.mHealthManager.plusOrDecrementNumItem(5, true);
                this.mPreViewType = 5;
            } else {
                this.result.content = this.mContext.getString(R.string.against_theft) + this.mContext.getString(R.string.no_open);
                this.result.view_type = 2;
                this.result.weight = 3;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.open);
                this.mHealthManager.plusOrDecrementNumItem(2, true);
                this.mPreViewType = 2;
                this.mHealthManager.setScore(this.mHealthManager.getScore() - 5);
            }
        } else if (isOn) {
            this.result.content = this.mContext.getString(R.string.against_theft) + this.mContext.getString(R.string.opend);
            this.result.view_type = 5;
            this.result.weight = 9;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
            this.mHealthManager.plusOrDecrementNumItem(5, true);
            this.mPreViewType = 5;
        } else {
            this.result.content = this.mContext.getString(R.string.against_theft) + this.mContext.getString(R.string.no_open);
            this.result.view_type = 3;
            this.result.weight = 5;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.open);
            this.mHealthManager.plusOrDecrementNumItem(3, true);
            this.mPreViewType = 3;
        }
        this.mHealthManager.result(this.result);
        progressAddAfterScanEveryItem(this.mHealthManager);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void optimiza() {
        Const.setProtecThiefSwitchState(true);
        if (!this.a) {
            this.mHealthManager.setScore(this.mHealthManager.getScore() + 5);
        }
        refreshTitle(null, this.mContext.getString(R.string.open_theft), this.mHealthManager);
        if (this.result != null) {
            this.result.content = this.mContext.getString(R.string.against_theft) + this.mContext.getString(R.string.opend);
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.mHealthManager.result(this.result);
    }

    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void manual() {
        this.b = false;
        if (!a()) {
            return;
        }
        if (Const.getProtectThiefSwitchState()) {
            if (this.result != null) {
                this.result.content = this.mContext.getString(R.string.against_theft) + this.mContext.getString(R.string.opend);
                this.result.view_type = 4;
                this.result.weight = 7;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.safe);
            }
            this.mHealthManager.plusOrDecrementNumItem(4, true);
            this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
            this.mHealthManager.result(this.result);
            this.mHealthManager.saveHealthScoreAndCheckupTime();
            return;
        }
        if (this.result != null) {
            this.result.view_type = 4;
            this.result.weight = 7;
            this.result.isOnly = false;
            this.result.action_description = this.mContext.getString(R.string.safe);
        }
        this.mHealthManager.plusOrDecrementNumItem(4, true);
        this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
        this.a = true;
        this.mHealthManager.result(this.result);
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void click() {
        if (!PwdUtil.hasPassword(this.mContext)) {
            this.b = true;
            DialogUtil.NoticeDialog(this.mContext, 0, this.mContext.getString(R.string.info), this.mContext.getString(R.string.manual_optimizition_protect_thief_dialog_content), this.mContext.getString(R.string.set), null);
        } else if (!c()) {
            DialogUtil.NoticePositiveDialog(this.mContext, 2, this.mContext.getString(R.string.info), this.mContext.getString(R.string.sim_no_ready), null);
        } else if (b()) {
            if (this.result != null) {
                this.result.content = this.mContext.getString(R.string.against_theft) + this.mContext.getString(R.string.opend);
                this.result.view_type = 4;
                this.result.weight = 7;
                this.result.isOnly = false;
                this.result.action_description = this.mContext.getString(R.string.safe);
            }
            this.mHealthManager.plusOrDecrementNumItem(4, true);
            this.mHealthManager.plusOrDecrementNumItem(this.mPreViewType, false);
            this.mHealthManager.result(this.result);
            Const.setProtecThiefSwitchState(true);
            this.mHealthManager.saveHealthScoreAndCheckupTime();
        } else {
            this.b = true;
            Intent intent = new Intent(this.mContext, AgainstTheftSet.class);
            intent.setFlags(268435456);
            this.mContext.startActivity(intent);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.HealthCheck.BaseHealthCheck
    public void clear() {
        this.result = null;
    }

    private boolean a() {
        if (!PwdUtil.hasPassword(this.mContext) || !b() || !c()) {
            return false;
        }
        return true;
    }

    private static boolean b() {
        if (TextUtils.isEmpty(Const.getSafePhoneNumber())) {
            return false;
        }
        return true;
    }

    private boolean c() {
        boolean sim1Ready;
        boolean sim2Ready;
        if (!MyMultiSIMUtils.isMultiSim(this.mContext)) {
            return ((TelephonyManager) this.mContext.getSystemService("phone")).getSimState() == 5;
        }
        int[] states = MyMultiSIMUtils.getAllSimState(this.mContext);
        int simState0 = states[0];
        int simState1 = states[1];
        if (simState0 == 5) {
            sim1Ready = true;
        } else {
            sim1Ready = false;
        }
        if (simState1 == 5) {
            sim2Ready = true;
        } else {
            sim2Ready = false;
        }
        return sim1Ready || sim2Ready;
    }
}
