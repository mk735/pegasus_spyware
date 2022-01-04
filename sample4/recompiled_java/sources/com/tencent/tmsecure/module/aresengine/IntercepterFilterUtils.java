package com.tencent.tmsecure.module.aresengine;

import com.tencent.tmsecure.common.ManagerCreator;

public final class IntercepterFilterUtils {
    public static final int INTERCEPTER_MODE_ACCEPTED_ONLY_WHITELIST = 2;
    public static final int INTERCEPTER_MODE_REJECTED_ONLY_BLACKLIST = 1;
    public static final int INTERCEPTER_MODE_STANDARD = 0;

    private IntercepterFilterUtils() {
    }

    private static void a() {
        AresEngineManager aresEngineManager = (AresEngineManager) ManagerCreator.getManager(AresEngineManager.class);
        DataFilter<? extends TelephonyEntity> dataFilter = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_INCOMING_SMS).dataFilter();
        FilterConfig config = dataFilter.getConfig();
        FilterConfig defalutFilterConfig = dataFilter.defalutFilterConfig();
        if (config != null) {
            defalutFilterConfig.set(1, config.get(1));
        }
        dataFilter.setConfig(defalutFilterConfig);
        DataFilter<? extends TelephonyEntity> dataFilter2 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_OUTGOING_SMS).dataFilter();
        FilterConfig config2 = dataFilter2.getConfig();
        FilterConfig defalutFilterConfig2 = dataFilter2.defalutFilterConfig();
        if (config2 != null) {
            defalutFilterConfig2.set(1, config2.get(1));
        }
        dataFilter2.setConfig(defalutFilterConfig2);
        DataFilter<? extends TelephonyEntity> dataFilter3 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_INCOMING_CALL).dataFilter();
        FilterConfig config3 = dataFilter3.getConfig();
        FilterConfig defalutFilterConfig3 = dataFilter3.defalutFilterConfig();
        if (config3 != null) {
            defalutFilterConfig3.set(1, config3.get(1));
        }
        dataFilter3.setConfig(defalutFilterConfig3);
        DataFilter<? extends TelephonyEntity> dataFilter4 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_SYSTEM_CALL).dataFilter();
        FilterConfig config4 = dataFilter4.getConfig();
        FilterConfig defalutFilterConfig4 = dataFilter4.defalutFilterConfig();
        if (config4 != null) {
            defalutFilterConfig4.set(1, config4.get(1));
        }
        dataFilter4.setConfig(defalutFilterConfig4);
    }

    private static void b() {
        AresEngineManager aresEngineManager = (AresEngineManager) ManagerCreator.getManager(AresEngineManager.class);
        DataFilter<? extends TelephonyEntity> dataFilter = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_INCOMING_SMS).dataFilter();
        FilterConfig config = dataFilter.getConfig();
        FilterConfig defalutFilterConfig = dataFilter.defalutFilterConfig();
        if (config != null) {
            defalutFilterConfig.set(1, config.get(1));
        }
        defalutFilterConfig.set(2, 3);
        defalutFilterConfig.set(4, 1);
        defalutFilterConfig.set(8, 3);
        defalutFilterConfig.set(16, 3);
        defalutFilterConfig.set(32, 2);
        defalutFilterConfig.set(64, 3);
        defalutFilterConfig.set(128, 3);
        dataFilter.setConfig(defalutFilterConfig);
        DataFilter<? extends TelephonyEntity> dataFilter2 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_OUTGOING_SMS).dataFilter();
        FilterConfig config2 = dataFilter2.getConfig();
        FilterConfig defalutFilterConfig2 = dataFilter2.defalutFilterConfig();
        if (config2 != null) {
            defalutFilterConfig2.set(1, config2.get(1));
        }
        dataFilter2.setConfig(defalutFilterConfig2);
        DataFilter<? extends TelephonyEntity> dataFilter3 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_INCOMING_CALL).dataFilter();
        FilterConfig config3 = dataFilter3.getConfig();
        FilterConfig defalutFilterConfig3 = dataFilter3.defalutFilterConfig();
        if (config3 != null) {
            defalutFilterConfig3.set(1, config3.get(1));
        }
        defalutFilterConfig3.set(2, 3);
        defalutFilterConfig3.set(4, 1);
        defalutFilterConfig3.set(8, 3);
        defalutFilterConfig3.set(16, 3);
        defalutFilterConfig3.set(32, 3);
        dataFilter3.setConfig(defalutFilterConfig3);
        DataFilter<? extends TelephonyEntity> dataFilter4 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_SYSTEM_CALL).dataFilter();
        FilterConfig config4 = dataFilter4.getConfig();
        FilterConfig defalutFilterConfig4 = dataFilter4.defalutFilterConfig();
        if (config4 != null) {
            defalutFilterConfig4.set(1, config4.get(1));
        }
        defalutFilterConfig4.set(2, 3);
        defalutFilterConfig4.set(4, 1);
        defalutFilterConfig4.set(8, 3);
        defalutFilterConfig4.set(16, 3);
        defalutFilterConfig4.set(32, 0);
        defalutFilterConfig4.set(64, 3);
        defalutFilterConfig4.set(128, 3);
        defalutFilterConfig4.set(256, 2);
        dataFilter4.setConfig(defalutFilterConfig4);
    }

    private static void c() {
        AresEngineManager aresEngineManager = (AresEngineManager) ManagerCreator.getManager(AresEngineManager.class);
        DataFilter<? extends TelephonyEntity> dataFilter = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_INCOMING_SMS).dataFilter();
        FilterConfig config = dataFilter.getConfig();
        FilterConfig defalutFilterConfig = dataFilter.defalutFilterConfig();
        if (config != null) {
            defalutFilterConfig.set(1, config.get(1));
        }
        defalutFilterConfig.set(2, 0);
        defalutFilterConfig.set(4, 3);
        defalutFilterConfig.set(8, 3);
        defalutFilterConfig.set(16, 3);
        defalutFilterConfig.set(32, 3);
        defalutFilterConfig.set(64, 3);
        defalutFilterConfig.set(128, 1);
        dataFilter.setConfig(defalutFilterConfig);
        DataFilter<? extends TelephonyEntity> dataFilter2 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_OUTGOING_SMS).dataFilter();
        FilterConfig config2 = dataFilter2.getConfig();
        FilterConfig defalutFilterConfig2 = dataFilter2.defalutFilterConfig();
        if (config2 != null) {
            defalutFilterConfig2.set(1, config2.get(1));
        }
        dataFilter2.setConfig(defalutFilterConfig2);
        DataFilter<? extends TelephonyEntity> dataFilter3 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_INCOMING_CALL).dataFilter();
        FilterConfig config3 = dataFilter3.getConfig();
        FilterConfig defalutFilterConfig3 = dataFilter3.defalutFilterConfig();
        if (config3 != null) {
            defalutFilterConfig3.set(1, config3.get(1));
        }
        defalutFilterConfig3.set(2, 0);
        defalutFilterConfig3.set(4, 3);
        defalutFilterConfig3.set(8, 3);
        defalutFilterConfig3.set(16, 3);
        defalutFilterConfig3.set(32, 1);
        dataFilter3.setConfig(defalutFilterConfig3);
        DataFilter<? extends TelephonyEntity> dataFilter4 = aresEngineManager.findIntercepter(DataIntercepterBuilder.TYPE_SYSTEM_CALL).dataFilter();
        FilterConfig config4 = dataFilter4.getConfig();
        FilterConfig defalutFilterConfig4 = dataFilter4.defalutFilterConfig();
        if (config4 != null) {
            defalutFilterConfig4.set(1, config4.get(1));
        }
        defalutFilterConfig4.set(2, 0);
        defalutFilterConfig4.set(4, 3);
        defalutFilterConfig4.set(8, 3);
        defalutFilterConfig4.set(16, 3);
        defalutFilterConfig4.set(32, 1);
        defalutFilterConfig4.set(64, 3);
        defalutFilterConfig4.set(128, 3);
        defalutFilterConfig4.set(256, 2);
        dataFilter4.setConfig(defalutFilterConfig4);
    }

    public static void setIntercepterMode(int i) {
        switch (i) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                c();
                return;
            default:
                return;
        }
    }
}
