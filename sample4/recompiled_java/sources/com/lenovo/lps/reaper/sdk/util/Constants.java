package com.lenovo.lps.reaper.sdk.util;

public interface Constants {
    public static final String CHANNEL_DEFAULT = "All";
    public static final int DATABASE_VERSION = 6;
    public static final String EVENT_FILE_NAME = "lenovo_reaper.db";
    public static final int EVENT_NUMER_PER_GETTING = 200;
    public static final String LEOS_APP_TOKEN = "MUNTOAINGVJ8";
    public static final int MAX_EVENT_NUMER_IN_DB = 1000;
    public static final int MAX_PERMISSION_NUMBER = 20;
    public static final String SDK_VERSION = "1.9.2";

    public enum DispatchMode {
        NORMAL_DISPATCH,
        FORCE_DISPATCH
    }

    public interface Event {
        public static final int APPINFO_EVENT_SYSTEM = 0;
        public static final int APPINFO_EVENT_USER = 1;
        public static final String EVENT_TYPE_APPINFO = "__APPINFO__";
        public static final String EVENT_TYPE_FEEDBACK = "__FEEDBACK__";
        public static final String EVENT_TYPE_INITIAL = "__INITIAL__";
        public static final String EVENT_TYPE_SDKTHROWABLE = "__SDKTHROWABLE__";
        public static final String EVENT_TYPE_THROWABLE = "__THROWABLE__";
        public static final String EVENT_TYPE_USER_ACTION = "__USERACTION__";
        public static final String EVENT_TYPE_USER_ACTION_NEW = "__NEWUA__";
        public static final String EVENT_TYPE_VIEW = "__PAGEVIEW__";
        public static final int FEEDBACK_TYPE_DEFAULT = 1;
        public static final int PAGEVIEW_CREATE = 1;
        public static final int PAGEVIEW_PAUSE = 3;
        public static final int PAGEVIEW_RESUME = 2;
        public static final String PAGE_QUEUE_PREFIX_IN_PARAM = "PAGE_QUEUE_NO";
        public static final String PARAM_FRAME_PAGE = "FRAME_PAGE";
        public static final int THROWABLE_EVENT_TYPE_AUTO = 0;
        public static final int THROWABLE_EVENT_TYPE_MANU = 1;
        public static final int USER_ACTION = 4;
        public static final String USER_ACTION_QUEUE_PREFIX_IN_PARAM = "USER_ACTION_QUEUE_NO";
    }

    public interface Http {
        public static final int CONNECTION_TIME_OUT = 6000;
        public static final String HTTP_HEADER_HOST = "Host";
        public static final String HTTP_HEADER_USER_AGENT = "User-Agent";
    }

    public interface Network {
        public static final int STATUS_2G = 4;
        public static final int STATUS_3G4G = 3;
        public static final int STATUS_NOTCONCERN = 0;
        public static final int STATUS_OFFLINE = 1;
        public static final int STATUS_WIFI = 2;
    }

    public interface ServerConfig {

        public interface CompressStrategy {
            public static final String CATEGORY_COMPRESS_2G = "Compress2G";
            public static final String CATEGORY_COMPRESS_3G4G = "Compress3G4G";
            public static final int STATUS_2G = 3;
            public static final int STATUS_3G4G = 5;
            public static final String VALUE_PRE_COMPRESS = "Threshold-";
        }

        public interface DispatchStrategy {
            public static final String CATEGORY_DISPATCH_2G = "Dispatch2G";
            public static final String CATEGORY_DISPATCH_3G4G = "Dispatch3G4G";
            public static final int STATUS_2G = 1;
            public static final int STATUS_3G4G = 1;
            public static final int STATUS_WIFI = 1;
            public static final String VALUE_PRE_DISPATCH = "Threshold-";
        }

        public interface SendFlag {
            public static final String CATEGORY_SENDFLAG = "SendFlag";
        }

        public interface UpdateStrategy {
            public static final String CATEGORY_UPDATE = "ConfigUpdateTimestamp";
            public static final long UPDATE_INTERVAL_HOUR_DEFAULT = 6;
            public static final String VALUE_PRE_UPDATE = "Hour-";
        }
    }

    public interface SharedPreference {
        public static final String COMMON = "reaper";
        public static final String COMMON_KEY_PRE = "REAPER";
        public static final String CONFIGUPDATE = "ConfigUpdate";
        public static final String PLUSUTIL = "PlusUtil";
        public static final String SERVER_URL = "ServerUrl";
        public static final String SERVER_URL_KEY = "Server";
    }
}
