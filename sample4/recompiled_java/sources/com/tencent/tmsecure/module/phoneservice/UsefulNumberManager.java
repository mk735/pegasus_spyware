package com.tencent.tmsecure.module.phoneservice;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import tms.fk;

public final class UsefulNumberManager extends BaseManager {
    private fk a;

    public final List<UsefulNumberEntity> getAllYellowNumbers() {
        return isExpired() ? new ArrayList() : this.a.a();
    }

    public final HashMap<String, ArrayList<UsefulNumberEntity>> getAllYellowNumbersWithGroup() {
        return isExpired() ? new HashMap<>() : this.a.b();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new fk();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
