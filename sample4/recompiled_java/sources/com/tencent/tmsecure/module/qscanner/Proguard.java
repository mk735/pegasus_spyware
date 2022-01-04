package com.tencent.tmsecure.module.qscanner;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        QScannerManager qScannerManager = (QScannerManager) ManagerCreator.getManager(QScannerManager.class);
        qScannerManager.scanInstalledPackages(null, false);
        qScannerManager.scanSdcardApks(null, false);
        qScannerManager.scanGlobal(null, false);
        qScannerManager.scanPackages(null, null, false);
        qScannerManager.scanApks(null, null, false);
        qScannerManager.cancelScan();
        qScannerManager.continueScan();
        qScannerManager.pauseScan();
    }
}
