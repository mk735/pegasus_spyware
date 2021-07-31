package com.tencent.tmsecure.module.antitheft;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        AntitheftManager antitheftManager = (AntitheftManager) ManagerCreator.getManager(AntitheftManager.class);
        antitheftManager.getHelperNumber();
        antitheftManager.getPassword();
        antitheftManager.handleSmsCommand(null, null, null);
        antitheftManager.setHelperNumber(null);
        antitheftManager.setPassword(null);
    }
}
