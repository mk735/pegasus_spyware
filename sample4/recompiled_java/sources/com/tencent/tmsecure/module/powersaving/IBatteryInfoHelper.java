package com.tencent.tmsecure.module.powersaving;

public interface IBatteryInfoHelper {
    double getCallRemainHours();

    double getContinueRemainHours();

    double getMaxPowerUseHours();

    double getStayRemainHours();
}
