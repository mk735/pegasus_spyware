package com.tencent.tmsecure.module.update;

import QQPIM.SoftListType;

public final class UpdateConfig {
    public static final String BLACKLIST_ROM_NAME = (SoftListType.BLACKLIST_ROM.toString().toLowerCase() + ".dat");
    public static final String BLACKLIST_WITHPLUGIN_NAME = (SoftListType.BLACKLIST_WITHPLUGIN.toString().toLowerCase() + ".dat");
    public static final String[] FILE_NAMES = {LOCATION_NAME, SMS_CHECKER_NAME, VIRUS_BASE_NAME, TRUST_URLS_NAME, TRAFFIC_MONITOR_CONFIG_NAME, ROM_THIRDPART_NAME, BLACKLIST_ROM_NAME, WHITELIST_ROM_NAME, WHITELIST_COMMON_NAME, WHITELIST_UNUSUAL_NAME, BLACKLIST_WITHPLUGIN_NAME};
    public static final String LOCATION_NAME = "nldb.sdb";
    public static final String PATCH_SUFIX = ".patch";
    public static final String ROM_THIRDPART_NAME = (SoftListType.BLACKLIST_ROM_THIRDPART.toString().toLowerCase() + ".dat");
    public static final String SMS_CHECKER_NAME = "rule_store.sys";
    public static final String TRAFFIC_MONITOR_CONFIG_NAME = "net_interface_type_traffic_stat.dat";
    public static final String TRUST_URLS_NAME = "trusturls.dat";
    public static final int[] UPDATE_FLAGS = {2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048};
    public static final int UPDATE_FLAG_ALL = 2097152;
    public static final int UPDATE_FLAG_APP_LIST = 4194304;
    public static final int UPDATE_FLAG_BLACKLIST_ROM = 128;
    public static final int UPDATE_FLAG_BLACKLIST_WITHPLUGIN = 2048;
    public static final int UPDATE_FLAG_LOCATION = 2;
    public static final int UPDATE_FLAG_ROM_THIRDPART = 64;
    public static final int UPDATE_FLAG_SMS_CHECKER = 4;
    public static final int UPDATE_FLAG_TRAFFIC_MONITOR_CONFIG = 32;
    public static final int UPDATE_FLAG_TRUST_URLS = 16;
    public static final int UPDATE_FLAG_VIRUS_BASE = 8;
    public static final int UPDATE_FLAG_WHITELIST_COMMON = 512;
    public static final int UPDATE_FLAG_WHITELIST_ROM = 256;
    public static final int UPDATE_FLAG_WHITELIST_UNUSUAL = 1024;
    public static final int UPDATE_TYPE_ENGINE_UPDATE = 1;
    public static final int UPDATE_TYPE_NORMAL_UPDATE = 0;
    public static final String VIRUS_BASE_NAME = "qv_base.amf";
    public static final String WHITELIST_COMMON_NAME = (SoftListType.WHITELIST_COMMON.toString().toLowerCase() + ".dat");
    public static final String WHITELIST_ROM_NAME = (SoftListType.WHITELIST_ROM.toString().toLowerCase() + ".dat");
    public static final String WHITELIST_UNUSUAL_NAME = (SoftListType.WHITELIST_UNUSUAL.toString().toLowerCase() + ".dat");

    private UpdateConfig() {
    }

    public static String getFileNameByFlag(int i) {
        for (int i2 = 0; i2 < UPDATE_FLAGS.length; i2++) {
            if (i == UPDATE_FLAGS[i2]) {
                return FILE_NAMES[i2];
            }
        }
        return null;
    }

    public static int getFlagByFileName(String str) {
        for (int i = 0; i < FILE_NAMES.length; i++) {
            if (str.equals(FILE_NAMES[i])) {
                return UPDATE_FLAGS[i];
            }
        }
        return -1;
    }

    public static int prepareCheckFlag(int i) {
        if ((2097152 & i) == 0) {
            return (4194304 & i) != 0 ? i | 64 | 128 | 256 | 512 | 1024 | 2048 : i;
        }
        int i2 = 0;
        for (int i3 : UPDATE_FLAGS) {
            i2 |= i3;
        }
        return i2;
    }
}
