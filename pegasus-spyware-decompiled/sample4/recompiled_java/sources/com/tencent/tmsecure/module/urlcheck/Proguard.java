package com.tencent.tmsecure.module.urlcheck;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        UrlCheckManager urlCheckManager = (UrlCheckManager) ManagerCreator.getManager(UrlCheckManager.class);
        urlCheckManager.checkUrl(null);
        urlCheckManager.checkUrlEx(null);
    }
}
