package com.tencent.tmsecure.module.powersaving;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        PowerSavingManager powerSavingManager = (PowerSavingManager) ManagerCreator.getManager(PowerSavingManager.class);
        powerSavingManager.setPowerSavingConfig(null, false);
        IBatteryInfoHelper batteryInfoHelper = powerSavingManager.getBatteryInfoHelper();
        batteryInfoHelper.getMaxPowerUseHours();
        batteryInfoHelper.getCallRemainHours();
        batteryInfoHelper.getContinueRemainHours();
    }
}
