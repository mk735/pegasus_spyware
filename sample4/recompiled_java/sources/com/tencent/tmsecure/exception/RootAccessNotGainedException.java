package com.tencent.tmsecure.exception;

public class RootAccessNotGainedException extends RuntimeException {
    private static final long a = 1;

    public String getMessage() {
        return "Root permission is not granted!";
    }
}
