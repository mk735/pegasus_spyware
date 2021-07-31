package com.tencent.tmsecure.common;

public class ErrorCode {
    public static final byte ERRORTYPE_CANCEL = 2;
    public static final byte ERRORTYPE_NETWORK = 0;
    public static final byte ERRORTYPE_OTHER = 3;
    public static final byte ERRORTYPE_WUP = 1;
    public static final int ERR_ARGUMENT = -6;
    public static final int ERR_CANCEL = -3;
    public static final int ERR_FILE_OP = -7000;
    public static final int ERR_GENERAL = -2;
    public static final int ERR_GET = -3000;
    public static final int ERR_ILLEGAL_ACCESS = -60;
    public static final int ERR_ILLEGAL_ARG = -57;
    public static final int ERR_ILLEGAL_STATE = -61;
    public static final int ERR_IO_EXCEPTION = -56;
    public static final int ERR_LICENSE_EXPIRED = -99999;
    public static final int ERR_NONE = 0;
    public static final int ERR_NOT_FOUND = -1;
    public static final int ERR_NOT_SUPPORTED = -5;
    public static final int ERR_NO_CONNECTION = -52;
    public static final int ERR_NO_MEMORY = -4;
    public static final int ERR_OPEN_CONNECTION = -1000;
    public static final int ERR_POST = -2000;
    public static final int ERR_PROTOCOL = -51;
    public static final int ERR_RECEIVE = -5000;
    public static final int ERR_RESPONSE = -4000;
    public static final int ERR_SECURITY = -58;
    public static final int ERR_SOCKET = -54;
    public static final int ERR_SOCKET_TIMEOUT = -55;
    public static final int ERR_TC_CONFIG_MISSED = -104;
    public static final int ERR_TC_OPERATOR_SMS = -103;
    public static final int ERR_TC_RULE_MISSED = -101;
    public static final int ERR_TC_RULE_UPDATED_FIALED = -102;
    public static final int ERR_UNKNOWN_HOST = -62;
    public static final int ERR_UNSUPPORTED_OP = -59;
    public static final int ERR_URL_MALFORMED = -53;
    public static final int ERR_WIFI_NEED_APPROVE = -1063;
    public static final int ERR_WUP = -6000;
    private static final int a = -63;

    public static byte judgeErrorCode(int i) {
        if ((-((-i) % 100)) == -3) {
            return 2;
        }
        switch (-(((-i) / 1000) * 1000)) {
            case ERR_RECEIVE /*{ENCODED_INT: -5000}*/:
            case ERR_RESPONSE /*{ENCODED_INT: -4000}*/:
            case ERR_GET /*{ENCODED_INT: -3000}*/:
            case ERR_OPEN_CONNECTION /*{ENCODED_INT: -1000}*/:
                return 0;
            default:
                return 3;
        }
    }
}
