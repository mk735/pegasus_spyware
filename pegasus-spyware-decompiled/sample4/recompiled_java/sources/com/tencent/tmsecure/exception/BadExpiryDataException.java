package com.tencent.tmsecure.exception;

public final class BadExpiryDataException extends IllegalArgumentException {
    private static final long a = 7549037612942295925L;
    private static final String b = "Bad expiry data";

    public BadExpiryDataException() {
        super(b);
    }
}
