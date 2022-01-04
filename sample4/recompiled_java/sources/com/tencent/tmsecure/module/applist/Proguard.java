package com.tencent.tmsecure.module.applist;

import QQPIM.SoftListType;
import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        ((AppListManager) ManagerCreator.getManager(AppListManager.class)).contains(null, SoftListType.BLACKLIST_ROM);
    }
}
