package com.tencent.tmsecure.exception;

public class NotInitializedException extends Exception {
    private static final long a = 1;

    public String getMessage() {
        return "没有完成初始化配置";
    }
}
