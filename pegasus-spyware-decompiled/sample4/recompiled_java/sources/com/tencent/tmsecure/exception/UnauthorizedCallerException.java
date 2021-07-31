package com.tencent.tmsecure.exception;

public class UnauthorizedCallerException extends SecurityException {
    public static final String a = "The caller is not permitted";
    private static final long b = 1155925875005750863L;

    public UnauthorizedCallerException() {
        this(a);
    }

    public UnauthorizedCallerException(String str) {
        super(str);
    }

    public UnauthorizedCallerException(String str, Throwable th) {
        super(str, th);
    }
}
