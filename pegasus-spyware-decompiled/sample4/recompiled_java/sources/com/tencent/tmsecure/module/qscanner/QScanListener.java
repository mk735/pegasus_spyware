package com.tencent.tmsecure.module.qscanner;

import java.util.ArrayList;

public abstract class QScanListener {
    public void onCloudScan() {
    }

    public void onCloudScanError(int i) {
    }

    public void onPackageScanProgress(int i, QScanResultEntity qScanResultEntity) {
    }

    public void onScanCanceled() {
    }

    public void onScanContinue() {
    }

    public void onScanFinished(ArrayList<QScanResultEntity> arrayList) {
    }

    public void onScanPaused() {
    }

    public void onScanStarted() {
    }

    public void onSdcardScanProgress(int i, QScanResultEntity qScanResultEntity) {
    }
}
