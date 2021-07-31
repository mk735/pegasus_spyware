package com.tencent.tmsecure.exception;

public class NetWorkException extends Exception {
    private static final long a = 1;
    private int b;

    public NetWorkException(int i, String str) {
        super(str);
        this.b = i;
    }

    public NetWorkException(int i, String str, Throwable th) {
        super(str, th);
        this.b = i;
    }

    public NetWorkException(int i, Throwable th) {
        super(th.getMessage(), th);
        this.b = i;
    }

    public int getErrCode() {
        return this.b;
    }

    public String getErrMsg() {
        Throwable cause;
        String message = getMessage();
        if (message == null && (cause = getCause()) != null) {
            message = cause.getMessage();
        }
        return message != null ? message : "";
    }
}
