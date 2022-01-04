package com.tencent.tmsecure.module.network;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        NetworkManager networkManager = (NetworkManager) ManagerCreator.getManager(NetworkManager.class);
        networkManager.addDefaultMobileMonitor(null, null);
        networkManager.addDefaultWifiMonitor(null, null);
        networkManager.removeMonitor(null);
        networkManager.addMonitor(null, null, null);
        networkManager.clearTrafficInfo(null);
        networkManager.findMonitor(null);
        networkManager.getInterval();
        networkManager.getIntervalType();
        networkManager.getMobileRxBytes(null);
        networkManager.getMobileTxBytes(null);
        networkManager.getTrafficEntity(null);
        networkManager.getWIFIRxBytes(null);
        networkManager.getWIFITxBytes(null);
        networkManager.isEnable();
        networkManager.isSupportTrafficState();
        networkManager.notifyConfigChange();
        networkManager.refreshTrafficInfo(null, false);
        networkManager.setEnable(false);
        networkManager.setInterval(0);
        networkManager.updateSelfMobileDownloadBytes(0);
        networkManager.getSelfMobileDownloadBytes();
        networkManager.updateSelfMobileUploadBytes(0);
        networkManager.getSelfMobileUploadBytes();
        TrafficCorrectionManager trafficCorrectionManager = (TrafficCorrectionManager) ManagerCreator.getManager(TrafficCorrectionManager.class);
        trafficCorrectionManager.startCorrection(null);
        trafficCorrectionManager.getCorrectionResult(null, null, null);
    }
}
