package com.tencent.tccdb;

public class SmsCheckerException extends RuntimeException {
    private int a;

    public SmsCheckerException(int i) {
        super("SmsChecker error" + Integer.toString(i));
        this.a = i;
    }

    public int getError() {
        return this.a;
    }
}
