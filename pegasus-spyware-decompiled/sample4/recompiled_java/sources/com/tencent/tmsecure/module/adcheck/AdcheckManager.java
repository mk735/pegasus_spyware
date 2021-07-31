package com.tencent.tmsecure.module.adcheck;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.List;
import tms.ak;

public final class AdcheckManager extends BaseManager {
    private ak a;

    public final boolean checkIsAd(NotificationInfo notificationInfo) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(notificationInfo);
    }

    public final boolean clear(NotificationInfo notificationInfo) {
        return this.a.b(notificationInfo);
    }

    public final boolean clear(List<NotificationInfo> list) {
        return this.a.a(list);
    }

    public final ArrayList<NotificationInfo> findAllNotificationInfo() {
        return isExpired() ? new ArrayList<>() : this.a.a();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new ak();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
