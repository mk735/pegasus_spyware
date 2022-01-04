package com.tencent.tccdb;

public class TelNumberLocatorException extends RuntimeException {
    private int a;

    public TelNumberLocatorException(int i) {
        super("TelNumberLocator error" + Integer.toString(i));
        this.a = i;
    }

    public int getError() {
        return this.a;
    }
}
