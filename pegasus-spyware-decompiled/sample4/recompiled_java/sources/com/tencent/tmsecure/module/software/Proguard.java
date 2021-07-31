package com.tencent.tmsecure.module.software;

import com.tencent.tmsecure.common.ManagerCreator;
import java.util.ArrayList;

public final class Proguard {
    public final void callAllMethods() {
        SoftwareManager softwareManager = (SoftwareManager) ManagerCreator.getManager(SoftwareManager.class);
        softwareManager.isPackageInstalled(null);
        softwareManager.getAppVersionStatus(null, 0);
        softwareManager.getInstalledApp(0, 0);
        softwareManager.getAppInfo(new String(), 0);
        softwareManager.getAppInfo(new AppEntity(), 0);
        softwareManager.installApp(null, null, 0);
        softwareManager.installApp(null);
        softwareManager.installAppSilently(null);
        softwareManager.uninstallApp(null, null, 0);
        softwareManager.uninstallAppSilently(null);
        softwareManager.getAppsCanMovable(0, 0, false);
        softwareManager.startUpApp(null);
        softwareManager.goToInstalledAppDetails(null);
        softwareManager.getApkList(null, null, false, 0);
        softwareManager.getApkListFromSDCard(null, false, 0);
        softwareManager.getApkInfo(new AppEntity(), 0);
        softwareManager.getApkInfo(new String(), 0);
        softwareManager.clearUsageInfo();
        softwareManager.refleshUsageInfo();
        softwareManager.getUseageInfo(new String());
        softwareManager.getUseageInfo(new ArrayList());
    }
}
