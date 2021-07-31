package com.lenovo.safecenter.notificationintercept.support;

import android.content.Context;

public interface IScanUtils {
    void adScan();

    void notifyScanAll(Context context);

    void notifyScanSingle(Context context, String str);
}
