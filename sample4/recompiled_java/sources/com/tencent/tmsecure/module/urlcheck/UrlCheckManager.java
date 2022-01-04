package com.tencent.tmsecure.module.urlcheck;

import QQPIM.UrlCheckResponse;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tms.ha;

public final class UrlCheckManager extends BaseManager {
    private ha a;

    public final int checkApkUrl(String str) {
        if (isExpired()) {
            return 0;
        }
        return this.a.b(str);
    }

    public final UrlCheckResponse checkUrl(String str) {
        return isExpired() ? new UrlCheckResponse(str, 0, 0, 0, "") : this.a.a(str);
    }

    public final Map<String, UrlCheckResponse> checkUrlEx(List<String> list) {
        return isExpired() ? new HashMap(0) : this.a.a(list);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new ha();
        this.a.onCreate(context);
        setImpl(this.a);
    }
}
