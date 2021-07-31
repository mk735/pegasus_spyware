package com.lenovo.safecenter.HealthCheck;

import android.content.Context;
import com.lenovo.safecenter.utils.WflUtils;

public abstract class BaseHealthCheck {
    protected boolean isRootItem = false;
    protected Context mContext;
    protected HealthManager mHealthManager;
    protected int mKey = 0;
    protected int mPreViewType = 0;
    protected HealthItemResult result = null;

    /* access modifiers changed from: protected */
    public abstract void clear();

    /* access modifiers changed from: protected */
    public abstract void click();

    /* access modifiers changed from: protected */
    public abstract void manual();

    /* access modifiers changed from: protected */
    public abstract void optimiza();

    /* access modifiers changed from: protected */
    public abstract void scan();

    /* access modifiers changed from: protected */
    public void refreshTitle(String title, String titleDetail, HealthManager mHealthManager2) {
        HealthItemResult result2 = new HealthItemResult();
        result2.title = title;
        result2.title_detail = titleDetail;
        mHealthManager2.onOneItemProcess(result2);
    }

    /* access modifiers changed from: protected */
    public void progressAddAfterScanEveryItem(HealthManager healthManager) {
        healthManager.setScanProgress(healthManager.getScanProgress() + healthManager.getValueProgressEveryCheck());
    }

    /* access modifiers changed from: protected */
    public boolean canDoInRoot() {
        return WflUtils.isRoot();
    }
}
