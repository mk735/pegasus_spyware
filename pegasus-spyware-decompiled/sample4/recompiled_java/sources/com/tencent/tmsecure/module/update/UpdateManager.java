package com.tencent.tmsecure.module.update;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.List;
import tms.gy;

public final class UpdateManager extends BaseManager {
    private gy a;

    public final void addObserver(int i, IUpdateObserver iUpdateObserver) {
        this.a.a(i, iUpdateObserver);
    }

    public final void cancel() {
        this.a.a();
    }

    public final void check(int i, ICheckListener iCheckListener) {
        this.a.a(i, iCheckListener);
    }

    public final String getFileSavePath() {
        return this.a.b();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new gy();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void removeObserver(int i) {
        this.a.a(i);
    }

    public final void update(List<UpdateInfo> list, IUpdateListener iUpdateListener) {
        this.a.a(list, iUpdateListener);
    }
}
