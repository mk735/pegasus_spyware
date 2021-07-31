package tms;

import com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper;

public class gc implements IBatteryInfoHelper {
    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public double getCallRemainHours() {
        return 0.0d;
    }

    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public double getContinueRemainHours() {
        return 0.0d;
    }

    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public double getMaxPowerUseHours() {
        return 0.0d;
    }

    @Override // com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
    public double getStayRemainHours() {
        return 0.0d;
    }
}
