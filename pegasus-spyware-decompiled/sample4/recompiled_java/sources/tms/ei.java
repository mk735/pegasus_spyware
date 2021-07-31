package tms;

import com.tencent.tmsecure.module.optimize.ICpuHelper;

public final class ei implements ICpuHelper {
    private ICpuHelper a;

    public ei(ICpuHelper iCpuHelper) {
        this.a = iCpuHelper;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int getAvailableCpus() {
        return 1;
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int getCpuInfoMaxFreq() {
        return this.a.getCpuInfoMaxFreq();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int getCpuInfoMinFreq() {
        return this.a.getCpuInfoMinFreq();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int getKernelMax() {
        return this.a.getKernelMax();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final String[] getOnlineCpus() {
        return this.a.getOnlineCpus();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int[] getScalingAvaliableFrequencies() {
        return this.a.getScalingAvaliableFrequencies();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final String[] getScalingAvaliableGovernors() {
        return this.a.getScalingAvaliableGovernors();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int getScalingCurFreq() {
        return this.a.getScalingCurFreq();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final String getScalingGovernor() {
        return this.a.getScalingGovernor();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int getScalingMaxFreq() {
        return this.a.getScalingMaxFreq();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final int getScalingMinFreq() {
        return this.a.getScalingMinFreq();
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final void setScalingFreq(int i) throws IllegalArgumentException {
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final void setScalingGovernor(String str) throws IllegalArgumentException {
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final void setScalingMaxFreq(int i) throws IllegalArgumentException {
    }

    @Override // com.tencent.tmsecure.module.optimize.ICpuHelper
    public final void setScalingMinFreq(int i) throws IllegalArgumentException {
    }
}
