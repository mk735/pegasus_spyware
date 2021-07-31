package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard {
    public final void callAllMethods() {
        AresEngineManager aresEngineManager = (AresEngineManager) ManagerCreator.getManager(AresEngineManager.class);
        aresEngineManager.addIntercepter(null);
        aresEngineManager.findIntercepter(null);
        aresEngineManager.getAresEngineFactor();
        aresEngineManager.setAresEngineFactor(null);
        aresEngineManager.intercepters();
        aresEngineManager.getIntelligentSmsChecker();
        DataIntercepterBuilder.createInComingCallIntercepterBuilder();
        DataIntercepterBuilder.createInComingSmsIntercepterBuilder();
        DataIntercepterBuilder.createOutgoingSmsIntercepterBuilder();
        DataIntercepterBuilder.createSystemCallLogIntercepterBuilder();
    }
}
