package com.tencent.tmsecure.module.antitheft;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import tms.al;
import tms.ao;

public final class AntitheftManager extends BaseManager {
    private al a;

    public final String encryptPassword(String str) {
        return isExpired() ? "" : ao.c(str);
    }

    public final String getHelperNumber() {
        return isExpired() ? "" : this.a.a().a();
    }

    public final String getPassword() {
        return isExpired() ? "" : this.a.a().a(false);
    }

    public final boolean handleSmsCommand(IAntitheftTips iAntitheftTips, String str, String str2) {
        if (isExpired()) {
            return false;
        }
        return this.a.a(iAntitheftTips, str, str2);
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new al();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void setHelperNumber(String str) {
        if (!isExpired()) {
            this.a.a().b(str);
        }
    }

    public final void setPassword(String str) {
        if (!isExpired()) {
            this.a.a().a(str);
        }
    }
}
