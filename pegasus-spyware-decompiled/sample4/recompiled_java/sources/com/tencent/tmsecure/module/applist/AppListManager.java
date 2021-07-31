package com.tencent.tmsecure.module.applist;

import QQPIM.SoftListType;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.as;

public class AppListManager extends BaseManager {
    private as a;

    public boolean contains(String str, SoftListType softListType) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(str, softListType);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public void onCreate(Context context) {
        this.a = new as();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
