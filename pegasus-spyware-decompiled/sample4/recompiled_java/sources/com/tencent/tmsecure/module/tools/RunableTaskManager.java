package com.tencent.tmsecure.module.tools;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.gv;

public final class RunableTaskManager extends BaseManager {
    private gv a;

    public final boolean addTask(Runnable runnable, long j) {
        return this.a.a(runnable, j);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new gv();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
