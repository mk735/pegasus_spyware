package com.tencent.tmsecure.module.optimize;

import android.content.pm.PackageManager;
import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        OptimizeManager optimizeManager = (OptimizeManager) ManagerCreator.getManager(OptimizeManager.class);
        optimizeManager.getAllRunningProcess(false);
        try {
            optimizeManager.closeProcess(new String());
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        IAutoBootHelper autoBootHelper = optimizeManager.getAutoBootHelper();
        autoBootHelper.getAllAutoBootApps();
        autoBootHelper.setAutoBootEnable(null, false);
        IMemoryHelper memoryHelper = optimizeManager.getMemoryHelper();
        memoryHelper.clearAllCacheData();
        memoryHelper.clearCacheData(null);
        memoryHelper.getAllAppPackageStats(null);
        memoryHelper.getAppPackageStats(null);
        memoryHelper.getFreeMemery();
        memoryHelper.getRamSize(null);
        memoryHelper.getTotalMemery();
        ICpuHelper cpuHelper = optimizeManager.getCpuHelper();
        cpuHelper.getCpuInfoMaxFreq();
        cpuHelper.getScalingAvaliableGovernors();
        cpuHelper.getScalingAvaliableFrequencies();
    }
}
